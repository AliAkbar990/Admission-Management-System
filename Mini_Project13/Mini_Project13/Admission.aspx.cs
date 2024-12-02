using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Mini_Project13
{
    public partial class Admission : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Project13.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            string gender = "";
            if (Male.Checked)
            {
                gender = "Male";
            }
            else if (Female.Checked)
            {
                gender = "Female";
            }
            lblresult.Text += "gender: " + gender;

            string selectedDegree = ddldegree.SelectedValue;

            lblresult.Text = "selected degree: " + selectedDegree;
            //if (ddlgender.SelectedValue == "Male")
            //{
            //    gender = "Male";
            //}
            //else if (ddlgender.SelectedValue == "Female")
            //{
            //    gender = "Female";
            //}
            //Response.Write(gender);
           
            SqlCommand cmd = new SqlCommand("Insert Into Admission values('"+ txtfname.Text +"','"+ txtlname.Text +"','"+ txtemail.Text +"','"+ txtphoneno.Text +"','"+ txtaddress.Text +"','"+ txtnationality.Text +"','"+ gender +"','"+ txtdob.Text +"','"+ txtschoolname.Text +"','"+ txt10th.Text +"','"+ txt12th.Text +"','"+ selectedDegree +"','"+ txtpincodeno.Text +"')",conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            conn.Open();
            int i = cmd.ExecuteNonQuery();
            conn.Close();

            if (i==1)
            {
                lblresult.Text = "Admission Successfully !!!";

                Response.Redirect("~/PrintData.aspx?fname=" + txtfname.Text + "&lname=" + txtlname.Text + "&Email=" + txtemail.Text + "&Phone=" + txtphoneno.Text + "&Address=" + txtaddress.Text + "&Nationality=" + txtnationality.Text + "&Gender=" + gender + "&BirthDate=" + txtdob.Text + "&Last School Name=" + txtschoolname.Text + "&10th Marksheet Grade=" + txt10th.Text + "&12th Marksheet Grade=" + txt12th.Text + "&Degree=" + selectedDegree + "&Pincodeno=" + txtpincodeno.Text + "");
                Response.Redirect("~/PrintData.aspx");
            }
            else
            {
                lblresult.Text = "Admission Failed !!!";
            }
        
        }
    }
}