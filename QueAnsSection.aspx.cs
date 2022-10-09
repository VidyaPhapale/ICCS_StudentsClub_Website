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
    public partial class QueAnsSection : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

       

        protected void Page_Load(object sender, EventArgs e)
        {
           
           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try

            {
                if(Session["fname"]==null)
                {
                    Response.Write("<script>alert('You have not logged in. To add answer please Login In');</script>");

                    Response.Redirect("LoginPage.aspx");
                }
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
                cmd.Parameters.AddWithValue("@question", TextBox2.Text.Trim());
                //cmd.Parameters.AddWithValue("@answer", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@studid", id);
                cmd.Parameters.AddWithValue("@qname", name);
                cmd.Parameters.AddWithValue("@qdate", DateTime.Now.ToString("MM/dd/yyyy hh:mm tt"));


                cmd.ExecuteNonQuery();
                con.Close();

                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();

                   // Convert.ToInt32(dataQuestions.Rows[i + 1]["que_id"]))
                }


                Response.Write("<script>alert('Question added successfully');</script>");
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
            TextBox2.Text = "";
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "MyButtonClick")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow gvr = GridView1.Rows[rowIndex];
            }
        }
            protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
           
            
            Response.Redirect("GiveAns.aspx");
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("GridView.aspx");
        }



            protected void Button3_Click(object sender, EventArgs e)
        {
              try

             {
                
                 string fname = Session["fname"].ToString();
                 string lname = Session["lname"].ToString();
                string name = fname + lname;
                string que_id = Session["que_id"].ToString();
                string studid="0", aluid="0";

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
                     aluid = "NULL";
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
                //String ans = TextBox1.Text.Trim();
                   // string ans =TextB
                    //cmd.Parameters.AddWithValue("@answer", ans.Trim());

                 cmd.Parameters.AddWithValue("@aname", name);
                 cmd.Parameters.AddWithValue("@que_id", que_id);
                cmd.Parameters.AddWithValue("@studid", studid);
                cmd.Parameters.AddWithValue("@aluid", aluid);
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