using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;

public partial class student_afterlogin_Gotovirtualclass : System.Web.UI.Page
{
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);
    string ending_time, starting_time;
    protected void Page_Load(object sender, EventArgs e)
    {
        String strSel = "Select * from ClassApproved where Course='" + Session["Course"].ToString() + "'";
        SqlCommand cmdSel = new SqlCommand(strSel, con);
        SqlDataReader dr;
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        dr = cmdSel.ExecuteReader();
        while (dr.Read())
        {
            lbltopic.Text=dr["Topic"].ToString();
            lbldesc.Text=dr["Description"].ToString();
            lblstime.Text = dr["ClassSTime"].ToString();
            starting_time= dr["ClassSTime"].ToString();
            lbletime.Text = dr["ClassETime"].ToString();
            ending_time=dr["ClassETime"].ToString();
        }
        TimeSpan duration = DateTime.Parse(ending_time).Subtract(DateTime.Parse(starting_time));

        lbldur.Text = duration.ToString(@"hh\:mm");

        con.Close();
    }
}