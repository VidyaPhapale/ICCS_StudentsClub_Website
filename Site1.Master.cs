using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"]==null)
                {
                    LinkButton9.Visible = true;
                    LinkButton8.Visible = true;
                    LinkButton10.Visible = false;
                    LinkButton11.Visible = true;
                    LinkButton12.Visible = false;
                }
                else if (Session["role"].Equals("student"))
                {
                    LinkButton8.Visible = false;
                    LinkButton10.Visible = true;
                    LinkButton9.Visible = false;
                    LinkButton12.Visible = false;
                    LinkButton11.Visible = true;
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton8.Visible = false;
                    LinkButton10.Visible = true;
                    LinkButton12.Visible = true;
                    LinkButton9.Visible = false;
                    LinkButton11.Visible = false;
                }
            }
            catch(Exception ex)
            {

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("QueAns.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddEvent.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Session["fname"] = "";
            Session["emailid"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton9.Visible = true;
            LinkButton8.Visible = true;
            LinkButton10.Visible = false;
            LinkButton11.Visible = true;
            LinkButton12.Visible = false;
        }
    }
}