using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Threading;


public partial class student_afterlogin_Test : System.Web.UI.Page
{
    ArrayList que = new ArrayList();
    ArrayList op1 = new ArrayList();
    ArrayList op2 = new ArrayList();
    ArrayList op3 = new ArrayList();
    ArrayList op4 = new ArrayList();
    ArrayList ans = new ArrayList();
    int i = 0, j = 0, k = 0, l = 0, m = 0, n = 0;
    static int question_counter = 0, marks = 0;
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);
    SqlConnection con1 = new SqlConnection(strCon);
    SqlCommand cmd;
    string[] questions;
    string[] option1;
    string[] option2;
    string[] option3;
    string[] option4;
    string[] answers;
    static bool loaded_already = false;
    Boolean isGiven = false;
    




    protected void Page_Load(object sender, EventArgs e)
    {
         
                if (Session["test_id"] != null)
                {
                    checkIsGiven();
                    Load_QuestionsToArray();

                }
                lblTestName.Text =" Test Name: " + Session["TestName"].ToString();
                
    }

    protected void checkIsGiven()
    {
        String strSel2 = "Select isGiven from CheckTestGiven Where StudentId='" + Session["student_id"].ToString() + "' AND TestId='" + Session["test_id"] + "'";
        if (con1.State != ConnectionState.Open)
        {
            con1.Open();
        }
        SqlCommand cmdSel1 = new SqlCommand(strSel2, con1);
        SqlDataReader dr1 = cmdSel1.ExecuteReader();
        while (dr1.Read())
        {
            if (dr1["isGiven"].ToString().Equals("True"))
            {
                con1.Close();
                Response.Redirect("../afterlogin/TestGiven.aspx");
            }
        }
    }



    public void Load_QuestionsToArray()
    {


        string testid = Session["test_id"].ToString();
        String strSel1 = "Select * from TestQuestion Where TestId='" + testid + "'";
        
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            SqlCommand cmdsel2 = new SqlCommand(strSel1, con);
            SqlDataReader dr = cmdsel2.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {

                    que.Add(dr["Question"].ToString());
                    op1.Add(dr["Option1"].ToString());
                    op2.Add(dr["Option2"].ToString());
                    op3.Add(dr["Option3"].ToString());
                    op4.Add(dr["Option4"].ToString());
                    ans.Add(dr["Answer"].ToString());
                }
            }



            questions = new string[que.Count];
            option1 = new string[op1.Count];
            option2 = new string[op2.Count];
            option3 = new string[op3.Count];
            option4 = new string[op4.Count];
            answers = new string[ans.Count];

            foreach (string qus in que)
            {

                questions[i] = qus;
                i++;

            }
            i = 0;
            foreach (string opt1 in op1)
            {

                option1[j] = opt1;
                j++;

            }
            j = 0;
            foreach (string opt2 in op2)
            {

                option2[k] = opt2;
                k++;

            }
            k = 0;
            foreach (string opt3 in op3)
            {

                option3[l] = opt3;
                l++;

            }
            l = 0;
            foreach (string opt4 in op4)
            {

                option4[n] = opt4;
                n++;

            }
            n = 0;

            foreach (string an in ans)
            {

                answers[m] = an;
                m++;

            }
            m = 0;
            int question = question_counter + 1;
            int total = questions.Length;
            con.Close();
            lblNumber.Text = "Current Question : " + question.ToString() + "/" + total.ToString();
            lblMarks.Text = "Current Score : " + marks.ToString() + "/" + total.ToString();
            //lblQuestion.Text = "Loaded successfully..";

            if (question_counter < questions.Length)
            {

                show_questions();
            }
            else
            {
                //lblQuestion.Text = "Test over..";
                //Session["test_id"] = null;

                CheckTestGiven();

                //question_counter = 0;
                //Response.Redirect("../afterlogin/Afterstudenthome.aspx");
            }
        }
        
            
     



    public void show_questions()
    {
        
        lblQuestion.Text=questions[question_counter];
        options.Items.Add(option1[question_counter]);
        options.Items.Add(option2[question_counter]);
        options.Items.Add(option3[question_counter]);
        options.Items.Add(option4[question_counter]);
        
        
    }



    protected void submit_answer_Click(object sender, EventArgs e)
    {
       try
       {
                        //options.Enabled = true;
                
                        if (options.SelectedValue == (answers[question_counter]))
                           {
                                marks++;
                                
                           }

                        question_counter++;

                        Response.Redirect("../afterlogin/Test.aspx");
                        
        
                
       }
       catch (Exception exx)
       {

       }
  
    }


    protected void CheckTestGiven()
    {
        isGiven = true;
        OpenConnection();
        cmd.CommandText = "insertCheckTestGiven";
        SqlParameter[] cmdParmIns = {new SqlParameter("@StudentId",Session["student_id"].ToString()),
                                      new SqlParameter("@TestId",Session["test_id"].ToString()),
                                            new SqlParameter("@TestName",Session["TestName"].ToString()),
                                            new SqlParameter("@isGiven",isGiven.ToString()),
                                            new SqlParameter("@Score",marks)};

        foreach (SqlParameter parm in cmdParmIns)
        {
            cmd.Parameters.Add(parm);

        }

        cmd.ExecuteNonQuery();
        con.Close();


        marks = 0;
        question_counter = 0;
        Response.Redirect("../afterlogin/TestGiven.aspx");

                                        

    }

    void OpenConnection()
    {
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
    }


    //protected void disableRadio()
    //{
    //    question_counter++;
    //}
}