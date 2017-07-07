using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
public partial class student_afterlogin_ChangeCourse : System.Web.UI.Page
{

    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);
    SqlCommand cmd;
    string new_course = null;
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            try
            {

                String strSel1 = "Select Course from Teachermaster";
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                SqlCommand cmdSel1 = new SqlCommand(strSel1, con);
                SqlDataReader dr = cmdSel1.ExecuteReader();
                course.DataSource = dr;
                course.DataTextField = "Course";
                course.DataValueField = "";
                course.DataBind();
                con.Close();
                lblupdtMsg.Text = "Your previous course time period has been expired...!! Please change the course by selecting the course from available course..!!";
            }
            catch (Exception exp)
            {
               
            }

        }
    }

   

    protected void btnupdate_Click(object sender, EventArgs e)
    {


       
            new_course = course.SelectedItem.Value;
            //lblupdtMsg.Text = new_course;
            

            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            

            string update = "UPDATE Studentmaster SET Course='" + new_course + "' WHERE StudentId='" + Session["student_id"] + "'";
            cmd = new SqlCommand(update, con);
            
            cmd.ExecuteNonQuery();
            lblupdtMsg.Text = "Your course has been updated successfully...!! Please log-in again to see updated course..!!";
            con.Close();
            
        

    }
}