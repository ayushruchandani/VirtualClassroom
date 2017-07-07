using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
public partial class Admin_afterlogin_Content_specification : System.Web.UI.Page
{
    string contentId, content_path, filename, teacher_id, fn, extension, course, content_titleb, final_size, content_descb, source_path,filePath;
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);
    SqlConnection con1 = new SqlConnection(strCon);
    //FileUpload F = new FileUpload();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            contentId=Session["content_id"].ToString();
            String strSel = "Select * from ReviewContent where ContentId='" + contentId + "'";
            SqlCommand cmdSel = new SqlCommand(strSel, con);
            SqlDataReader dr;

            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            dr = cmdSel.ExecuteReader();

            while (dr.Read())
            {
                Cont_Id.Text = dr[0].ToString();
                Teach_Id.Text=dr[1].ToString();
                Teach_Name.Text=dr[2].ToString();
                Cont_Type.Text=dr[3].ToString();
                crs.Text=dr[4].ToString();
                Cont_Title.Text=dr[5].ToString();
                Cont_Size.Text=dr[6].ToString();
                Cont_Path.Text=dr[7].ToString();
                Cont_Filename.Text=dr[8].ToString();
                Cont_Desc.Text=dr[9].ToString();

            }
            con.Close();

        }
        catch (Exception exp)
        {
            lblerrmsg.Text = exp.Message;
        }
    }




    protected void accept_request_Click(object sender, EventArgs e)
    {
       
        try
        {
            contentId = Session["content_id"].ToString();
            String strSel = "Select * from ReviewContent where ContentId='" + contentId + "'";
            SqlCommand cmdSel = new SqlCommand(strSel, con1);
            SqlDataReader dr;

            if (con1.State != ConnectionState.Open)
            {
                con1.Open();
            }
            dr = cmdSel.ExecuteReader();

            while (dr.Read())
            {
                 
                teacher_id = dr[1].ToString();
                fn = dr[2].ToString();
                extension = dr[3].ToString();
                course = dr[4].ToString();
                content_titleb = dr[5].ToString();
                final_size = dr[6].ToString();
                content_path = dr[7].ToString();
                filename = dr[8].ToString();
                content_descb = dr[9].ToString();

            }

            if (extension.Equals(".docx") || extension.Equals(".doc"))
            {

                content_path = @"D:\VirtualClass\Content\DOC\" + filename;
                source_path = @"D:\VirtualClass\TempContent\DOC\" + filename;               
                insert_content();
            }
            else if (extension.Equals(".pdf"))
            {

                content_path = @"D:\VirtualClass\Content\PDF\" + filename;
                source_path = @"D:\VirtualClass\TempContent\PDF\" + filename;
                insert_content();
            }
            else if (extension.Equals(".ppt") || extension.Equals(".pptx"))
            {

                content_path = @"D:\VirtualClass\Content\PPT\" + filename;
                source_path = @"D:\VirtualClass\TempContent\PPT\" + filename;
                insert_content();
            }
            else if (extension.Equals(".mp4") || extension.Equals(".3gp") || extension.Equals(".mvi"))
            {

                content_path = @"D:\VirtualClass\Content\VIDEO\" + filename;
                source_path = @"D:\VirtualClass\TempContent\VIDEO\" + filename;
                insert_content();
            }

            else
            {
                lblerrmsg.Text = "Unsupported file extension..!!";

            }
                

            con1.Close();

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
            
            String strIns = "Insert into Content (TeacherId,Teacher,Content_Type,Course,Content_Title,Content_Size,Content_Path,Filename,Description) values('" + teacher_id + "','" + fn + "','" + extension + "','" + course + "','" + content_titleb + "','" + final_size + "','" + content_path + "','" + filename + "','" + content_descb + "')";
            SqlCommand cmdIns = new SqlCommand(strIns, con);
            cmdIns.ExecuteNonQuery();
            File.Copy(source_path, content_path,true);
      
            con.Close();
            delete_temp_content();    
        }
        catch (Exception exp)
        {
            lblerrmsg.Text = exp.Message;
        }
    }



    protected void delete_temp_content()
    {
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }

        try
        {
            string contentId = Session["content_id"].ToString();

            string strDel = "DELETE FROM ReviewContent WHERE ContentId='" + contentId + "'";


            SqlCommand cmdDel = new SqlCommand(strDel, con);
            cmdDel.ExecuteNonQuery();
            File.Delete(source_path);
            Response.Redirect("../afterlogin/ReviewContent.aspx");
            con.Close();
        }
        catch (Exception exp3)
        {
            lblerrmsg.Text = exp3.Message;
        }
    }








    protected void request_denied_Click(object sender, EventArgs e)
    {
        

        try
        {
            string contentId = Session["content_id"].ToString();
            String strSel = "Select * from ReviewContent where ContentId='" + contentId + "'";
            SqlCommand cmdSel = new SqlCommand(strSel, con1);
            SqlDataReader dr;

            if (con1.State != ConnectionState.Open)
            {
                con1.Open();
            }
            dr = cmdSel.ExecuteReader();

            while (dr.Read())
            {
                filename=dr[8].ToString();
                extension=dr[3].ToString();
                //filePath=dr[7].ToString();
            }
            con1.Close();
            
            if (extension.Equals(".docx") || extension.Equals(".doc"))
            {


                source_path = @"D:\VirtualClass\TempContent\DOC\" + filename;
                
            }
            else if (extension.Equals(".pdf"))
            {


                source_path = @"D:\VirtualClass\TempContent\PDF\" + filename;
                
            }
            else if (extension.Equals(".ppt") || extension.Equals(".pptx"))
            {


                source_path = @"D:\VirtualClass\TempContent\PPT\" + filename;
                
               
            }
            else if (extension.Equals(".mp4") || extension.Equals(".3gp") || extension.Equals(".mvi"))
            {


                source_path = @"D:\VirtualClass\TempContent\VIDEO\" + filename;
                   
            }

            else
            {
                lblerrmsg.Text = "Unsupported file extension..!!";

            }
            
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }


            string strDel = "DELETE FROM ReviewContent WHERE ContentId='" + contentId + "'";
            SqlCommand cmdDel = new SqlCommand(strDel, con);
            cmdDel.ExecuteNonQuery();

            File.Delete(source_path);
            
            Response.Redirect("../afterlogin/ReviewContent.aspx");
            con.Close();
        }
        catch (Exception exp3)
        {
            lblerrmsg.Text = exp3.Message;
        }
    }



    protected void download_content_Click(object sender, ImageClickEventArgs e)
    {
        try
        {

            string contentId = Session["content_id"].ToString();
            String strSel = "Select * from ReviewContent where ContentId='" + contentId + "'";
            SqlCommand cmdSel = new SqlCommand(strSel, con);
            SqlDataReader dr;

            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            dr = cmdSel.ExecuteReader();
            while (dr.Read())
            {
                extension=dr[3].ToString();
                filename = dr[8].ToString();

            }



            
            //string ext = Path.GetExtension(filePath);

            if (extension.Equals(".pdf"))
            {
                filePath = "~/TempContent/PDF/" + filename;    
                Response.ContentType = "application/pdf";
                Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
                Response.TransmitFile(Server.MapPath(filePath));
                Response.End();

            }
            else if (extension.Equals(".doc") || extension.Equals(".docx"))
            {
                filePath = "~/TempContent/DOC/" + filename;
                Response.ContentType = "application/doc";
                Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
                Response.TransmitFile(Server.MapPath(filePath));
                Response.End();

            }

            else if (extension.Equals(".ppt") || extension.Equals(".pptx"))
            {
                filePath = "~/TempContent/DOC/" + filename;
                Response.ContentType = "application/ppt";
                Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
                Response.TransmitFile(Server.MapPath(filePath));
                Response.End();

            }

            else if (extension.Equals(".mp4"))
            {
                filePath = "~/TempContent/VIDEO/" + filename;
                Response.ContentType = "video/x-ms-mp4";
                Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
                Response.TransmitFile(Server.MapPath(filePath));
                Response.End();

            }


            else 
            {
                lblerrmsg.Text = "error";
            }

        }
        catch (Exception exx)
        {
            lblerrmsg.Text = exx.Message;
        }
    }
}