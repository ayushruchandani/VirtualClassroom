using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class student_TestConfirmation : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["VirtualClassroomConnectionString1"].ConnectionString);
    SqlCommand sqlCmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        testid.Text = Session["test_id"].ToString();
        string q = "select Marks,Times,TestName from Test where TestId='" + Session["test_id"] + "'";
        con.Open();
        SqlCommand cmd = new SqlCommand(q, con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            lblQues.Text = dr["Marks"].ToString();
            lblTime.Text = dr["Times"].ToString();
            Session["TestName"] = dr["TestName"].ToString();
            Session["Times"] = dr["Times"].ToString();
            con.Close();
        }
        else
        {
            lblQues.Text = "empty";
        }
        
    }

    protected void start_test_Click(object sender, EventArgs e)
    {
        string url = "../afterlogin/Test.aspx";
        Response.Write("<script>");
        Response.Write("window.open('" + url + "','_blank')");
        Response.Write("</script>");

        //Response.Redirect("../afterlogin/Test.aspx");
    }

    protected void cancel_test_Click(object sender, EventArgs e)
    {
        Response.Redirect("../afterlogin/ViewTest.aspx");
    }
}