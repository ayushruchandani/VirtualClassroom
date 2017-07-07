using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class teacher_afterlogin_Teacherhome : System.Web.UI.Page
{
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["course_teacherid"] != null)
        {

            string  cover_path = null, teacherpic_path = null,  cedate = null;
            string query = "SELECT * FROM Teachermaster WHERE Course='" + Session["Course"] + "'";
            cmd = new SqlCommand(query, con);
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
                
            }
            con.Close();
            cover_path = "~/images/" + cover_path;
            teacherpic_path = "~/images/" + teacherpic_path;
            crspp.ImageUrl = cover_path;
            teach_pp.ImageUrl = teacherpic_path;
            string current_date = DateTime.Now.ToString("dd/MM/yyyy");
            DateTime dt1 = Convert.ToDateTime(current_date);
            DateTime dt2 = Convert.ToDateTime(cedate);
            double rdays = (dt2 - dt1).TotalDays;
            remdays.Text = (dt2 - dt1).TotalDays.ToString() + " " + "Days";
            if (rdays <= 0)
            {
                Response.Redirect("../afterlogin/ChangeCourse.aspx");
            }
        }
        else 
        {
            Response.Redirect("../../Home.aspx");
        }
          
        
    }
}