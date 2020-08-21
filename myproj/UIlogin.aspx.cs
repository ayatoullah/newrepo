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
    public partial class UIlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["local"] != null)
            {
                Session["id"] = Request.Cookies["local"].Values["id"];
                Session["email"] = Request.Cookies["local"].Values["email"];
                Session["password"] = Request.Cookies["local"].Values["password"];

                Response.Redirect("~/UIuserprofile.aspx");
            }
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {

            //Session.Add("mail", txt_mail.Text);
            //Session.Add("password", txt_pass.Text);
            DataTable dtt = new DataTable();
            //dtt = user.selectlog(Session["mail"].ToString(), Session["password"].ToString());
            dtt = AccessLayer.user.selectlog(txt_mail.Text, txt_pass.Text);
            if (dtt.Rows.Count != 0)
            {
                Session.Add("mail", dtt.Rows[0]["email"].ToString());
                Session.Add("password", dtt.Rows[0]["password"].ToString());
                Session.Add("id", dtt.Rows[0]["id"].ToString());
                Session.Add("isadmin", dtt.Rows[0]["isAdmin"].ToString());
                if (ck_remember.Checked == true)
                {
                    HttpCookie co = new HttpCookie("local");
                    co.Values.Add("mail", dtt.Rows[0]["email"].ToString());
                    co.Values.Add("password", dtt.Rows[0]["password"].ToString());
                    co.Values.Add("id", dtt.Rows[0]["id"].ToString());
                    co.Values.Add("isAdmin", dtt.Rows[0]["isAdmin"].ToString());
                    co.Expires = DateTime.Now.AddDays(20);
                    Response.Cookies.Add(co);
                }
                bool isadmin = Convert.ToBoolean(dtt.Rows[0]["isAdmin"]);
                if (isadmin == false)
                {
                    Response.Redirect("~/UIuserprofile.aspx");

                }

                else if (isadmin == true)
                {
                    Response.Redirect("~/adminprofile.aspx");
                }
                else
                {
                    Response.Redirect("~/home.aspx");
                }
            }
        }


        protected void lbl_forgetpass_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/forgetpassword.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UIregister.aspx");
        }

        protected void ck_remember_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}