using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class student_afterlogin_EditStudentProfile : System.Web.UI.Page
{
    static String strcon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True"; 
    SqlConnection con = new SqlConnection(strcon);
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["student_id"] != null)
        {

            if (!IsPostBack)
            {
                string query = "SELECT * FROM Studentmaster WHERE EmailId='" + Session["EmailId"] + "'";
                cmd = new SqlCommand(query, con);
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }

                dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    FN.Text = dr["Firstname"].ToString();
                    LN.Text = dr["Lastname"].ToString();
                    //DOB.Text = dr["Dateofbirth"].ToString();
                    password.Text = dr["Password"].ToString();
                    contactno.Text = dr["Contactnumber"].ToString();
                    //DOB.Text = dr["Dateofbirth"].ToString();
                    state.Text = dr["State"].ToString();
                    city.Text = dr["City"].ToString();
                }
                con.Close();
            }
        }
        else
        {
            Response.Redirect("../../Home.aspx");
        }
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string update = "UPDATE Studentmaster SET Firstname='" + FN.Text + "',Lastname='" + LN.Text + "',Password='" + password.Text + "',Confirm_Password='" + cpassword.Text + "',Contactnumber='" + contactno.Text + "',State='" + state.Text + "',City='" + city.Text + "' WHERE EmailId='" + Session["EmailId"] + "'";
        cmd = new SqlCommand(update, con);
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        cmd.ExecuteNonQuery();
        lblupdtMsg.Text = "Profile has been updated successfully..!!";

    }
}