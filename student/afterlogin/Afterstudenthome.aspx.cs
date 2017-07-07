using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class student_afterlogin_Afterstudenthome : System.Web.UI.Page
{
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);
    SqlCommand cmd,cmd2;
    SqlDataReader dr;
    string starting_date, ending_date, student_id,current_date;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["student_id"] != null)
        {
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


             current_date = DateTime.Now.ToString("dd/MM/yyyy");
            starting_date = Convert.ToDateTime(starting_date).ToString("dd/MM/yyyy");
            ending_date = Convert.ToDateTime(ending_date).ToString("dd/MM/yyyy");

            con.Close();

            if ((Convert.ToDateTime(current_date)) <= (Convert.ToDateTime(ending_date)) && (Convert.ToDateTime(current_date)) >= (Convert.ToDateTime(starting_date)))
            {

                string studentpic_path = null, cover_path = null, teacherpic_path = null, csdate = null, cedate = null;
                string query = "SELECT * FROM Teachermaster WHERE Course='" + Session["Course"] + "'";
                string query2 = "SELECT * FROM Studentmaster WHERE StudentId='" + Session["student_id"] + "'";
                cmd = new SqlCommand(query, con);
                cmd2 = new SqlCommand(query2, con);


                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }

                dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    crsname.Text = dr["Course"].ToString();
                    crssdate.Text = Convert.ToDateTime(dr["CourseSDate"].ToString()).ToString("dd/MM/yyyy");
                    crsedate.Text = Convert.ToDateTime(dr["CourseEDate"].ToString()).ToString("dd/MM/yyyy");
                    cedate = crsedate.Text;
                    lblteacher_id.Text = dr["TeacherId"].ToString();
                    lblname.Text = dr["Firstname"].ToString() + " " + dr["Lastname"].ToString();
                    lblfield.Text = dr["Field"].ToString();
                    lbluni.Text = dr["University_college"].ToString();
                    lblemail.Text = dr["EmailId"].ToString();
                    teacherpic_path = dr["filename"].ToString();
                    cover_path = dr["Cover_filename"].ToString();
                    stucourse.Text = dr["Course"].ToString();
                }
                con.Close();
                cover_path = "~/images/" + cover_path;
                teacherpic_path = "~/images/" + teacherpic_path;
                crspp.ImageUrl = cover_path;
                teach_pp.ImageUrl = teacherpic_path;

                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }

                dr = cmd2.ExecuteReader();

                while (dr.Read())
                {
                    stuname.Text = dr["Firstname"].ToString() + " " + dr["Lastname"].ToString();
                    studentpic_path = dr["filename"].ToString();
                    stufield.Text = dr["Field"].ToString();
                }
                studentpic_path = "~/images/" + studentpic_path;
                pic.ImageUrl = studentpic_path;
                 current_date = DateTime.Now.ToString("dd/MM/yyyy");
                DateTime dt1 = Convert.ToDateTime(current_date);
                DateTime dt2 = Convert.ToDateTime(cedate);
                remdays.Text = (dt2 - dt1).TotalDays.ToString() + " " + "Days";
                con.Close();

            }
            else 
            {
                Response.Redirect("~/student/afterlogin/ChangeCourse.aspx");
            }
        }
        else 
        {
            Response.Redirect("../../Home.aspx");
        }

       

     }


    

  }
