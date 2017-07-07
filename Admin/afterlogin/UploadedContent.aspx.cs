using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class Admin_afterlogin_UploadedContent : System.Web.UI.Page
{
    string contentId, content_path, filename, teacher_id, fn, extension, course, content_titleb, final_size, content_descb, source_path, filePath;
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Delete_content_details")
        {
            Session["content_id"] = (e.CommandArgument).ToString();
            string contentId = Session["content_id"].ToString();
            //lbl.Text = contentId;


            String strSel = "Select * from Content where ContentId='" + contentId + "'";
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

            con.Close();
            //lbl.Text=filename;

            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }

            try
            {


                string strDel = "DELETE FROM Content WHERE ContentId='" + contentId + "'";
                if (extension.Equals(".ppt") || extension.Equals(".pptx"))
                {
                    source_path = @"D:\temp_main\Content\PPT\" + filename;
                }
                if (extension.Equals(".pdf"))
                {
                    source_path = @"D:\temp_main\Content\PDF\" + filename;
                  
                }
                if (extension.Equals(".doc") || extension.Equals(".docx"))
                {
                    source_path = @"D:\temp_main\Content\DOC\" + filename;
                }
                if (extension.Equals(".mp4") || extension.Equals(".3gp") || extension.Equals(".mvi"))
                {
                    source_path = @"D:\temp_main\Content\VIDEO\" + filename;
                }

                SqlCommand cmdDel = new SqlCommand(strDel, con);
                cmdDel.ExecuteNonQuery();
                File.Delete(source_path);
                Response.Redirect("../afterlogin/UploadedContent.aspx");
                con.Close();
            }
            catch (Exception exp3)
            {
                
            }


        }



        if (e.CommandName == "Show_content_details")
        {


            Session["content_id"] = (e.CommandArgument).ToString();
            Response.Redirect("../afterlogin/UploadedContentSpecification.aspx");


        }


    }
}