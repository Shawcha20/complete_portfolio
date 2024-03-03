using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Security.Policy;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace dekhi_ki_hoi
{
    public partial class login : System.Web.UI.Page
    {
        string str= ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void submission(object sender, EventArgs e)
        {
            try {
                SqlConnection con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from login_table where NaMe=@name", con);
                cmd.Parameters.AddWithValue("@name", nam.Value);
                cmd.Parameters.AddWithValue("@password", password.Value);
                SqlDataAdapter da= new SqlDataAdapter(cmd);
                DataSet ds= new DataSet();
                da.Fill(ds,"login_table");
                if (ds.Tables["login_table"].Rows.Count > 0)
                {
                    // If username exists, filter the dataset for the entered password
                    
                    DataRow[] rows = ds.Tables["login_table"].Select("PassWord = '" + password.Value + "'");
                    if (rows.Length > 0)
                    {
                        // Username and password match
                        Response.Write("<script> alert('login')</script>");
                        Response.Redirect("~/addition.aspx");
                    }
                    else
                    {
                        // Password does not match
                        Response.Write("<script> alert('Invalid password')</script>");
                    }
                }
                else
                {
                    Response.Write("<script> alert('invalid user')</script>");
                }
                cmd.ExecuteNonQuery();
               
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}