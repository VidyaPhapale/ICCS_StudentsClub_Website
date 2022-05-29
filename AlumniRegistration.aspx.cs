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
    public partial class WebForm4 : System.Web.UI.Page
    {
      string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Registration successfull');</script>");
            try
             {
                 SqlConnection con = new SqlConnection(strcon);
                 if (con.State == System.Data.ConnectionState.Closed)
                 {
                     con.Open();
                 }
                 SqlCommand cmd = new SqlCommand("insert into Alumni(fname,mname,lname,emailid,pass,account_status) values(@fname,@mname,@lname,@emailid,@pass,@account_status)", con);

                 cmd.Parameters.AddWithValue("@fname", TextBox4.Text.Trim());
                 cmd.Parameters.AddWithValue("@mname", TextBox3.Text.Trim());
                 cmd.Parameters.AddWithValue("@lname", TextBox1.Text.Trim());
                 cmd.Parameters.AddWithValue("@emailid", TextBox2.Text.Trim());
                 cmd.Parameters.AddWithValue("@pass", TextBox5.Text.Trim());
                 cmd.Parameters.AddWithValue("@account_status", "pending");

                 cmd.ExecuteNonQuery();
                 con.Close();
                 Response.Write("<script>alert('Registration successfull');</script>");




             }
             catch(Exception ex)
             {
                 Response.Write("<script>alert('" + ex.Message + " ');</script>");
             } 
            Response.Write("<script>alert('Registration successfull');</script>");

        }
    }
}