using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class teacher_afterlogin_ChangeCourse : System.Web.UI.Page
{
    static String strcon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strcon);
    SqlCommand cmd;
    SqlDataReader dr;
    string course;
    protected void Page_Load(object sender, EventArgs e)
    {
        course=Session["Course"].ToString();
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        
        deleteContent();
        deleteTQuestions();
        deleteStudent();
        updateTeacher();
    }      

    protected void deleteStudent()
    {
        string delete = "Update Studentmaster SET Course=null where Course='" + course + "'";
        cmd = new SqlCommand(delete, con);
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        cmd.ExecuteNonQuery();
        con.Close();
    }

    protected void deleteContent()
    {
        string remove = "Delete from Content where Course='" + course + "'";
        cmd = new SqlCommand(remove, con);
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void deleteTQuestions()
    {
        string removeq = "Delete from TestQuestion where Course='" + course + "'";
        cmd = new SqlCommand(removeq, con);
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void updateTeacher()
    {
        string update = "UPDATE Teachermaster SET Course='" + coursena.Text + "',CourseSDate='" + CStartDate.Text + "',CourseEDate='" + CEndDate.Text + "',CourseDesc='" + CDesc.Text + "' WHERE TeacherId='" + Session["course_teacherid"] + "'";
        cmd = new SqlCommand(update, con);
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        cmd.ExecuteNonQuery();
        lblupdtMsg.Text = "Your course has been change please logout first to see your updated course..!!";
    }
}