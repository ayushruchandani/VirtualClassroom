using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class student_afterlogin_ViewContent : System.Web.UI.Page
{
    string course;
    string extension, filename,filePath;
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);
   
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["student_id"] != null)
        {

            if (!IsPostBack)
            {
                string course = Session["Course"].ToString();


                DataSet ds = new DataSet();
                SqlConnection connection = new SqlConnection(strCon);
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.Text;
                command.CommandText = "SELECT * FROM Content WHERE Course='" + course + "'";
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                Repeater1.DataSource = ds;
                Repeater1.DataBind();
                command.Dispose();
                connection.Close();

            }

        }
        else 
        {
            Response.Redirect("../../Home.aspx");
        }



    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        
        if (e.CommandName == "Download_details")
        {
             string content_id= (e.CommandArgument).ToString();

             try
             {
                 String strSel = "Select * from Content where ContentId='" + content_id + "'";
                 SqlCommand cmdSel = new SqlCommand(strSel, con);
                 SqlDataReader dr;

                 if (con.State != ConnectionState.Open)
                 {
                     con.Open();
                 }
                 dr = cmdSel.ExecuteReader();
                 while (dr.Read())
                 {
                     extension = dr[3].ToString();
                     filename = dr[8].ToString();

                 }

                 if (extension.Equals(".pdf"))
                 {
                     filePath = "~/Content/PDF/" + filename;
                     Response.ContentType = "application/pdf";
                     Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
                     Response.TransmitFile(Server.MapPath(filePath));
                     Response.End();

                 }
                 else if (extension.Equals(".doc") || extension.Equals(".docx"))
                 {
                     filePath = "~/Content/DOC/" + filename;
                     Response.ContentType = "application/doc";
                     Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
                     Response.TransmitFile(Server.MapPath(filePath));
                     Response.End();

                 }

                 else if (extension.Equals(".ppt") || extension.Equals(".pptx"))
                 {
                     filePath = "~/Content/DOC/" + filename;
                     Response.ContentType = "application/ppt";
                     Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
                     Response.TransmitFile(Server.MapPath(filePath));
                     Response.End();

                 }

                 else if (extension.Equals(".mp4"))
                 {
                     filePath = "~/Content/VIDEO/" + filename;
                     Response.ContentType = "video/x-ms-mp4";
                     Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
                     Response.TransmitFile(Server.MapPath(filePath));
                     Response.End();

                 }


                 else
                 {
                     //lbl.Text = "error";
                 }

             }
             catch (Exception exp)
             {
 
             }


        }
    }
}