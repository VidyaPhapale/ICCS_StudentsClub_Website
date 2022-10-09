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
    public partial class QueAnsSection1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try

            {
                string fname = Session["fname"].ToString();
                string lname = Session["lname"].ToString();
                string id = Session["studid"].ToString();
                string name = fname + lname;
                string categories = "";
                foreach (int i in ListBox1.GetSelectedIndices())
                {
                    categories = categories + ListBox1.Items[i] + ",";
                }
                categories = categories.Remove(categories.Length - 1);

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into QuestionAnswer(category,question,studid,qname,qdate) values(@category,@question,@studid,@qname,@qdate)", con);
                // cmd.Parameters.AddWithValue("@queid", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@category", categories);
                cmd.Parameters.AddWithValue("@question", TextBox1.Text.Trim());
                //cmd.Parameters.AddWithValue("@answer", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@studid", id);
                cmd.Parameters.AddWithValue("@qname", name);
                cmd.Parameters.AddWithValue("@qdate", DateTime.Now.ToString("MM/dd/yyyy hh:mm tt"));


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Question added successfully');</script>");
                //clearForm();
                // GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + " ');</script>");
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            try

            {
                string fname = Session["fname"].ToString();
                string lname = Session["lname"].ToString();
                string id = Session["studid"].ToString();
                string name = fname + lname;


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into QuestionAnswer(answer,aname,adate) values(@answer,@aname,@adate)", con);
                // cmd.Parameters.AddWithValue("@queid", TextBox2.Text.Trim());
                // cmd.Parameters.AddWithValue("@category", categories);
                cmd.Parameters.AddWithValue("@answer", TextBox2.Text.Trim());
                //cmd.Parameters.AddWithValue("@answer", TextBox4.Text.Trim());
                //cmd.Parameters.AddWithValue("@studid", id);
                cmd.Parameters.AddWithValue("@aname", name);
                cmd.Parameters.AddWithValue("@adate", DateTime.Now.ToString("MM/dd/yyyy hh:mm tt"));


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Answer added successfully');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + " ');</script>");
            }
        }
    }
}