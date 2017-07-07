using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class teacher_afterlogin_Generate_Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["course_teacherid"] != null)
        {

        }
        else 
        {
            Response.Redirect("../../Home.aspx");
        }
    }
    protected void gntTest_Click(object sender, EventArgs e)
    {
        Response.Redirect("../afterlogin/TestDetails.aspx");
    }
}