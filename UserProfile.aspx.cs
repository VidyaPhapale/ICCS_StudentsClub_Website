using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Session["utype"].ToString();
            if (!Page.IsPostBack)
            {

                if (user == "Student")
                {
                    getStudentsData();
                }
                else
                {
                    getAlumnisData();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = Session["utype"].ToString();
            if (user == "Student")
            {
                updateStudentsDetails();
            }
            else
            {
                updateAlumnisDetails();
            }
        }
        void getStudentsData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from Student where emailid='" + Session["uemail"].ToString() + " '", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);




                TextBox4.Text = dt.Rows[0]["fname"].ToString();
                TextBox6.Text = dt.Rows[0]["mname"].ToString();
                TextBox14.Text = dt.Rows[0]["lname"].ToString();
                TextBox7.Text = dt.Rows[0]["emailid"].ToString();
                TextBox8.Text = dt.Rows[0]["pass"].ToString();
               // TextBox5.Text = dt.Rows[0]["pass"].ToString();
                TextBox2.Text = dt.Rows[0]["course"].ToString();
                TextBox3.Text = dt.Rows[0]["experties"].ToString();
                TextBox9.Text = dt.Rows[0]["addmissionyear"].ToString();
                TextBox10.Text = dt.Rows[0]["passoutyear"].ToString();
                TextBox11.Text = dt.Rows[0]["mobnum"].ToString();
                TextBox12.Text = dt.Rows[0]["birthdate"].ToString();
                TextBox13.Text = dt.Rows[0]["postaladdress"].ToString();
                TextBox1.Text = dt.Rows[0]["pass"].ToString();
                Label1.Text = dt.Rows[0]["account_status"].ToString(); 


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + " ');</script>");
            }
        }
        void getAlumnisData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from Alumni where emailid='" + Session["uemail"].ToString() + " '", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);




                TextBox4.Text = dt.Rows[0]["fname"].ToString();
                TextBox6.Text = dt.Rows[0]["mname"].ToString();
                TextBox14.Text = dt.Rows[0]["lname"].ToString();
                TextBox7.Text = dt.Rows[0]["emailid"].ToString();
                TextBox8.Text = dt.Rows[0]["pass"].ToString();
                // TextBox5.Text = dt.Rows[0]["pass"].ToString();
                TextBox2.Text = dt.Rows[0]["course"].ToString();
                TextBox3.Text = dt.Rows[0]["experties"].ToString();
                TextBox9.Text = dt.Rows[0]["addmissionyear"].ToString();
                TextBox10.Text = dt.Rows[0]["passoutyear"].ToString();
                TextBox11.Text = dt.Rows[0]["mobnum"].ToString();
                TextBox12.Text = dt.Rows[0]["birthdate"].ToString();
                TextBox13.Text = dt.Rows[0]["postaladdress"].ToString();
                TextBox1.Text = dt.Rows[0]["pass"].ToString();
                Label1.Text = dt.Rows[0]["account_status"].ToString();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + " ');</script>");
            }
        }
        void updateStudentsDetails()
        {
            String password = "";
            if (TextBox5.Text.Trim() =="")
            {
                password = TextBox8.Text.Trim();

            }
            else
            {
                password = TextBox5.Text.Trim();
            }
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("update Student set fname=@fname, mname=@mname, lname=@lname, " +
                    "course=@course, addmissionyear=@addmissionyear, passoutyear=@passoutyear, emailid=@emailid, " +
                    "pass=@pass, mobnum=@mobnum, postaladdress=@postaladdress, experties=@experties, birthdate=@birthdate," +
                    "account_status=@account_status WHERE fname=' " + Session["fname"].ToString().Trim() + " '", con);



                cmd.Parameters.AddWithValue("@fname", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@mname", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@lname", TextBox14.Text.Trim());
                cmd.Parameters.AddWithValue("@course", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@addmissionyear", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@passoutyear", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@emailid", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@pass", password);
                cmd.Parameters.AddWithValue("@mobnum", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@postaladdress", TextBox13.Text.Trim());
                cmd.Parameters.AddWithValue("@experties", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@birthdate", TextBox12.Text.Trim());

                //cmd.Parameters.AddWithValue("@birthdate", DateTime.Parse(TextBox12.Text.Trim()));
                cmd.Parameters.AddWithValue("@account_status", "pending");
                

                int result = cmd.ExecuteNonQuery();

                con.Close();

                if (result > 0)
               {
                    Response.Write("<script>alert('Your Details Updated Successfully');</script>");

                    getStudentsData();
                }
                else
                {
                    Response.Write("<script>alert('error');</script>");
               }

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        void updateAlumnisDetails()
        {

        }
    }
}