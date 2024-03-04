using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
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

                    // Construct HTML dynamically for each project
                    string projectHtml = $@"
                    <div class='work_card mix app'>
                        <img src='data:image;base64,{imageName}' alt='' class='work_img'>
                        <h3 class='work_title'>{pName}</h3>
                        <span class='work_button'>
                            Demo
                            <i class='ri-arrow-right-line work_button-icon'></i>
                        </span>
                        <div class='portfolio_item-details'>
                            <h3 class='details_title'>{pdetails}</h3>
                            <p class='details_description'>{pdescription}</p>
                            <ul class='details_info'>
                                <li>Created - <span>{date}</span></li>
                                <li>Technology - <span>{technology}</span></li>
                                <li>Role - <span>{role}</span></li>
                                <li>View - <span><a href='{view}'>{view}</a></span></li>
                            </ul>
                        </div>
                    </div>";

                    // Append HTML for each project to the container
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