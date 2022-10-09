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
    public partial class AddEvent : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
               // int eid = int.Parse(TextBox1.Text);
               // string title = TextBox2.Text, date = TextBox3.Text, time = TextBox4.Text, venue = TextBox5.Text, guest = TextBox6.Text, desc = TextBox7.Text;
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into Event (eid,title,date,time,venue,guest,description) values (@eid, @title, @date, @time, @venue, @guest, @desc)",con);

                cmd.Parameters.AddWithValue("@eid", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@title", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@date", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@time", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@venue", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@guest", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@desc", TextBox7.Text.Trim());
               



                int i=cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('inserted ');</script>");
                GridView1.DataBind();
                ClearForm();
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Sccuessfully Saved');", true);
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + " ');</script>");
            }
        }

        
        
        protected void Button2_Click(object sender, EventArgs e)
        {

            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();

                    int X = int.Parse(TextBox1.Text);
                    SqlCommand cmd = new SqlCommand("update  Event set title = '" + TextBox2.Text + "', date = '" + TextBox3.Text + "', time =' " + TextBox4.Text + "', venue = '" + TextBox5.Text + "', guest = '" + TextBox6.Text + "', description = '" + TextBox7.Text + "' WHERE eid=' " + int.Parse(TextBox1.Text) + "'", con);


                    cmd.ExecuteNonQuery();

                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Event updated ');</script>");
                    ClearForm();
                    // GridView1.DataBind();
                }
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

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();

                    int X = int.Parse(TextBox1.Text);
                    SqlCommand cmd = new SqlCommand("DELETE  Event WHERE eid=' "+ int.Parse(TextBox1.Text) + "'", con);

                    cmd.ExecuteNonQuery();

                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Event deleted ');</script>");
                    ClearForm();
                    // GridView1.DataBind();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + " ');</script>");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from Event where eid='" + TextBox1.Text.Trim() + " '", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox2.Text = dr.GetValue(1).ToString();
                        TextBox3.Text = dr.GetValue(2).ToString();
                        TextBox4.Text = dr.GetValue(3).ToString();
                        TextBox5.Text = dr.GetValue(4).ToString();
                        TextBox6.Text = dr.GetValue(5).ToString();
                        TextBox7.Text = dr.GetValue(6).ToString();
                        GridView1.DataBind();
                    }

                }

                else
                {
                    Response.Write("<script>alert('Invalid Event ID');</script>");
                }
                dr.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + " ');</script>");
            }
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
        }
    }
}