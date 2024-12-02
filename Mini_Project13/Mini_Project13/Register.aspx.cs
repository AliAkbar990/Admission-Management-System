using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Mini_Project13
{
    public partial class Register : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Project13.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            bool isSuccess = false;
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "Insert Into Login (username, password, email) values (@username, @password,@email)";
                    cmd.Parameters.AddWithValue("@username", txtUsername.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                    cmd.Connection = con;

                    con.Open();
                    int inserteRow = cmd.ExecuteNonQuery();
                    con.Close();

                    lblMessage.Text = "Registration Successfully !!!";
                    isSuccess = true;
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = string.Format("Registration Failed !!! - {0}", ex.Message);
                throw;
            }

            if (isSuccess)
                Response.Redirect("~/Login.aspx");
        }
    }
}