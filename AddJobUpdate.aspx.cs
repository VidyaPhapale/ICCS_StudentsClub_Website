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
    public partial class AddJobUpdate : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if(Session["utype"]==null)
                {
                    Response.Redirect("LoginPage.aspx");
                }
                string aluid = Session["aluid"].ToString();
            
                string jtype = "";
                foreach (int i in ListBox1.GetSelectedIndices())
                {
                    jtype = jtype + ListBox1.Items[i] + ",";
                }
                jtype = jtype.Remove(jtype.Length - 1);

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into JobDetails(compname,jobrole,jobtype,salary,lastdate,location,qualification,jobdesc,responsibilities,experiance,contact,link,email,aluid) " +
                    "values(@compname,@jobrole,@jobtype,@salary,@lastdate,@location,@qualification,@jobdesc,@responsibilities,@experiance,@contact,@link,@email,@aluid)", con);

                cmd.Parameters.AddWithValue("@compname", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@jobrole", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@jobtype", jtype);
                cmd.Parameters.AddWithValue("@salary", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@lastdate", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@location", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@qualification", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@jobdesc", TextBox13.Text.Trim());
                cmd.Parameters.AddWithValue("@responsibilities", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@experiance", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@link", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox11.Text.Trim());
            cmd.Parameters.AddWithValue("@aluid", aluid);
            cmd.ExecuteNonQuery();



                con.Close();

                Response.Write("<script>alert('Job Details Added');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + " ');</script>");
            }
        }
    }
}