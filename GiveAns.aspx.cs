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
    public partial class WebForm8 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try

            {
                if (Session["fname"] == null)
                {
                    Response.Write("<script>alert('You have not logged in. To add answer please Login In');</script>");
                    Response.Redirect("LoginPage.aspx");
                }
                string fname = Session["fname"].ToString();
                string lname = Session["lname"].ToString();
                string name = fname + lname;
                //cstring que_id = Session["que_id"].ToString();
                string studid = "0", aluid = "0";

                if (Session["studid"] == null)
                {
                    studid = "NULL";
                }
                else
                {
                    studid = Session["studid"].ToString();
                }
                if (Session["aluid"] == null)
                {
                    aluid = "0";
                }
                else
                {
                    aluid = Session["studid"].ToString();
                }





                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into Answer(answer,aname,adate,que_id,aluid,studid) values(@answer,@aname,@adate,@que_id,@studid,@aluid)", con);

                //TextBox TextBox1 = (TextBox)GridView1.Rows[0].FindControl(TextBox5) as TextBox;
                String ans = TextBox1.Text.Trim();
                // string ans =TextB
                string que_id = "577";
                cmd.Parameters.AddWithValue("@answer", ans.Trim());

                cmd.Parameters.AddWithValue("@aname", name);
                cmd.Parameters.AddWithValue("@que_id", que_id);
                cmd.Parameters.AddWithValue("@studid", studid);
                cmd.Parameters.AddWithValue("@aluid", aluid);
                cmd.Parameters.AddWithValue("@adate", DateTime.Now.ToString("MM/dd/yyyy hh:mm tt"));


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Answer added successfully');</script>");
                //GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + " ');</script>");
            }
        }
    }
}