using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_afterlogin_EditStudentDetails : System.Web.UI.Page
{
    string filename;
    static String strcon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strcon);
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string query = "SELECT * FROM Studentmaster WHERE StudentId='" + Session["student_id"] + "'";
            cmd = new SqlCommand(query, con);
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }

            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                filename = dr["filename"].ToString();
                FN.Text = dr["Firstname"].ToString();
                LN.Text = dr["Lastname"].ToString();
                //DOB.Text = dr["Dateofbirth"].ToString();
                EmailId.Text=dr["EmailId"].ToString();
                field.Text=dr["Field"].ToString();
               course.Text=dr["Course"].ToString();
                contactno.Text = dr["Contactnumber"].ToString();
                university.Text=dr["CollegeSchool"].ToString();
                state.Text = dr["State"].ToString();
                city.Text = dr["City"].ToString();

            }


            con.Close();

            filename = "~/images/" + filename;
            pp.ImageUrl = filename;
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string update = "UPDATE Studentmaster SET Firstname='" + FN.Text + "',Lastname='" + LN.Text + "',EmailId='" + EmailId.Text + "',Course='" + course.Text + "',Field='" + field.Text + "',Contactnumber='" + contactno.Text + "',State='" + state.Text + "',CollegeSchool='" + university.Text + "',City='" + city.Text + "' WHERE StudentId='" + Session["student_id"] + "'";
        cmd = new SqlCommand(update, con);
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        cmd.ExecuteNonQuery();
        lblmsg.Text = "Data has been updated successfully..!!";
    }
}