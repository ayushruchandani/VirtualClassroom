using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

public partial class teacher_afterlogin_AddQuestions : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["VirtualClassroomConnectionString1"].ConnectionString);
    SqlCommand sqlCmd;
    SqlDataReader dr;
    int marks;
    static int no_question = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
       
        con.Open();
        string sel = "select TestId,Marks from Test where TestName='" + Session["TestName"].ToString() + "'";
        SqlCommand cmdSel = new SqlCommand(sel, con);
        dr = cmdSel.ExecuteReader();
        if (dr.Read() == false)
        {
            lblErrMsg.Text = "Nabsci";
        }
        else
        {
            Session["testId"] = dr["TestId"].ToString();
            marks = Convert.ToInt32(dr["Marks"]);
           
            //lblErrMsg.Text = marks.ToString();
            
        }
        con.Close();
    }
    
    
    protected void answer_TextChanged(object sender, EventArgs e)
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






    protected void addQ_Click(object sender, EventArgs e)
    {

        if (no_question < (marks))
        {
            string op1 = option1.Text;
            string op2 = option2.Text;
            string op3 = option3.Text;
            string op4 = option4.Text;
            string ans = answer.Text;

            if (!ans.Equals(op1) && !ans.Equals(op2) && !ans.Equals(op3) && !ans.Equals(op4))
            {
                SetFocus(answer);
                lblErrMsg.Text = "The answer must match with the given four options";
                string display = "Answer must match with one of the given four options!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
            }
            else
            {



                OpenConnection();
                sqlCmd.CommandText = "insertTestQuestion";
                SqlParameter[] cmdParmIns = {new SqlParameter("@TestId",Session["testId"].ToString()),
                                            new SqlParameter("@TestName",Session["TestName"].ToString()),
                                        new SqlParameter("@TeacherId",Session["course_teacherid"].ToString()),
                                        new SqlParameter("@Course",Session["Course"].ToString()),
                                        new SqlParameter("@QuestionNo",qNo.Text),
                                        new SqlParameter("@Question",question.Text),
                                        new SqlParameter("@Option1",option1.Text),
                                        new SqlParameter("@Option2",option2.Text),
                                        new SqlParameter("@Option3",option3.Text),
                                        new SqlParameter("@Option4",option4.Text),
                                        new SqlParameter("@Answer",answer.Text)};


                foreach (SqlParameter parm in cmdParmIns)
                {
                    sqlCmd.Parameters.Add(parm);

                }

                sqlCmd.ExecuteNonQuery();
                con.Close();
                no_question++;
                if (no_question < (marks))
                {
                    Response.Redirect("../afterlogin/AddQuestions.aspx");
                }
                

            }

        }
        else 
        {
                        Response.Redirect("../afterlogin/Teacherhome.aspx");
        }
       
    }
}