using System;
using System.Collections.Generic;
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