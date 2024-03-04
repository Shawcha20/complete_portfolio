

using System;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;

namespace dekhi_ki_hoi
{
    public partial class add_project : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Add(object sender, EventArgs e)
        {
            byte[] projectImage = null;
            using (var binaryReader = new BinaryReader(img.PostedFile.InputStream))  //img ta holo id
            {
                projectImage = binaryReader.ReadBytes(img.PostedFile.ContentLength);
            }


            string connectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            string query = "INSERT INTO project_add1 (image, pName, pdetails, pdescription, date, technology, role, [view]) VALUES (@Image, @Title, @details, @Description, @date, @technology, @role, @view)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Title", title.Value);
                command.Parameters.AddWithValue("details", detailsTitle.Value);
                command.Parameters.AddWithValue("@Description", description.Value);
                command.Parameters.AddWithValue("@Image", projectImage);
                command.Parameters.AddWithValue("@date", date.Value);
                command.Parameters.AddWithValue("@technology", technology.Value);
                command.Parameters.AddWithValue("@role", role.Value);
                command.Parameters.AddWithValue("@view", view.Value);

                connection.Open();
                command.ExecuteNonQuery();
                Response.Redirect("~/homeaspx.aspx");
                connection.Close();
            }

            return;
        }

    }
}