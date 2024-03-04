using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dekhi_ki_hoi
{

    public partial class update : System.Web.UI.Page
    {
        string str= ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Update(object sender, EventArgs e)
        {
            try
            {
                byte[] projectImage = null;
                using (var binaryReader = new BinaryReader(img.PostedFile.InputStream))
                {
                    projectImage = binaryReader.ReadBytes(img.PostedFile.ContentLength);
                }

                SqlConnection con = new SqlConnection(str);
                con.Open();
                SqlCommand command = new SqlCommand("UPDATE [dbo].[project_add1] SET [image] = @Image, [pName] = @ProjectName, [pdetails] = @PDetails, [pdescription] = @PDescription, [date] = @Date, [technology] = @Technology, [role] = @Role, [view] = @View WHERE [pName] = @ProjectName", con);
                command.Parameters.AddWithValue("@Image", projectImage);
                command.Parameters.AddWithValue("@ProjectName", title.Value); // Assuming project_name is an input control with appropriate ID
                command.Parameters.AddWithValue("@PDetails", detailsTitle.Value);
                command.Parameters.AddWithValue("@PDescription", description.Value);
                command.Parameters.AddWithValue("@Date", date.Value);
                command.Parameters.AddWithValue("@Technology", technology.Value);
                command.Parameters.AddWithValue("@Role", role.Value);
                command.Parameters.AddWithValue("@View", view.Value);
                command.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                // Handle the exception
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }

    }
}