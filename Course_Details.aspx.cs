using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Course_Details : System.Web.UI.Page
{
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    string fname, lname,pic_url,tcrpic_url;
    SqlConnection con = new SqlConnection(strCon);
    protected void Page_Load(object sender, EventArgs e)
    {
        string teacherid = Session["course_teacherid"].ToString();
        String strSel = "Select * from Teachermaster where TeacherId='" + teacherid + "'";
        SqlCommand cmdSel = new SqlCommand(strSel, con);

        SqlDataReader dr;




        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        dr = cmdSel.ExecuteReader();

        while (dr.Read())
        {
            pic_url=dr[23].ToString();
            tcrpic_url=dr[17].ToString();
            Couse_name.Text=dr[18].ToString();
            Course_field.Text=dr[12].ToString();
            Course_sdate.Text=dr[19].ToString();
            Course_edate.Text=dr[20].ToString();
            Course_desc.Text=dr[21].ToString();
            fname=dr[1].ToString();
            lname=dr[2].ToString();
            Teacher_field.Text=dr[12].ToString();
            Teacher_uni.Text=dr[13].ToString();
            Teacher_mail.Text=dr[5].ToString();
        }
        Teacher_name.Text = fname + " " + lname;
        pic_url = "~/images/" + pic_url;
        coverpic.ImageUrl = pic_url;
        tcrpic_url = "~/images/" + tcrpic_url;
        tcrpic.ImageUrl = tcrpic_url;
    }
}