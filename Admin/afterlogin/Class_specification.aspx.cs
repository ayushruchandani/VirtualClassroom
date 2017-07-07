using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
public partial class Admin_afterlogin_Class_specification : System.Web.UI.Page
{
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);
    string tId = null,crs=null,topic=null,desc=null,date=null,stime=null,etime=null,dur=null;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        string classId = Session["ClassId"].ToString();
       try 
       {
           //lblerrmsg.Text = classId;
           String strSel = "Select * from VirtualClassRequest where ClassId='" + classId + "'";
           SqlCommand cmdSel = new SqlCommand(strSel, con);
           SqlDataReader dr;
           string starting_time=null, ending_time=null;
           //string name, fname, lname;
           //fname = Session["Firstname"].ToString();
           //lname = Session["Lastname"].ToString();
           //name = fname + " " + lname;


           if (con.State != ConnectionState.Open)
           {
               con.Open();
           }
           dr = cmdSel.ExecuteReader();

           while (dr.Read())
           {
               Cls_Id.Text = classId;
               Teach_Id.Text = dr["TeacherId"].ToString();
               tId = dr["TeacherId"].ToString();
               //Teach_Name.Text = name;
               course.Text = dr["Course"].ToString();
               clstopic_name.Text = dr["Topic"].ToString();
               clsdesc.Text = dr["Description"].ToString();
               clsdate.Text = dr["ClassDate"].ToString();
               clsst.Text = dr["ClassSTime"].ToString();
               clset.Text = dr["ClassETime"].ToString();
               starting_time = dr["ClassSTime"].ToString();
               ending_time = dr["ClassETime"].ToString();
           }

           TimeSpan duration = DateTime.Parse(ending_time).Subtract(DateTime.Parse(starting_time));

           clsdur.Text = duration.ToString(@"hh\:mm");

           con.Close();

       }
       catch(Exception exp)
       {
           lblerrmsg.Text = exp.Message;
       }
    }



    protected void accept_class_request_Click(object sender, EventArgs e)
    {
        try 
        {
            fetch_data();
            insert_data();
            teacher_acknowledgement();
            student_acknowledgement();
            remove_data();
            Response.Redirect("../afterlogin/ClassRequests.aspx");
        }
        catch(Exception exp1)
        {
            lblerrmsg.Text = exp1.Message;
        }
    }

    protected void fetch_data()
    {
        string classId = Session["ClassId"].ToString();
        String strSel = "Select * from VirtualClassRequest where ClassId='" + classId + "'";
        SqlCommand cmdSel = new SqlCommand(strSel, con);
        SqlDataReader dr;
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        dr = cmdSel.ExecuteReader();
        while (dr.Read())
        {
            
            tId = dr["TeacherId"].ToString();
            crs = dr["Course"].ToString();
            topic = dr["Topic"].ToString();
            desc = dr["Description"].ToString();
            date = dr["ClassDate"].ToString();
            stime = dr["ClassSTime"].ToString();
            etime = dr["ClassETime"].ToString();
            
        }
        con.Close();
          
    }

    protected void insert_data()
    {
        String strIns = "Insert into ClassApproved (TeacherId,Course,Topic,Description,ClassDate,ClassSTime,ClassETime) values ('" + tId + "','" + crs + "','" + topic + "','" + desc + "','" + date + "','" + stime + "','" + etime + "')";
        SqlCommand cmdIns = new SqlCommand(strIns, con);
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        cmdIns.ExecuteNonQuery();
        con.Close();

    }


    protected void teacher_acknowledgement()
    {

        string strSelect = "SELECT EmailId FROM Teachermaster WHERE TeacherId ='" + tId + "'";
        string emailId = null;
        SqlCommand cmdSel = new SqlCommand(strSelect, con);
        SqlDataReader dr;
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        dr = cmdSel.ExecuteReader();

        while (dr.Read())
        {
            emailId = dr["EmailId"].ToString();
        }
       
        EmailRelay f = new EmailRelay("smtp.gmail.com", "virtualproject.gtu@gmail.com", "virtualclassroom123");
        string msg = "Congratulaions..!!Your request for virtual class has been approved..on Date:-"+date+" between "+"Class Starting Time:-"+stime+" to "+"Class Ending Time:-"+etime+" ."+" "+"Set IP_ADDRESS:192.168.1.101 and PORT_NUMBER:8080 for video broadcasting.";
        if (f.SendMail("virtualproject.gtu@gmail.com", emailId, "Virtual Classroom", msg, "Virtual Class Request Approved", true) == true)
        {
            //lblMessage.Text = "Password has been sent to your registered E-mail ID..!! ";

        }
        else
        {
            //lblMessage.Text = "Not send..please try again";

        }
        con.Close();
    }


    protected void student_acknowledgement()
    {
        string strSelect = "SELECT EmailId FROM Studentmaster WHERE Course ='" + crs + "'";
        SqlCommand cmdSel = new SqlCommand(strSelect, con);
        SqlDataReader dr;
        ArrayList list_email = new ArrayList();
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        dr = cmdSel.ExecuteReader();

        while (dr.Read())
        {
            list_email.Add(dr["EmailId"].ToString());
        }
       
        int i = 0;
        string[] emailIds = new string[list_email.Count];

        foreach (string mailId in list_email)
        {

            emailIds[i] = mailId;
            i++;

        }


        for (i = 0; i < emailIds.Length; i++)
        {
            EmailRelay f = new EmailRelay("smtp.gmail.com", "virtualproject.gtu@gmail.com", "virtualclassroom123");
            string msg = "Your class of "+crs +" "+"has been arranged on " + date + " between " + "Class Starting Time:-" + stime + " to " + "Class Ending Time:-" + etime;
            if (f.SendMail("virtualproject.gtu@gmail.com", emailIds[i], "Virtual Classroom", msg, "Virtual Class Schedule", true) == true)
            {
                //lblMessage.Text = "Password has been sent to your registered E-mail ID..!! ";

            }
            else
            {
                //lblMessage.Text = "Not send..please try again";

            }
        }


        con.Close();

    }


    protected void remove_data()
    {
        string classId = Session["ClassId"].ToString();
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }


        string strDel = "DELETE FROM VirtualClassRequest WHERE ClassId='" + classId + "'";
        SqlCommand cmdDel = new SqlCommand(strDel, con);
        cmdDel.ExecuteNonQuery();
        con.Close();
    }


    protected void request_denied_Click(object sender, EventArgs e)
    {
        try
        {
            string classId = Session["ClassId"].ToString();
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }


            string strDel = "DELETE FROM VirtualClassRequest WHERE ClassId='" + classId + "'";
            SqlCommand cmdDel = new SqlCommand(strDel, con);
            cmdDel.ExecuteNonQuery();
            con.Close();
            
            
            
            string strSelect = "SELECT EmailId FROM Teachermaster WHERE TeacherId ='" + tId + "'";
            string emailId = null;
            SqlCommand cmdSel = new SqlCommand(strSelect, con);
            SqlDataReader dr;
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            dr = cmdSel.ExecuteReader();

            while (dr.Read())
            {
                emailId=dr["EmailId"].ToString();
            }
            con.Close();
          
            
            
            
            EmailRelay f = new EmailRelay("smtp.gmail.com", "virtualproject.gtu@gmail.com", "virtualclassroom123");
            string msg="Sorry..!! We are unable to arrange class on time and date specified by you..!! Please take another slot for virtual class..!!";
            if (f.SendMail("virtualproject.gtu@gmail.com", emailId, "Virtual Classroom",msg , "Virtual Class Request Disapproved", true) == true)
            {
                //lblMessage.Text = "Password has been sent to your registered E-mail ID..!! ";

            }
            else
            {
                //lblMessage.Text = "Not send..please try again";

            }
            Response.Redirect("../afterlogin/ClassRequests.aspx");

        }
        catch (Exception exp2)
        {
            lblerrmsg.Text = exp2.Message;
        }
    }
}