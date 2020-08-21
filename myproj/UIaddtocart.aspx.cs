using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace myproj
{
    public partial class UIaddtocart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_addtocart_Click(object sender, EventArgs e)
        {
            DataTable tbl;
            if (Session["cart"] == null)
            {
                tbl = new DataTable();
                tbl.Columns.Add("CatNo");
                tbl.Columns.Add("ProID");
                tbl.Columns.Add("ProName");
                tbl.Columns.Add("Price");
                tbl.Columns.Add("Quantity");
                tbl.Columns.Add("SubTotal");
            }
            else {
                tbl = (DataTable)Session["cart"];
                DataRow row = tbl.NewRow();
                row[0] = lblCat.Text;
                row[1] = lblProID.Text;

                row[2] = lblProName.Text;
                row[3] = lblPrice.Text;
                row[4] = txtQty.Text;

                row[5] = Convert.ToInt16(txtQty.Text) * Convert.ToInt16(lblPrice.Text);
                DataColumn[] col = { tbl.Columns[0], tbl.Columns[1] };
                tbl.Constraints.Add("Cart_PK",col,true);//true means primary key
                tbl.Rows.Add(row);

                Session["cart"] = tbl;
                Response.Redirect("Cart.aspx");
                    }







        }
    }
}