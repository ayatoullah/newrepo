using System;

using System.Collections;

using System.Configuration;

using System.Data;

using System.Linq;

using System.Web;

using System.Web.Security;

using System.Web.UI;

using System.Web.UI.HtmlControls;

using System.Web.UI.WebControls;

using System.Web.UI.WebControls.WebParts;

using System.Xml.Linq;

using System.Data.SqlClient;



namespace myproj
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["local"] != null)
                 
            {
                DataTable dt = new DataTable();
                dt = user.userselbyid((int)Session["id"]);
                lbl_fname.Text=dt.Rows[0]["fName"].ToString();
                lbl_fname.Text = dt.Rows[0]["lName"].ToString();
                lbl_email.Text = dt.Rows[0]["email"].ToString();
                lbl_username.Text = dt.Rows[0]["userName"].ToString();
                lbl_img.Text = dt.Rows[0]["image"].ToString();
                lbl_address.Text = dt.Rows[0]["address"].ToString();
                lbl_phone.Text = dt.Rows[0]["phone"].ToString();
                


            }
            else
            {
                Response.Redirect("~/login.aspx/");
            }
        }
    }
}
//if (Request.Cookies["local"] != null)
//            {
//                Session["email"] = Request.Cookies["local"].Values["email"];
//                Session["password"] = Request.Cookies["local"].Values["password"];
//                Response.Redirect("~/profile.aspx");
//            }*/