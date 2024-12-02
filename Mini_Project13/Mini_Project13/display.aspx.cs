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
    public partial class display : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Project13.mdf;Integrated Security=True;User Instance=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDataTable();
            }
        }
        private void BindDataTable()
        {

                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Admission", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                gvStudent.DataSource = dt;
                gvStudent.DataBind();          
            
        }

        protected void gvStudent_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvStudent.EditIndex = e.NewEditIndex;
            BindDataTable();
        }

        protected void gvStudent_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = gvStudent.Rows[e.RowIndex];
            int formid = Convert.ToInt32(gvStudent.DataKeys[e.RowIndex].Values[0]);
            string fname = (row.FindControl("txtfname") as TextBox).Text;
            string lname = (row.FindControl("txtlname") as TextBox).Text;
            string email = (row.FindControl("txtemail") as TextBox).Text;
            string phoneno = (row.FindControl("txtphoneno") as TextBox).Text;
            string address = (row.FindControl("txtaddress") as TextBox).Text;
            string nationality = (row.FindControl("txtnationality") as TextBox).Text;
            string gender = (row.FindControl("txtgender") as TextBox).Text;
            string dob = (row.FindControl("txtdob") as TextBox).Text;
            string Lastschoolname = (row.FindControl("txtLastschoolname") as TextBox).Text;
            string degree = (row.FindControl("txtdegree") as TextBox).Text;
            string pincodeno = (row.FindControl("txtpincodeno") as TextBox).Text;
            SqlCommand cmd = new SqlCommand("update Admission set fname=@fname, lname=@lname, email=@email, phoneno=@phoneno, address=@address, nationality=@nationality, gender=@gender, dob=@dob, Lastschoolname=@Lastschoolname, degree=@degree, pincodeno=@pincodeno where formid=@formid", con);
            cmd.Parameters.AddWithValue("@formid", formid);
            cmd.Parameters.AddWithValue("@fname", fname);
            cmd.Parameters.AddWithValue("@lname", lname);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@phoneno", phoneno);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@nationality", nationality);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@dob", dob);
            cmd.Parameters.AddWithValue("@Lastschoolname", Lastschoolname);
            cmd.Parameters.AddWithValue("@degree", degree);
            cmd.Parameters.AddWithValue("@pincodeno", pincodeno);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            gvStudent.EditIndex = -1;
            BindDataTable();
        }

        protected void gvStudent_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvStudent.EditIndex = -1;
            BindDataTable();
        }

        protected void gvStudent_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int formid = Convert.ToInt32(gvStudent.DataKeys[e.RowIndex].Values[0]);
            SqlCommand cmd = new SqlCommand("Delete from Admission where formid=@formid", con);
            cmd.Parameters.AddWithValue("@formid", formid);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            BindDataTable();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/Home.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from Admission where fname like'%"+ txtfname.Text +"%'",con);
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            gvStudent.DataSource = dt1;
            gvStudent.DataBind();
            con.Close();
        }

       
    }
}