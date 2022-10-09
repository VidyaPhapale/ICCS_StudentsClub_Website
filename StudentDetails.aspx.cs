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
    public partial class AdminMemberManagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();

        }

        //Go 
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getStudentByName();
        }

        //Active
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateStudentStatus("active");
        }

        //pending
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateStudentStatus("pending");
        }

        //deactive
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateStudentStatus("active");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            deleteStudent();
        }
        void getStudentByName()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from Student where fname='" + TextBox4.Text.Trim() +  " '", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox4.Text = dr.GetValue(1).ToString();
                        TextBox6.Text = dr.GetValue(13).ToString();
                        TextBox1.Text = dr.GetValue(2).ToString();
                        TextBox5.Text = dr.GetValue(3).ToString();
                        TextBox7.Text = dr.GetValue(7).ToString();
                        TextBox8.Text = dr.GetValue(8).ToString();
                        TextBox2.Text = dr.GetValue(4).ToString();
                        TextBox3.Text = dr.GetValue(11).ToString();

                        TextBox9.Text = dr.GetValue(5).ToString();
                        TextBox10.Text = dr.GetValue(6).ToString();
                        TextBox11.Text = dr.GetValue(9).ToString();
                        TextBox12.Text = dr.GetValue(12).ToString();
                        TextBox13.Text = dr.GetValue(10).ToString();

                        

                    }
                    
                }
                
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
                dr.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + " ');</script>");
            }

        }
        void updateStudentStatus(string status)
        {
            try
            {
                
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("update  Student set account_status='" +  status + " '  where fname=' " + TextBox4.Text.Trim() + " ' ", con);
                
                
                cmd.ExecuteNonQuery();
                
                con.Close();
                GridView1.DataBind();
                Response.Write("<script>alert('Student status updated ');</script>");
                GridView1.DataBind(); 
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + " ');</script>");
            }
        }
        void deleteStudent()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("delete from Student  where fname=' " + TextBox4.Text.Trim() + " ' ", con);
                
                cmd.ExecuteNonQuery();
               
                con.Close();
                Response.Write("<script>alert('Student deleted successfully ');</script>");
                
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + " ');</script>");
            }
        }
        void clearForm()
        {
            TextBox4.Text = "";
            TextBox6.Text = "";
            TextBox1.Text = "";
            TextBox5.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";

            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
        }

       
    }
}