using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
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
                    LinkButton13.Visible = false;
                    LinkButton14.Visible = false;
                    LinkButton15.Visible = false;
                }
                else if (Session["role"].Equals("student"))
                {
                    LinkButton8.Visible = false;
                    LinkButton10.Visible = true;
                    LinkButton9.Visible = false;
                    LinkButton12.Visible = false;
                    LinkButton11.Visible = true;
                    LinkButton13.Visible = false;
                    LinkButton14.Visible = false;
                    LinkButton15.Visible = true;
                }
                else if (Session["role"].Equals("alumni"))
                {
                    LinkButton8.Visible = false;
                    LinkButton10.Visible = true;
                    LinkButton9.Visible = false;
                    LinkButton12.Visible = false;
                    LinkButton11.Visible = true;
                    LinkButton13.Visible = false;
                    LinkButton14.Visible = false;
                    LinkButton15.Visible = true;
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton8.Visible = false;
                    LinkButton10.Visible = true;
                    LinkButton12.Visible = true;
                    LinkButton9.Visible = false;
                    LinkButton15.Visible = false;
                    LinkButton11.Visible = false;
                    LinkButton13.Visible = true;
                    LinkButton14.Visible = true;
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + " ');</script>");
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
            Response.Redirect("EventDetails.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("QueAnsSection.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            if (Session["utype"] == null)
            {
                Response.Redirect("ViewJobUpdate.aspx");

            }
            string user = Session["utype"].ToString();
            if (user == "Student")
            {
                Response.Redirect("ViewJobUpdate.aspx");
            }
            else
            {
                Response.Redirect("AddJobUpdate.aspx");
            }
        }

       

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
            LinkButton15.Visible = false;
            LinkButton10.Visible = false;
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
            LinkButton13.Visible = false;
            LinkButton14.Visible = false;
            LinkButton15.Visible = false;

           // Response.Redirect("HomePage.aspx");
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentDetails.aspx");
        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("AlumniDetails.aspx");
        }

        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            string user = Session["utype"].ToString();
            if (user == "Student")
            {
                Response.Redirect("UserProfile.aspx");
            }
            else
            {
                Response.Redirect("AlumniProfile.aspx");
            }
           // Response.Redirect("UserProfile.aspx");
            LinkButton9.Visible = true;
            LinkButton8.Visible = true;
            LinkButton10.Visible = false;
            LinkButton11.Visible = true;
            LinkButton12.Visible = false;
            LinkButton13.Visible = false;
            LinkButton14.Visible = false;
            LinkButton15.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
          {

            try
            {
                String name = TextBox1.Text.Trim();
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from LoginDetails where uname='" + TextBox1.Text.Trim() + " '", con);
                SqlDataReader dr = cmd.ExecuteReader();
                
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Session["utype"] = dr.GetValue(3).ToString();
                        Session["sid"] = dr.GetValue(4).ToString();
                        Session["aid"] = dr.GetValue(5).ToString();
                       
                    }

                    String user = Session["utype"].ToString();
                    String sid = Session["sid"].ToString();
                    String aid = Session["aid"].ToString();


                    Response.Redirect("SearchPeople.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Not Found');</script>");
                }

                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + " ');</script>");
            }

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("InterviewExperience.aspx");
        }
    }
}