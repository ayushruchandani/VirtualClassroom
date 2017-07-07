using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class student_afterlogin_Query : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["VirtualClassroomConnectionString1"].ConnectionString);
    SqlCommand sqlCmd;
    SqlDataReader dr;
    string teacherid, studentid;
    string studentpic_path, teacherpic_path;
    protected void Page_Load(object sender, EventArgs e)
    {
        string sel = "Select * from Query where QueryId='" + Session["QueryId"] + "'";
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        sqlCmd = new SqlCommand(sel, con);
        dr = sqlCmd.ExecuteReader();

        while (dr.Read())
        {
            lblStudentId.Text = "Student Id:             " + dr["StudentId"].ToString();
            studentid = dr["StudentId"].ToString();
            lblTeacherId.Text = "Teacher Id:             " + dr["TeacherId"].ToString();
            lblQuery.Text =dr["Query"].ToString();
            teacherid = dr["TeacherId"].ToString();
            lblReply.Text =dr["Reply1"].ToString();
        }
        con.Close();
        findStudent(studentid);
        findTeacher(teacherid);
    }
    protected void sndmsg_Click(object sender, EventArgs e)
    {
        Response.Redirect("../afterlogin/SendMessage.aspx");
    }

    protected void findStudent(string sid)
    {
        string sel1 = "Select * from Studentmaster where StudentId='" + studentid + "'";
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        sqlCmd = new SqlCommand(sel1, con);
        SqlDataReader dr1 = sqlCmd.ExecuteReader();
        while (dr1.Read())
        {
            studentpic_path = dr1["filename"].ToString();
            studentpic_path = "~/images/" + studentpic_path;
            propic.ImageUrl = studentpic_path;
            lblStudentName.Text = dr1["Firstname"].ToString() + " " + dr1["Lastname"].ToString();
        }

        con.Close();
    }

    protected void findTeacher(string tid)
    {
        string sel2 = "Select * from Teachermaster where TeacherId='" + teacherid + "'";
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        sqlCmd = new SqlCommand(sel2, con);
        SqlDataReader dr2 = sqlCmd.ExecuteReader();
        while (dr2.Read())
        {
            teacherpic_path = dr2["filename"].ToString();
            teacherpic_path = "~/images/" + teacherpic_path;
            tProPic.ImageUrl = teacherpic_path;
            lblTeacherName.Text = dr2["Firstname"].ToString() + " " + dr2["Lastname"].ToString();
        }

        con.Close();
    }
}