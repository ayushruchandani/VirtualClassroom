using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class student_afterlogin_TestGiven : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["VirtualClassroomConnectionString1"].ConnectionString);
    SqlCommand sqlCmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        string sel = "Select * from CheckTestGiven Where StudentId='" + Session["student_id"].ToString() + "' AND TestId='" + Session["test_id"] + "'";
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        sqlCmd = new SqlCommand(sel, con);
        dr = sqlCmd.ExecuteReader();
        while (dr.Read())
        {
            lblscore.Text = dr["Score"].ToString();
        }
        con.Close();
    }
    protected void clsWindow_Click(object sender, EventArgs e)
    {
        Response.Redirect("../afterlogin/ViewTest.aspx");
    }
    protected void ViewReport_Click(object sender, EventArgs e)
    {
        Response.Redirect("../afterlogin/ViewReport.aspx");
    }
}