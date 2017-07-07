using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class student_afterlogin_ViewMessage : System.Web.UI.Page
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
                DataSet ds = new DataSet();
                SqlCommand cmd = con.CreateCommand();
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from Query where Course='" + Session["Course"] + "'";
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
    protected void select_SelectedIndexChanged(object sender, EventArgs e)
    {
        //lblmsg.Text=select.SelectedValue.ToString();
        string search = select.SelectedItem.ToString();
        string se = select.SelectedValue.ToString();
        if (search.Equals("Queries Uploaded only by you"))
        {
            DataSet ds = new DataSet();
            SqlCommand cmd = con.CreateCommand();
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from Query where StudentId='" + Session["student_id"] + "'";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(ds);
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
            cmd.Dispose();
            con.Close();

        }
        else
        {

            DataSet ds = new DataSet();
            SqlCommand cmd = con.CreateCommand();
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from Query where Course='" + Session["Course"] + "'";
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
        if (e.CommandName == ("View_Query"))
        {
            string queryid = (e.CommandArgument).ToString();
            Session["QueryId"] = queryid;
            Response.Redirect("../afterlogin/Query.aspx");
        }
    }
    protected void show_Click(object sender, EventArgs e)
    {
        string search = select.SelectedItem.ToString();
        string se = select.SelectedValue.ToString();
        if (search.Equals("Queries Uploaded only by you"))
        {
            DataSet ds = new DataSet();
            SqlCommand cmd = con.CreateCommand();
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from Query where StudentId='" + Session["student_id"] + "'";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(ds);
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
            cmd.Dispose();
            con.Close();

        }
        else
        {

            DataSet ds = new DataSet();
            SqlCommand cmd = con.CreateCommand();
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from Query where Course='" + Session["Course"] + "'";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(ds);
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
            cmd.Dispose();
            con.Close();

        }
    }
}