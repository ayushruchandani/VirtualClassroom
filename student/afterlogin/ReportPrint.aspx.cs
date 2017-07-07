using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student_afterlogin_ReportPrint : System.Web.UI.Page
{
    string path;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblDate.Text = Session["Date"].ToString();
        path = Session["path1"].ToString();
        path = "~/images/" + path;
        studentImage.ImageUrl = path;
        lblStudentName.Text = Session["StudentName"].ToString();
        lblScore.Text = Session["Score"].ToString();
        lblGen.Text = Session["Gen"].ToString();
        lblGrade.Text = Session["Grade"].ToString();
        lblMarks.Text = Session["Marks"].ToString();
        lblPer.Text = Session["per"].ToString();
        lblTestName.Text = Session["Test"].ToString();
        lblCourse.Text = Session["CourseName"].ToString();
        lblWel.Text = Session["Wel"].ToString();
        
    }
}