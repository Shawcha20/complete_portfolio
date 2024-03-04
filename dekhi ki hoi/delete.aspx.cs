using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace dekhi_ki_hoi
{
    public partial class delete_project : System.Web.UI.Page // Renamed class to avoid conflict
    {
        string str = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void deleting(object sender, EventArgs e) // Renamed method to avoid conflict
        {
            string projectName = project_name.Value; // Corrected accessing value of input field

            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[project_add1] WHERE [pName]=@ProjectName", conn);
            cmd.Parameters.AddWithValue("@ProjectName", projectName); // Use parameterized query to prevent SQL injection
            cmd.ExecuteNonQuery(); // Execute the SQL command
            Response.Redirect("~/homeaspx.aspx");
            conn.Close();
            
        }
    }
}
