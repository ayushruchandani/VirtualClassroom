using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class student_afterlogin_SendMessage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["VirtualClassroomConnectionString1"].ConnectionString);
    SqlCommand sqlCmd;
    SqlDataReader dr;
    string title;
    string que;
    int teacher;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["student_id"] != null)
        {
            string sel = " Select TeacherId from Teachermaster where Course='" + Session["Course"].ToString() + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(sel, con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                teacher = Convert.ToInt32(dr["TeacherId"]);
            }
            con.Close();
        }
        else
        {
            Response.Redirect("../../Home.aspx");
        }
    }


    protected void sendMessage_Click(object sender, EventArgs e)
    {
        title = qTitle.Text;
        que = query.Text;
        OpenConnection();
        sqlCmd.CommandText = "insertQuery";
        SqlParameter[] cmdParmIns = {new SqlParameter("@StudentId",Session["student_id"].ToString()),
                                            new SqlParameter("@TeacherId",teacher),
                                        new SqlParameter("@Course",Session["Course"].ToString()),
                                        new SqlParameter("@Title",title),
                                        new SqlParameter("@Query",que)};


        foreach (SqlParameter parm in cmdParmIns)
        {
            sqlCmd.Parameters.Add(parm);

        }

        sqlCmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("../afterlogin/Afterstudenthome.aspx");
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
}