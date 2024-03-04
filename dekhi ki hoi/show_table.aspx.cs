using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dekhi_ki_hoi
{
   
    public partial class show_table : System.Web.UI.Page
    {
        string str1 = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(str1);
                SqlDataAdapter ad1 = new SqlDataAdapter("select * from project_add1", con);
                DataTable dtb1 = new DataTable();
                ad1.Fill(dtb1);
                GridView1.DataSource = dtb1;
                GridView1.DataBind();
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message); 
            }
        }

    }
}