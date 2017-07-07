using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.IO;
public partial class Courses : System.Web.UI.Page
{
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        search_txtbox.Focus();
        String search_string = search_txtbox.Text;
        
        
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            SqlConnection connection = new SqlConnection(strCon);
            connection.Open();
            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = "SELECT * FROM Teachermaster";
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            adapter.Fill(ds);
            datalist.DataSource = ds;
            datalist.DataBind();
            command.Dispose();
            connection.Close();
           
        }
    }
    
    
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        String search_string=search_txtbox.Text;
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlConnection connection = new SqlConnection(strCon);
        connection.Open();
        SqlCommand command = connection.CreateCommand();
        command.CommandType = CommandType.Text;
        command.CommandText = "SELECT * FROM Teachermaster WHERE Course LIKE '%" + search_string + "%'";
        SqlDataAdapter adapter1 = new SqlDataAdapter(command);
        adapter1.Fill(ds);
        if ((ds.Tables[0].Rows.Count) != 0)
        {
            lblmsg.Text = " ";
            datalist.DataSource = ds;
            datalist.DataBind();
            command.Dispose();
            connection.Close();
        }
        else 
        {
            lblmsg.Text = "Sorry..!! No such course available..!!";
        }
    }

    protected void datalist_ItemCommand(Object sender, DataListCommandEventArgs e) 
    
    {
        if (e.CommandName == "Show_Course_Details")
        {
            Session["course_teacherid"] = (e.CommandArgument).ToString();
            Response.Redirect("Course_Details.aspx");
        }
    }

   

   
}