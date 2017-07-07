using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class student_afterlogin_Report : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["VirtualClassroomConnectionString1"].ConnectionString);
    SqlCommand sqlCmd;
    SqlDataReader dr;
    int sc;
    int m;
    float per;
    string gen;
    string studentpic_path = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime now = DateTime.Now;

        string testid=Session["ReportTestId"].ToString();
        string sel = "SELECT CheckTestGiven.Score, Test.TestId,Test.TestName,Test.Course,Test.Marks  FROM    CheckTestGiven  INNER JOIN Test  ON CheckTestGiven.TestId = Test.TestId where CheckTestGiven.StudentId='" + Session["student_id"] + "' AND CheckTestGiven.TestId='" + testid + "'";
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        sqlCmd = new SqlCommand(sel, con);
        dr = sqlCmd.ExecuteReader();
        while (dr.Read())
        {
            sc = Convert.ToInt32(dr["Score"]);
            m = Convert.ToInt32(dr["Marks"]);
            lblTestName.Text = dr["TestName"].ToString();
            Session["Test"] = lblTestName.Text;
            lblCourse.Text = dr["Course"].ToString();
            Session["CourseName"] = lblCourse.Text;
        }
        con.Close();
        lblDate.Text = now.ToShortDateString();
        Session["Date"] = lblDate.Text;
        per = (float)((sc * 100) / m);
        lblPer.Text = per.ToString();
        Session["per"] = lblPer.Text;
        //lblStudentName.Text = Session["Firstname"].ToString() + " " + Session["Lastname"];
        lblScore.Text = sc.ToString();
        Session["Score"] = lblScore.Text;
        lblMarks.Text = m.ToString();
        Session["Marks"] = lblMarks.Text;

        string sel1 = "SELECT * FROM Studentmaster WHERE StudentId='" + Session["student_id"] + "'";
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        sqlCmd = new SqlCommand(sel1, con);
        dr = sqlCmd.ExecuteReader();
        while(dr.Read())
        {
            studentpic_path = dr["filename"].ToString();
            Session["path1"] = studentpic_path;
            studentpic_path = "~/images/" + studentpic_path;
            studentImage.ImageUrl = studentpic_path;
            


            gen = dr["Gender"].ToString();
            if (gen.Equals("Male"))
            {
                lblStudentName.Text = "Mr. " + Session["Firstname"].ToString() + " " + Session["Lastname"];
                lblGen.Text = "He";
                Session["StudentName"] = lblStudentName.Text;
                Session["Gen"] = lblGen.Text;
            }
            else
            {
                lblStudentName.Text = "Ms. " + Session["Firstname"].ToString() + " " + Session["Lastname"];
                lblGen.Text = "She";
                Session["StudentName"] = lblStudentName.Text;
                Session["Gen"] = lblGen.Text;
            }
        }
        con.Close();
        if (per >= 70)
        {
            lblGrade.Text = "satisfactorily completed the test with Distinction Grade.";
            lblWel.Text = "CONGRATULATIONS";
            Session["Grade"] = lblGrade.Text;
            Session["Wel"] = lblWel.Text;
        }
        else if (per >= 60 && per < 70)
        {
            lblGrade.Text = "satisfactorily completed the test with First Class Grade.";
            lblWel.Text = "CONGRATULATIONS";
            Session["Grade"] = lblGrade.Text;
            Session["Wel"] = lblWel.Text;
        }
        else if (per >= 45 && per < 60)
        {
            lblGrade.Text = "satisfactorily completed the test with Second Class Grade.";
            lblWel.Text = "CONGRATULATIONS";
            Session["Grade"] = lblGrade.Text;
            Session["Wel"] = lblWel.Text;
        }
        else if (per >= 35 && per < 45)
        {
            lblGrade.Text = "satisfactorily completed the test with Pass Class Grade.";
            lblWel.Text = "CONGRATULATIONS";
            Session["Grade"] = lblGrade.Text;
            Session["Wel"] = lblWel.Text;
        }
        else
        {
            lblGrade.Text = "Failed in the test.";
            lblWel.Text = "SORRY";
            Session["Grade"] = lblGrade.Text;
            Session["Wel"] = lblWel.Text;
        }
    }

    protected void print_Click(object sender, EventArgs e)
    {
        string url = "../afterlogin/ReportPrint.aspx";
        Response.Write("<script>");
        Response.Write("window.open('" + url + "','_blank')");
        Response.Write("</script>");
    }
}