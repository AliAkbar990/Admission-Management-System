using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Mini_Project13
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Project13.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Login", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                string Username = sdr["Username"].ToString();
                string Password = sdr["Password"].ToString();

                if (Username != txtUsername.Text || Password != txtPassword.Text)
                {
                    lblresult.Text = "Invalid Username or password !!!";

                }
                else
                {
                    Response.Redirect("~/Admission.aspx");
                }
            }
            con.Close();
        }
    }
}