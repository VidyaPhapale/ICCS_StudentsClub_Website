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
    public partial class SearchPeople : System.Web.UI.Page
    {
        //String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(strcon);
           
           /* String user = Session["utype"].ToString();
            String sid = Session["sid"].ToString();
           
            Session["stid"] = sid;
            
            lsid.DataBind();

            String aid = Session["aid"].ToString();
            Session["alid"] = aid;
            laid.DataBind(); */
            
        }
    }
}