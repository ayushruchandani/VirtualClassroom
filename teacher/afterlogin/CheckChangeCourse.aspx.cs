using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class teacher_afterlogin_CheckChangeCourse : System.Web.UI.Page
{
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);
    SqlCommand cmd;
    string starting_date, ending_date, student_id;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["course_teacherid"] != null)
        {
            checkDate();
        }
        else 
        {
            Response.Redirect("../../Home.aspx");
        }
    }

    protected void checkDate()
    {
        //lbl.Text=Session["Course"].ToString();
        String strSel = "Select CourseSDate,CourseEDate from Teachermaster Where Course='" + Session["Course"].ToString() + "'";
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        SqlCommand cmdSel = new SqlCommand(strSel, con);
        SqlDataReader dr1 = cmdSel.ExecuteReader();
        while (dr1.Read())
        {
            starting_date = dr1["CourseSDate"].ToString();
            ending_date = dr1["CourseEDate"].ToString();
        }


        string current_date = DateTime.Now.ToString("dd/MM/yyyy");
        starting_date = Convert.ToDateTime(starting_date).ToString("dd/MM/yyyy");
        ending_date = Convert.ToDateTime(ending_date).ToString("dd/MM/yyyy");

        //lbl.Text = ending_date;

        if ((Convert.ToDateTime(current_date)) <= (Convert.ToDateTime(ending_date)) && (Convert.ToDateTime(current_date)) >= (Convert.ToDateTime(starting_date)))
        {
            Response.Redirect("~/teacher/afterlogin/ChangeCourseError.aspx");
        }
        else
        {
            Response.Redirect("~/teacher/afterlogin/ChangeCourse.aspx");
        }

    }
}