﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_afterlogin_ViewRegisteredClass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == ("Show_details"))
        {
            Session["ClassId"] = (e.CommandArgument).ToString();
            Response.Redirect("../afterlogin/ApprovedClass_Specification.aspx");
        }
    }
}