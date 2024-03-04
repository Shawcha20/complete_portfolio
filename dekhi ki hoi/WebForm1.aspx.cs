using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace dekhi_ki_hoi
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            string query = "SELECT image, pName, pdetails, pdescription, date, technology, role, [view] FROM project_add1";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    string imageName = Convert.ToBase64String((byte[])reader["image"]);
                    string pName = reader["pName"].ToString();
                    string pdetails = reader["pdetails"].ToString();
                    string pdescription = reader["pdescription"].ToString();
                    string date = reader["date"].ToString();
                    string technology = reader["technology"].ToString();
                    string role = reader["role"].ToString();
                    string view = reader["view"].ToString();

                    // Construct HTML dynamically for each project with inline CSS
                    string projectHtml = $@"
    <div class='work_card mix app' style='border: 1px solid #ccc; padding: 10px; margin-bottom: 20px;'>
        <img src='data:image;base64,{imageName}' alt='' class='work_img' style='width: 100%; max-width: 300px; height: 300px;'>
        <h3 class='work_title' style='margin-top: 10px; font-size: 20px;'>{pName}</h3>
        <div  style='margin-top: 10px;'>
            <h3  style='font-size: 18px;'>{pdetails}</h3>
            <p  style='font-size: 16px;'>{pdescription}</p>
            <ul style='list-style-type: none; padding: 0;'>
                <li style='font-size: 14px; margin-bottom: 5px;'>Created - <span>{date}</span></li>
                <li style='font-size: 14px; margin-bottom: 5px;'>Technology - <span>{technology}</span></li>
                <li style='font-size: 14px; margin-bottom: 5px;'>Role - <span>{role}</span></li>
                <li style='font-size: 14px; margin-bottom: 5px;'>View - <span><a href='{view}' style='color: #007bff; text-decoration: none;'>{view}</a></span></li>
            </ul>
        </div>
    </div>";

                    // Append HTML for each project to the container
                    HtmlGenericControl container = (HtmlGenericControl)FindControl("content");
                    container.InnerHtml += projectHtml;
                }

                reader.Close();

            }
        }
        protected void sendbtn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connect = new SqlConnection(strcon);
                connect.Open(); 
                SqlCommand cmd = new SqlCommand("INSERT INTO portfolio(name,email,phn, mes) VALUES (@name,@email,@phone, @message)", connect);
                cmd.Parameters.AddWithValue("@name", name.Value);
                cmd.Parameters.AddWithValue("@email", email.Value);
                cmd.Parameters.AddWithValue("@phone",phone.Value);
                cmd.Parameters.AddWithValue("@message", message.Value);
                cmd.ExecuteNonQuery();
                connect.Close();
                Response.Write("<script>alert('Message sent!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
    }
}