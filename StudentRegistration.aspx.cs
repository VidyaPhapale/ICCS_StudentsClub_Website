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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try {
                string experties = "";
                foreach (int i in ListBox1.GetSelectedIndices())
                {
                    experties = experties + ListBox1.Items[i] + ",";
                }
                experties = experties.Remove(experties.Length - 1);

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into Student(fname,mname,lname,birthdate,course,experties,addmissionyear,passoutyear,emailid,pass,mobnum,postaladdress,account_status) values(@sfname,@mname,@lname,@birthdate,@course,@addmissionyear,@passoutyear,@emailid,@pass,@mobnum,@postaladdress,@account_status)", con);
                cmd.Parameters.AddWithValue("@sfname", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@mname", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@lname", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@birthdate", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@course", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@addmissionyear", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@passoutyear", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@emailid", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@pass", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@mobnum", TextBox6.Text.Trim());
                 cmd.Parameters.AddWithValue("@experties", experties);
                cmd.Parameters.AddWithValue("@postaladdress", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");
                
                
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Registration successfull...');</script>");
                //clearForm();
                
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + " ');</script>");
            }
        }

        
    }
}