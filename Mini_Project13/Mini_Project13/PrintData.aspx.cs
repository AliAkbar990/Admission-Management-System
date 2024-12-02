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
    public partial class DisplayData : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Project13.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
            
            lblfname.Text = Request.QueryString["fname"];
            lbllname.Text = Request.QueryString["lname"];
            lblEmail.Text = Request.QueryString["Email"];
            lblPhone.Text = Request.QueryString["Phone"];
            lblAddress.Text = Request.QueryString["Address"];
            lblNationality.Text = Request.QueryString["Nationality"];
            lblGender.Text = Request.QueryString["Gender"];
            lblBirthDate.Text = Request.QueryString["BirthDate"];
            lblLastSchoolName.Text = Request.QueryString["Last School Name"];
            lbl10thMarksheetGrade.Text = Request.QueryString["10th Marksheet Grade"];
            lbl12thMarksheetGrade.Text = Request.QueryString["12th Marksheet Grade"];
            lblDegree.Text = Request.QueryString["Degree"];          
            lblPincodeno.Text = Request.QueryString["Pincodeno"];

        }
        
    }
}