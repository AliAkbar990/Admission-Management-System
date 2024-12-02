using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Mini_Project13
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Project13.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            lblresult.Text = "";
        }

        protected void btnAdmin_Login_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Admin_Login", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                string Email = reader["Email"].ToString();
                string Password = reader["Password"].ToString();

                if (Email != txtEmail.Text || Password != txtPassword.Text)
                {
                    lblresult.Text = "Invalid Username Or Password*";
                }
                else
                {
                    Response.Redirect("display.aspx");
                }
            }
        }
    }
}