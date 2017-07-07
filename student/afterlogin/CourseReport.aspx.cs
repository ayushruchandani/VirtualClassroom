using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
public partial class student_afterlogin_CourseReport : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["VirtualClassroomConnectionString1"].ConnectionString);
    SqlCommand sqlCmd;
    SqlDataReader dr;
    string studentpic_path = null;

    double per;
 

    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime now = DateTime.Now;
        lblStudentName.Text = Session["Firstname"].ToString() + " " + Session["Lastname"].ToString();
        lblCourseName.Text = Session["Course"].ToString();
        string course = Session["Course"].ToString();
        lblDate.Text = now.ToShortDateString();
        DataSet ds = new DataSet();
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT CheckTestGiven.Score, Test.TestId,Test.TestName,Test.Course,Test.Marks  FROM    CheckTestGiven  INNER JOIN Test  ON CheckTestGiven.TestId = Test.TestId where CheckTestGiven.StudentId='" + Session["student_id"] + "' AND Test.Course='" + course + "' ";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(ds);
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
            cmd.Dispose();
            con.Close();


            string sel1 = "SELECT * FROM Studentmaster WHERE StudentId='" + Session["student_id"] + "'";
            if (con.State != ConnectionState.Open)
             {
                con.Open();
            }
            sqlCmd = new SqlCommand(sel1, con);
            dr = sqlCmd.ExecuteReader();
            while (dr.Read())
            {
                studentpic_path = dr["filename"].ToString();
                //Session["path1"] = studentpic_path;
                studentpic_path = "~/images/" + studentpic_path;
                studentImage.ImageUrl = studentpic_path;
            }

            con.Close();


            string strSelect = "SELECT CheckTestGiven.Score,Test.Marks  FROM    CheckTestGiven  INNER JOIN Test  ON CheckTestGiven.TestId = Test.TestId where CheckTestGiven.StudentId='" + Session["student_id"] + "' AND Test.Course='" + course + "' ";
            SqlCommand cmdSel = new SqlCommand(strSelect, con);
        
            ArrayList obtained_marks = new ArrayList();
            ArrayList total_marks = new ArrayList();
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            dr = cmdSel.ExecuteReader();

            while (dr.Read())
            {
                obtained_marks.Add(dr["Score"].ToString());
                total_marks.Add(dr["Marks"].ToString());
            }

            int i = 0, sum = 0;
            int j = 0, summ = 0;
            string[] marks = new string[obtained_marks.Count];
            string[] tmarks = new string[total_marks.Count];
            foreach (string mark in obtained_marks)
            {

                marks[i] = mark;
                sum = sum + Convert.ToInt16( marks[i]);
                i++;

            }

            foreach (string tmark in total_marks)
            {

                tmarks[j] = tmark;
                summ = summ + Convert.ToInt16(tmarks[j]);
                j++;

            }
            lbltScore.Text = sum.ToString();
            lbltMarks.Text = summ.ToString();

            per = (double)((sum * 100) / summ);
            lblper.Text = per.ToString() + "%";

            if (per >= 70)
            {
                lblText.Text="successfully completed the course";
                lblWel.Text = "CONGRATULATIONS";
                lblAGrade.Text = "Distinction";
                lblACourse.Text = course;
            
            }
            else if (per >= 60 && per < 70)
            {
                lblText.Text="successfully completed the course";
                lblAGrade.Text = "First Class";
                lblWel.Text = "CONGRATULATIONS";
                lblACourse.Text = course;

            }
        else if (per >= 45 && per < 60)
        {
            lblText.Text="successfully completed the course";
            lblAGrade.Text = "Second Class";
            lblWel.Text = "CONGRATULATIONS";
            lblACourse.Text = course;
        }
        else if (per >= 35 && per < 45)
        {
            lblText.Text="successfully completed the course";
            lblAGrade.Text = "Pass Class";
            lblWel.Text = "CONGRATULATIONS";
            lblACourse.Text = course;
        }
        else
        {
            lblText.Text = "not completed this course succesfully";
            lblAGrade.Text = "Fail";
            lblWel.Text = "SORRY";
            lblACourse.Text = course;
        }
    }


   
    //protected void Repeater1_OnItemDataBound(object sender, RepeaterItemEventArgs  e)
    //{
    //    //foreach (RepeaterItem ri in Repeater1.Items)
    //    //{
    //    //    Label marks = (Label)ri.FindControl("lblMarks");
    //    //    Label score = (Label)ri.FindControl("lblScore");

    //    //    m = Convert.ToInt32(marks.Text);
    //    //    s = Convert.ToInt32(score.Text);

    //    //    sums = sums + s;
    //    //    summ = summ + m;
    //    //}
    //    //lbltScore.Text = sums.ToString();

    //    //    lbltScore = marks;

    //    if (e.Item.ItemType == ListItemType.Item)
    //    {
    //        Label lbl = (Label)e.Item.FindControl("lblScore");
    
    //        //LinkButton link = (LinkButton)e.Item.FindControl("LinkButton1");
    //        //link.PostBackUrl = "abcd/" + lbl.Text;

    //        lbltScore = lbl;
    //    }

    //    //if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
    //    //{
    //    //    //lbltScore = ((Label)ri.FindControl("lblMarks")).ToString();

    //    //    var marks = e.FindControl("lblMarks") as Label;
            
    //    //    lbltScore = marks;
    //        //foreach (Control c in e.Item.Controls)
    //        //{
    //        //    if (c is Label)
    //        //    {
    //        //         //Grab label
    //        //        Label lbl = c as Label;
    //        //        String your_value = lbltScore.Text;
    //        //        lbltScore.Text = your_value;
    //        //    }
    //        //}
    //    //}


    //    //    //Label quantityLabel = (Label)ri.FindControl("lblQuantity");
    //    //    //Label partNumberLabel = (Label)ri.FindControl("lblPartNumber");

    //    //    //string quantityText = quantityLabel.Text;
    //    //    //string partNumberText = partNumberLabel.Text;
    //    //}

        
    //    //lbltMarks.Text = summ.ToString();
    //}
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}