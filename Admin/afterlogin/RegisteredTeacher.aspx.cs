using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_afterlogin_RegisteredTeacher : System.Web.UI.Page
{
    string teacherId;
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Remove_details")
        {
            Session["course_teacherid"] = (e.CommandArgument).ToString();
            teacherId = Session["course_teacherid"].ToString();
            string strDel = "DELETE FROM Teachermaster WHERE TeacherId='" + teacherId + "'";

            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }

            try
            {
                SqlCommand cmdDel = new SqlCommand(strDel, con);
                cmdDel.ExecuteNonQuery();

                Response.Redirect("../afterlogin/RegisteredTeacher.aspx");
                con.Close();
            }
            catch (Exception exp)
            {
                
            }

        }

        else
        {
            Session["course_teacherid"] = (e.CommandArgument).ToString();
            Response.Redirect("../afterlogin/EditTeacherDetails.aspx");

        }
    }
}