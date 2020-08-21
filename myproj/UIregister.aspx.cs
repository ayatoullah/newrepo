using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace myproj
{
    public partial class UIregister : System.Web.UI.Page
    {
       
            protected void Page_Load(object sender, EventArgs e)
            {
                UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                if (!IsPostBack)
                {

                }
            }

            protected void TextBox6_TextChanged(object sender, EventArgs e)
            {

            }

            protected void btn_register_Click(object sender, EventArgs e)
            {
                try
                {
                    string fname = txt_fname.Text;
                    string lname = txt_lname.Text;
                    string username = txt_uname.Text;
                    string email = txt_mail.Text;
                    string image = "~/userprofile/" + fu_image.FileName;
                    string address = txt_add.Text;
                    string password = txt_pass.Text;
                    string status = "waiting";
                    bool isAdmin = false;
                    string phone = txt_phone.Text;
                    //int res;
                    int rowseffect = AccessLayer.user.insert(fname, lname, email, username, image, address, password, isAdmin, status, phone);
                    fu_image.SaveAs(Server.MapPath(image));
                    if (rowseffect > 0)
                    {
                        lbl_status.Text = "wait for acceptance from admin";
                        txt_fname.Text = txt_lname.Text = txt_lname.Text = txt_uname.Text = txt_mail.Text = txt_add.Text = txt_pass.Text = txt_phone.Text = "";
                    }
                    else
                    {
                        lbl_status.Text = "please enter your information again";
                    }


                }

                finally 
                {
                    

                }
            }
        }

    }
   
