using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class teacher_afterlogin_Reply : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["VirtualClassroomConnectionString1"].ConnectionString);
    SqlCommand sqlCmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["course_teacherid"] != null)
        {
            string sel = "Select * from Query where QueryId='" + Session["QueryId"] + "'";
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            sqlCmd = new SqlCommand(sel, con);
            dr = sqlCmd.ExecuteReader();

            while (dr.Read())
            {
                lblStudentId.Text = dr["StudentId"].ToString();
                lblTeacherId.Text = dr["TeacherId"].ToString();
                lblQuery.Text = dr["Query"].ToString();
            }
            con.Close();
        }
        else 
        {
            Response.Redirect("../../Home.aspx");
        }
    }
    protected void reply_Click(object sender, EventArgs e)
    {
        string reply = query.Text;
        string ins = "Update Query SET Reply1='" + reply + "'";
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        sqlCmd = new SqlCommand(ins, con);
        sqlCmd.ExecuteNonQuery();
        con.Close();

    }
}