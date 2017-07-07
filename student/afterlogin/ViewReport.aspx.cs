using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class student_afterlogin_Report : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["VirtualClassroomConnectionString1"].ConnectionString);
    SqlCommand sqlCmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int student_id = Convert.ToInt32(Session["student_id"].ToString());
            string course = Session["Course"].ToString();
            DataSet ds = new DataSet();
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT CheckTestGiven.Score, Test.TestId,Test.TestName,Test.Course,Test.Marks  FROM    CheckTestGiven  INNER JOIN Test  ON CheckTestGiven.TestId = Test.TestId where CheckTestGiven.StudentId='" + Session["student_id"] + "'AND Test.Course='" + course + "' ";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(ds);
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
            cmd.Dispose();
            con.Close();
        }
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == ("View_Reports"))
        {
            string testid = (e.CommandArgument).ToString();
            Session["ReportTestId"] = testid;
            Response.Redirect("../afterlogin/Report.aspx");
        }
    }
}