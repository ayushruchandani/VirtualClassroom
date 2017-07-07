using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_afterlogin_EditTeachetDetails : System.Web.UI.Page
{
    static String strcon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strcon);
    SqlCommand cmd;
    SqlDataReader dr;
    string filename;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            string query = "SELECT * FROM Teachermaster WHERE TeacherId='" + Session["course_teacherid"] + "'";
            cmd = new SqlCommand(query, con);
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }

            dr = cmd.ExecuteReader();

            if (dr.Read())
            {

                TID.Text=dr["TeacherId"].ToString();
                FN.Text=dr["Firstname"].ToString();
                LN.Text=dr["Lastname"].ToString();
                EmailId.Text=dr["EmailId"].ToString();
                contactno.Text=dr["Contactnumber"].ToString();
                state.Text=dr["State"].ToString();
                city.Text=dr["City"].ToString();
                field.Text=dr["Field"].ToString();
                university.Text=dr["University_college"].ToString();
                course.Text=dr["Course"].ToString();
                CStartDate.Text=dr["CourseSDate"].ToString();
                CEndDate.Text=dr["CourseEDate"].ToString();
                CDesc.Text=dr["CourseDesc"].ToString();
                filename=dr["filename"].ToString();
            }


            //con.Close();

            filename = "~/images/" + filename;
            pp.ImageUrl = filename;
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string update = "UPDATE Teachermaster SET Firstname='" + FN.Text + "',Lastname='" + LN.Text + "',EmailId='" + EmailId.Text + "',Course='" + course.Text + "',CourseSDate='" + CStartDate.Text + "',CourseEDate='" + CEndDate.Text + "',CourseDesc='" + CDesc.Text + "',Field='" + field.Text + "',Contactnumber='" + contactno.Text + "',State='" + state.Text + "',University_college='" + university.Text + "',City='" + city.Text + "' WHERE TeacherId='" + Session["course_teacherid"] + "'";
        cmd = new SqlCommand(update, con);
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        cmd.ExecuteNonQuery();
        lblupdtMsg.Text = "Data has been updated successfully..!!";
    }
}