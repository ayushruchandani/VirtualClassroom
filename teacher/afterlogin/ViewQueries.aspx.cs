using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class teacher_afterlogin_ViewQueries : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["VirtualClassroomConnectionString1"].ConnectionString);
    SqlCommand sqlCmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["course_teacherid"] != null)
        {
            if (!IsPostBack)
            {
                int teacher_id = Convert.ToInt32(Session["course_teacherid"].ToString());
                string course = Session["Course"].ToString();
                DataSet ds = new DataSet();
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from Query where Course='" + course + "'";
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);
                Repeater1.DataSource = ds;
                Repeater1.DataBind();
                cmd.Dispose();
                con.Close();
            }
        }
        else 
        {
            Response.Redirect("../../Home.aspx");
        }
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "View_Query")
        {
            string queryid=(e.CommandArgument).ToString();
            Session["QueryId"] = queryid;
            Response.Redirect("../afterlogin/Reply.aspx");
        }
    }
}