using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class student_afterlogin_ViewTest : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["VirtualClassroomConnectionString1"].ConnectionString);
    SqlCommand sqlCmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["student_id"] != null)
        {
            if (!IsPostBack)
            {
                string course = Session["Course"].ToString();
                DataSet ds = new DataSet();
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from Test where Course='" + course + "'";
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
        if (e.CommandName == "Test_Details")
        {
            string test_id = (e.CommandArgument).ToString();
            Session["test_id"] = test_id;
            Response.Redirect("../afterlogin/TestConfirmation.aspx");
        }
    }
}