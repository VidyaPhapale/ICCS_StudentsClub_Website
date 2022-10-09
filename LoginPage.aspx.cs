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
    public partial class LoginPage : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        String strcon1 = ConfigurationManager.ConnectionStrings["con1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string value = "";

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                SqlConnection con1 = new SqlConnection(strcon1);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                if (con1.State == System.Data.ConnectionState.Closed)
                {
                    con1.Open();
                }

                SqlCommand cmd1 = new SqlCommand("Select * from LoginDetails where uemail='" + TextBox1.Text.Trim() + "' and upass='" + TextBox2.Text.Trim() + "'", con1);

                //SqlCommand cmd = new SqlCommand("Select * from Student where emailid='" + TextBox1.Text.Trim() + "' and pass='" + TextBox2.Text.Trim() + "'", con);

                SqlDataReader dr = cmd1.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Successful');</script>");
                        Session["utype"] = dr.GetValue(3).ToString();
                        Session["aid"] = dr.GetValue(5).ToString();
                        Session["sid"] = dr.GetValue(4).ToString();
                        Session["uemail"] = dr.GetValue(1).ToString();

                    }

                    Response.Redirect("HomePage.aspx",false);

                   // Thread.ResetAbort();
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

                string user = Session["utype"].ToString();
                string id = Session["aid"].ToString();
                if (user == "Student")
                {
                    SqlCommand cmd = new SqlCommand("Select * from Student where emailid='" + TextBox1.Text.Trim() + "' and pass='" + TextBox2.Text.Trim() + "'", con);
                    SqlDataReader dr1 = cmd.ExecuteReader();
                    if (dr1.HasRows)
                    {
                        while (dr1.Read())
                        {
                            Session["fname"] = dr1.GetValue(1).ToString();
                            Session["lname"] = dr1.GetValue(3).ToString();
                            Session["emailid"] = dr1.GetValue(7).ToString();
                            Session["role"] = "student";
                            Session["status"] = dr1.GetValue(13).ToString();
                            Session["studid"] = dr1.GetValue(0).ToString();

                        }
                    }
                    
                }
                if (user == "Alumni")
                {
                    SqlCommand cmd = new SqlCommand("Select * from Alumni where emailid='" + TextBox1.Text.Trim() + "' and pass='" + TextBox2.Text.Trim() + "'", con);
                    SqlDataReader dr1 = cmd.ExecuteReader();
                    if (dr1.HasRows)
                    {
                        while (dr1.Read())
                        {
                            Session["fname"] = dr1.GetValue(1).ToString();
                            Session["lname"] = dr1.GetValue(3).ToString();
                            Session["emailid"] = dr1.GetValue(7).ToString();
                            Session["role"] = "alumni";
                            Session["status"] = dr1.GetValue(15).ToString();
                            Session["aluid"] = dr1.GetValue(0).ToString();

                        }
                    }
                    string user1 = Session["fname"].ToString();
                    string user2 = Session["role"].ToString();
                    string user3 = Session["aluid"].ToString();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + " ');</script>");
            }

        }
    }  
}