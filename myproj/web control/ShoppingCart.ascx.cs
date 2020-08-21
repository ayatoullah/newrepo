using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace myproj.web_control
{
    public partial class ShoppingCart : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RefreshData();
            }
        }
        private void RefreshData()
        {
            grdCart.DataSource = (DataTable)Session["cart"];
            grdCart.DataBind();
            int x = 0;
            int total = 0;
            for (x = 0; x < grdCart.Rows.Count; x++)
                total += Convert.ToInt32(grdCart.Rows[x].Cells[5].Text);
            lbl_total.Text = "Total cost of order = " + total.ToString() + "LE of" + x.ToString() + "products";

        }

       

        protected void grdCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable tbl;
            if(Session["cart"]!=null)
            {
                tbl = (DataTable)Session["cart"];
                string[] PK = { grdCart.Rows[e.RowIndex].Cells[0].Text,
                grdCart.Rows[e.RowIndex].Cells[1].Text, grdCart.Rows[e.RowIndex].Cells[2].Text };
                DataRow row=tbl.Rows.Find(PK);
                if (row != null)
                    row.Delete();
                Session["cart"] = tbl;
                RefreshData(); 

            }
        }

        protected void grdCart_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdCart.EditIndex = e.NewEditIndex;
            RefreshData();
            DataBind();
        }

       

        protected void grdCart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdCart.EditIndex = -1;
            RefreshData();
            DataBind();
        }

        protected void grdCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox txtqty = (TextBox)grdCart.Rows[e.RowIndex].Cells[4].Controls[0];
            //TextBox tbox=grdCart.Rows[e.RowIndex].Cells[4].FindControl("textbox");
            if (Session["cart"] != null)
            {
                DataTable tbl = (DataTable)Session["cart"];
                string[] PK = {grdCart.Rows[e.RowIndex].Cells[0].Text,
                    grdCart.Rows[e.RowIndex].Cells[1].Text };
                DataRow row = tbl.Rows.Find(PK);
                row[4] = txtqty.Text;
                row[5] = Convert.ToInt32(txtqty.Text) * Convert.ToDouble( row[3]);//row3:price
                Session["cart"] = tbl;
                RefreshData(); ;//to calculate again total price
                grdCart.EditIndex = -1;
                DataBind();
            }
        }

        protected void btn_confirm_Click(object sender, EventArgs e)
        {
            Response.Redirect("UIlogin.aspx");
        }
    }
}