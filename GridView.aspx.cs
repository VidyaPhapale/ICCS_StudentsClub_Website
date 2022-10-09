using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class GridView : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        public DataTable DataSource { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

            Table tableContent1 = new Table();
            tableContent1.BorderWidth = 3;
            tableContent1.BorderStyle = BorderStyle.Solid;
            tableContent1.ID = "myTable";
           

            string sQuery = "SELECT question,qname,qdate,que_id from QuestionAnswer";
            //string sQuery = "SELECT q.que_id, q.question,q.qname,q.qdate, a.answer, a.adate, a.aname from QuestionAnswer q inner join Answer a on q.que_id = a.que_id";
            //GridView1.DataSource = getData(sQuery);
            //GridView1.DataBind();


            
            

            DataTable dataQuestions = getData(sQuery);
            


            DataTable dtSortedData = new DataTable();
            DataColumn dtCol = new DataColumn();
            dtCol.ColumnName = "que_id";
            DataColumn dtCol1 = new DataColumn();
            dtCol1.ColumnName = "QuestionDetails";
            dtSortedData.Columns.Add(dtCol);
            dtSortedData.Columns.Add(dtCol1);
            
            for (int i = 0; i < dataQuestions.Rows.Count; i++)
            {
                DataRow dr = dtSortedData.NewRow();

                int id = Convert.ToInt32(dataQuestions.Rows[i]["que_id"]);

                string question = "Question :" + dataQuestions.Rows[i]["question"].ToString();
                string qName = "QName : " + dataQuestions.Rows[i]["qname"].ToString();
                string qdate = "QDate : " + dataQuestions.Rows[i]["qdate"].ToString();
                string answer = "";
                string aname = "";
                string sQueryAns = "SELECT answer, adate, aname,que_id from Answer  WHERE que_id='" + id + "'";
                DataTable dataAns = getData(sQueryAns);
               
                for (int j = 0; j < dataAns.Rows.Count; j++)
                {
                    if (string.IsNullOrEmpty(answer))
                    {
                        answer = "Answer : " + dataAns.Rows[j]["answer"].ToString();
                    }
                    else
                    {
                        answer += ",\n " + dataAns.Rows[j]["answer"].ToString();
                    }
                     aname = "AName : " + dataAns.Rows[j]["aname"].ToString();

                }

                //if (id == Convert.ToInt32(dataQuestions.Rows[i + 1]["que_id"]))
                //{
                //    answer += dataQuestions.Rows[i + 1]["answer"].ToString();
                //    i++;
                //}
                StringBuilder sb = new StringBuilder();
                sb.Append(question);
                sb.Append(Environment.NewLine);
                sb.Append(qName);
                sb.Append(Environment.NewLine);
                sb.Append(qdate);
                sb.Append(Environment.NewLine);
                sb.Append(answer);
                sb.Append(Environment.NewLine);
                sb.Append(aname);
                dr[0] = id;
                dr[1] = sb;
                dtSortedData.Rows.Add(dr);

                TableRow row = new TableRow();
                TableCell cell = new TableCell();

                cell.ColumnSpan = 3;
                cell.Text = question;
                cell.Font.Bold = true;
                row.Cells.Add(cell);

                TableRow row1 = new TableRow();
                TableCell cell1 = new TableCell();

                cell1.ColumnSpan = 3;
                cell1.Text = qName;
                row1.Cells.Add(cell1);

                TableRow row2 = new TableRow();
                TableCell cell2 = new TableCell();

                cell2.ColumnSpan = 3;
                cell2.Text = qdate;
                row2.Cells.Add(cell2);

                TableRow row3 = new TableRow();
                TableCell cell3 = new TableCell();

                cell3.ColumnSpan = 3;
                cell3.Text = answer;
                row3.Cells.Add(cell3);

                TableRow row5 = new TableRow();
                TableCell cell5 = new TableCell();

                cell5.ColumnSpan = 3;
                cell5.Text = aname;
                row5.Cells.Add(cell5);

                tableContent1.Rows.Add(row);
                tableContent1.Rows.Add(row1);
                tableContent1.Rows.Add(row2);
                tableContent1.Rows.Add(row3);
                tableContent1.Rows.Add(row5);

                TableRow row4 = new TableRow();
                TableCell cell4 = new TableCell();
                cell4.Text = "nbsp;";
                row4.Cells.Add(cell3);
                tableContent1.Rows.Add(row4);

            }
         //   dvTable.Controls.Add(tableContent1);

            GridView1.DataSource = dtSortedData;
            GridView1.DataBind();
        }


      /*  protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string que_id = GridView1.DataKeys[e.Row.RowIndex].Value.ToString();
                string sQuery = "SELECT answer, adate, aname,que_id from Answer  WHERE que_id='" + que_id + "'";
                System.Web.UI.WebControls.GridView SC = (System.Web.UI.WebControls.GridView)e.Row.FindControl("GridView2");
                SC.DataSource = getData(sQuery);
                SC.DataBind();
            }
        } */
        private DataTable getData(string sQuery)
        {
            SqlDataAdapter sdt = new SqlDataAdapter();
            DataTable dTable = new DataTable();
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand(sQuery, con);
            sdt.SelectCommand = cmd;
            sdt.Fill(dTable);
            con.Close();
            return dTable;
        } 
    }
}