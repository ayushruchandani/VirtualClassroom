<%@ Application Language="C#" %>

<script runat="server">
    
    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        int c = 0;

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started
        Session["admin_id"] = null;
        Session["student_id"] = null;
        Session["Firstname"] = null;
        Session["Lastname"] = null;
        Session["EmailId"]=null;
        Session["Profilepic"]=null;
        Session["filename"] = null;
        Session["admin"] = null;
        Session["uname"] = null;
        Session["Course"] = null;
        Session["content_id"]=null;
        Session["course_teacherid"]=null;
        Session["test_id"] = null;
        Session["TestName"] = null;
        Session["QueryId"] = null;
        Session["ClassId"]=null;
        Session["Times"] = null;
        
        
        Session["ReportTestId"] = null;
        Session["Test"] = null;
        Session["Date"] = null;
        Session["StudentName"] = null;
        Session["path1"] = null;
        Session["Score"] = null;
        Session["Marks"] = null;
        Session["per"] = null;
        Session["Gen"] = null;
        Session["Grade"] = null;
        Session["Wel"] = null;
        Session["CourseName"] = null;
        
    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
