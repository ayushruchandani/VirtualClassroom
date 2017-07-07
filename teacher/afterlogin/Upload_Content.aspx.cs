using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class teacher_afterlogin_Upload_Content : System.Web.UI.Page
{
    string teacher_id, fn, course,extension,filename, content_titleb, content_descb, content_path, final_size ;
    long content_size;
   
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);
    string emailId;
    




    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["course_teacherid"] != null)
        {
            emailId = Session["EmailId"].ToString();
        }
        else 
        {
            Response.Redirect("../../Home.aspx");
        }
    }


    protected void file_upload_Click(object sender, EventArgs e)
    {


        String strSel1 = "Select  * From Teachermaster where EmailId='" + emailId + "'";
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        SqlCommand cmdSel1 = new SqlCommand(strSel1, con);
        SqlDataReader dr = cmdSel1.ExecuteReader();
        while (dr.Read())
        {
            teacher_id = dr[0].ToString();//teacher id
            fn = dr[1].ToString();//teacher's name
            course = dr[18].ToString();//course of teacher
        }
        con.Close();

      

        content_titleb = content_title.Text;//title of content
        
        content_descb = desc.Text;//description od content
      
        
         extension = Path.GetExtension(Fileupload123.PostedFile.FileName);//content type
         filename = Path.GetFileName(Fileupload123.PostedFile.FileName);//file name
         content_size = Fileupload123.PostedFile.ContentLength;
         int size = (int)content_size;
         final_size = size.ToString();
        


        try
        {
            if (filename != String.Empty)
            {
                if (extension.Equals(".docx") || extension.Equals(".doc"))
                {
                    Fileupload123.SaveAs(Server.MapPath("~/TempContent/DOC/"+filename));
                    content_path = "~/TempContent/DOC/"+filename;

                    insert_content();
                }
                else if (extension.Equals(".pdf"))
                {
                    Fileupload123.SaveAs(Server.MapPath("~/TempContent/PDF/"+filename));
                    content_path = "~/TempContent/PDF/" + filename;
                    insert_content();
                }
                else if (extension.Equals(".ppt") || extension.Equals(".pptx"))
                {
                    Fileupload123.SaveAs(Server.MapPath("~/TempContent/PPT/"+filename));
                    content_path = "~/TempContent/PPT/" + filename;
                    insert_content();
                }
                else if (extension.Equals(".mp4") || extension.Equals(".3gp") || extension.Equals("."))
                {
                    Fileupload123.SaveAs(Server.MapPath("~/TempContent/VIDEO/" + filename));
                    content_path = "~/TempContent/VIDEO/" + filename;
                    insert_content();
                }

                else 
                {
                    lblerrmsg.Text = "Unsupported file extension..!!";

                }
                
            }
            else
            {
                lblerrmsg.Text = "Please select file..!!!";
            }

        }
        catch (Exception exp)
        {
            lblerrmsg.Text = exp.Message;
        }
     }
   


    protected void insert_content()
    {
        try
        {
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            String strIns = "Insert into ReviewContent (TeacherId,Teacher,Content_Type,Course,Content_Title,Content_Size,Content_Path,Filename,Description) values('" + teacher_id + "','" + fn + "','" + extension + "','" + course + "','" + content_titleb + "','" + final_size + "','" + content_path + "','" + filename + "','" + content_descb + "')";
            SqlCommand cmdIns = new SqlCommand(strIns, con);
            cmdIns.ExecuteNonQuery();
            con.Close();
            lblerrmsg.Text = "File uploaded successfully..!!";
            content_title.Text = " ";
            desc.Text = " ";
        }
        catch (Exception exp)
        {
            lblerrmsg.Text = exp.Message;
        }
    }    

}