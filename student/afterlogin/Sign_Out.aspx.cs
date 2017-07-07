using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
public partial class student_afterlogin_Sign_Out : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        System.Web.Security.FormsAuthentication.SignOut();
        Session.Clear();
        Session.Abandon();
        Response.Redirect("~/Home.aspx");
        
        
    }

    

}