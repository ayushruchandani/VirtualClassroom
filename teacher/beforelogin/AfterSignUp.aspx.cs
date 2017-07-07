using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class teacher_beforelogin_AfterSignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void goHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("../../Home.aspx");
    }
}