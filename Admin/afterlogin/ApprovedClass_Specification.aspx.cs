using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;

public partial class Admin_afterlogin_ApprovedClass_Specification : System.Web.UI.Page
{
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);
    string tId;
    protected void Page_Load(object sender, EventArgs e)
    {
        string classId = Session["ClassId"].ToString();
        try
        {
            //lblerrmsg.Text = classId;
            String strSel = "Select * from ClassApproved where ClassId='" + classId + "'";
            SqlCommand cmdSel = new SqlCommand(strSel, con);
            SqlDataReader dr;
            string starting_time = null, ending_time = null,class_date=null;
            

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
                //clsdate.Text = dr["ClassDate"].ToString();
                class_date = dr["ClassDate"].ToString();
                clsst.Text = dr["ClassSTime"].ToString();
                clset.Text = dr["ClassETime"].ToString();
                starting_time = dr["ClassSTime"].ToString();
                ending_time = dr["ClassETime"].ToString();
            }

            TimeSpan duration = DateTime.Parse(ending_time).Subtract(DateTime.Parse(starting_time));
            clsdur.Text = duration.ToString(@"hh\:mm");
            string current_date = DateTime.Now.ToString("dd/MM/yyyy");
            class_date = Convert.ToDateTime(class_date).ToString("dd/MM/yyyy");
            clsdate.Text = class_date;
            if ((Convert.ToDateTime(current_date)) > (Convert.ToDateTime(class_date)))
            {
                Cls_status.Text = "Completed";
            }
            else
            {
                Cls_status.Text = "Not Completed";
            }
            con.Close();

        }
        catch (Exception exp)
        {
            lblerrmsg.Text = exp.Message;
        }
    }
    protected void remove_class_Click(object sender, EventArgs e)
    {
        string classId = Session["ClassId"].ToString();
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }


        string strDel = "DELETE FROM ClassApproved WHERE ClassId='" + classId + "'";
        SqlCommand cmdDel = new SqlCommand(strDel, con);
        cmdDel.ExecuteNonQuery();
        con.Close();
        Response.Redirect("../afterlogin/ViewRegisteredClass.aspx");
    }
    protected void back_button_Click(object sender, EventArgs e)
    {
        Response.Redirect("../afterlogin/ViewRegisteredClass.aspx");
    }
}