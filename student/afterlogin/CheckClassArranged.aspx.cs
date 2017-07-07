using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

public partial class student_afterlogin_CheckClassArranged : System.Web.UI.Page
{
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);
    SqlCommand cmd;
    string class_date,stime,etime, student_id;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["student_id"] != null)
        {
            checkDate();
        }
        else 
        {
            Response.Redirect("../../Home.aspx");
        }
    }



    protected void checkDate()
    {
        //lbl.Text=Session["Course"].ToString();
        String strSel = "Select ClassDate,ClassSTime,ClassETime from ClassApproved Where Course='" + Session["Course"].ToString() + "'";
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        SqlCommand cmdSel = new SqlCommand(strSel, con);
        SqlDataReader dr1 = cmdSel.ExecuteReader();
        while (dr1.Read())
        {
            class_date = dr1["ClassDate"].ToString();
            stime = dr1["ClassSTime"].ToString();
            etime = dr1["ClassETime"].ToString();
        }


        string current_date = DateTime.Now.ToString("dd/MM/yyyy");
        class_date = Convert.ToDateTime(class_date).ToString("dd/MM/yyyy");

        DateTime t1 = Convert.ToDateTime(DateTime.Now);
        DateTime t2 = Convert.ToDateTime(stime);
        DateTime t3 = Convert.ToDateTime(etime);
        //lbl.Text = ending_date;

        if ((Convert.ToDateTime(current_date)) == (Convert.ToDateTime(class_date)))
        {

            if ((t1.TimeOfDay.Ticks >= t2.TimeOfDay.Ticks) && (t1.TimeOfDay.Ticks <= t3.TimeOfDay.Ticks))
            {
                Response.Redirect("~/student/afterlogin/Gotovirtualclass.aspx");
            }
            else
            {
                Response.Redirect("~/student/afterlogin/Noclasserror.aspx");
            }
        }
        else
        {
            
            Response.Redirect("~/student/afterlogin/Noclasserror.aspx");
        }

    }

}