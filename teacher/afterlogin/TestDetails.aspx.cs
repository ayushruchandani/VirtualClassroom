using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class teacher_afterlogin_TestDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["VirtualClassroomConnectionString1"].ConnectionString);
    SqlCommand sqlCmd;
    SqlDataReader dr;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    
    }


    void OpenConnection()
    {
        sqlCmd = new SqlCommand();
        sqlCmd.Connection = con;
        sqlCmd.CommandType = CommandType.StoredProcedure;
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }

    }


    protected void btnSubmitTestDetails_Click(object sender, EventArgs e)
    {
        //string name = testName.Text;
        con.Open();
        string sel = "select TestId from Test where TestName='" + testName.Text + "'";
        SqlCommand cmdSel = new SqlCommand(sel, con);
        dr = cmdSel.ExecuteReader();

        if (dr.Read() == false)
        {
            con.Close();
            OpenConnection();
            sqlCmd.CommandText = "insertTestDetails";
            SqlParameter[] cmdParmIns = {new SqlParameter("@Course",Session["Course"].ToString()),
                                        new SqlParameter("@teacherId",Session["course_teacherid"].ToString()),
                                        new SqlParameter("@marks",marks.Text),
                                        new SqlParameter("@time",time.Text),
                                        new SqlParameter("@TestName",testName.Text)};


            foreach (SqlParameter parm in cmdParmIns)
            {
                sqlCmd.Parameters.Add(parm);

            }

            sqlCmd.ExecuteNonQuery();
            con.Close();

            Session["TestName"] = testName.Text;

            //generateSession();

 

            Response.Redirect("../afterlogin/AddQuestions.aspx");
        }
        else
        {
            lblTTime.Text = "Test Name should be unique. Enter another test name..";
        }
    }


    //void generateSession()
    //{
    //    con.Open();
    //    string sel1 = "select TestId from Test where TestName='" + testName.Text + "'";
    //    SqlCommand cmds = new SqlCommand(sel1, con);
    //    SqlDataReader dr1 = cmds.ExecuteReader();

    //    Session["testId"] = dr1["TestId"].ToString();
    //    con.Close();
    //}


    protected void time_SelectedIndexChanged(object sender, EventArgs e)
    {
        string t = time.SelectedValue.ToString();
        int tm = Convert.ToInt32(t);
        string m = marks.Text;
        int ma = Convert.ToInt32(m);
        int total = tm * ma;
        total = total / 60;
        lblTTime.Text = "Total Minutes for Test Completion = " + total.ToString();
    }
}