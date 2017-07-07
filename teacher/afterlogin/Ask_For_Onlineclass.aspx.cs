using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class teacher_afterlogin_Ask_For_Onlineclass : System.Web.UI.Page
{
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["course_teacherid"] != null)
        {

        }
        else
        {
            Response.Redirect("../../Home.aspx");
        }

    }
    protected void btnrqst_Click(object sender, EventArgs e)
    {
        try
        {
            string teacherId = Session["course_teacherid"].ToString();
            string course = Session["Course"].ToString();
            String strIns = "Insert into VirtualClassRequest (TeacherId,Course,Topic,Description,ClassDate,ClassSTime,ClassETime) values ('" + teacherId + "','" + course + "','" + clstopic.Text + "','" + CDesc.Text + "','" + clsdate.Text + "','" + clsst.Text + "','" + clset.Text + "')";
            SqlCommand cmdIns = new SqlCommand(strIns, con);
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            cmdIns.ExecuteNonQuery();
            con.Close();

            lblupdtMsg.Text = "Your request has been sent to Admin successfully..!!Check your reply on your registered EmailId..!!";
        }
        catch(Exception exp)
        {
            lblupdtMsg.Text = exp.Message;
        }
    }
}