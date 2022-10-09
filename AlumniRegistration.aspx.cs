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

        string strcon1 = ConfigurationManager.ConnectionStrings["con1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            try
             {
                string experties = "";
                foreach (int i in ListBox1.GetSelectedIndices())
                {
                    experties = experties + ListBox1.Items[i] + ",";
                }
                experties = experties.Remove(experties.Length - 1);

                SqlConnection con = new SqlConnection(strcon);

                SqlConnection con1 = new SqlConnection(strcon1);
                if (con.State == System.Data.ConnectionState.Closed)
                 {
                     con.Open();
                 }
                 SqlCommand cmd = new SqlCommand("insert into Alumni(fname,mname,lname,emailid,pass,birthdate,qualification,experties,addmissionyear,passoutyear,mobnum,postaladdress,company,jobrole,account_status)" +
                     " values(@fname,@mname,@lname,@emailid,@pass,@birthdate,@qualification,@experties,@addmissionyear,@passoutyear,@mobnum,@postaladdress,@company,@jobrole,@account_status)", con);

                 cmd.Parameters.AddWithValue("@fname", TextBox4.Text.Trim());
                 cmd.Parameters.AddWithValue("@mname", TextBox3.Text.Trim());
                 cmd.Parameters.AddWithValue("@lname", TextBox1.Text.Trim());
                 cmd.Parameters.AddWithValue("@emailid", TextBox2.Text.Trim());
                 cmd.Parameters.AddWithValue("@pass", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@birthdate", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@qualification", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@experties", experties);
                cmd.Parameters.AddWithValue("@addmissionyear", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@passoutyear", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@mobnum", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@postaladdress", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@company", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@jobrole", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");

               

                cmd.ExecuteNonQuery();
                 con.Close();

                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();

                    SqlCommand cmd2 = new SqlCommand("Select * from Alumni where emailid='" + TextBox2.Text.Trim() + "'", con);


                    SqlDataReader dr = cmd2.ExecuteReader();

                    if (dr.HasRows)

                        while (dr.Read())
                        {
                            Session["aluid"] = dr.GetValue(0).ToString();
                            Session["fname"] = dr.GetValue(1).ToString();
                            Session["lname"] = dr.GetValue(3).ToString();
                        }
                }
                
                
                string id = Session["aluid"].ToString();
                string fname = Session["fname"].ToString();
                string lname = Session["lname"].ToString();
                string name = fname + " " + lname;



                con.Close();

                if (con1.State == System.Data.ConnectionState.Closed)
                {
                    con1.Open();
                }
                SqlCommand cmd1 = new SqlCommand("insert into LoginDetails(uemail,upass,utype,aid,uname) values(@uemail,@upass,@utype,@aid,@uname)", con1);
                cmd1.Parameters.AddWithValue("@uemail", TextBox2.Text.Trim());
                cmd1.Parameters.AddWithValue("@upass", TextBox5.Text.Trim());
                cmd1.Parameters.AddWithValue("@aid", id);
                cmd1.Parameters.AddWithValue("@uname", name);

                cmd1.Parameters.AddWithValue("@utype", "Alumni");

                cmd1.ExecuteNonQuery();
                con1.Close();


                Response.Write("<script>alert('Registration successfull');</script>");
                ClearForm();



             }
             catch(Exception ex)
             {
                 Response.Write("<script>alert('" + ex.Message + " ');</script>");
             }


            void ClearForm()
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";
                TextBox11.Text = "";
                TextBox12.Text = "";
            }

        }
    }
}