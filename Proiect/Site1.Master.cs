using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proiect
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null || Session["role"].Equals(""))
                
                    {
                    LinkButton1.Visible = true; // user     
                    LinkButton2.Visible = true; // sign 

                    LinkButton3.Visible = false; // logout 
                    LinkButton7.Visible = false; // hello 


                    LinkButton6.Visible = true; // admin login 
                    LinkButton8.Visible = false; // inventory 


                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // user 
                    LinkButton2.Visible = false; // 

                    LinkButton3.Visible = true; // logout 
                    LinkButton7.Visible = true; // hello user 
                    LinkButton7.Text = "Salut " + Session["username"].ToString();


                    LinkButton6.Visible = true; // admin 
                    LinkButton8.Visible = false; // inven
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // user
                    LinkButton2.Visible = false; // sign 

                    LinkButton3.Visible = true; 
                    LinkButton7.Visible = true;  
                    LinkButton7.Text = "Salut Admin";


                    LinkButton6.Visible = false; // admin 
                    LinkButton8.Visible = true; //  invent
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("inventar.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("userinventar.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; // user login 
            LinkButton2.Visible = true; // sign up 

            LinkButton3.Visible = false; // logout 
            LinkButton7.Visible = false; // hello user


            LinkButton6.Visible = true; // admin 
            LinkButton8.Visible = false; // inventory
        }
    }
}