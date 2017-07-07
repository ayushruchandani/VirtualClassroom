using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_afterlogin_UploadedContentSpecification : System.Web.UI.Page
{
    string contentId, content_path, filename, teacher_id, fn, extension, course, content_titleb, final_size, content_descb, source_path, filePath;
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            contentId = Session["content_id"].ToString();
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
                Cont_Id.Text = dr[0].ToString();
                Teach_Id.Text = dr[1].ToString();
                Teach_Name.Text = dr[2].ToString();
                Cont_Type.Text = dr[3].ToString();
                crs.Text = dr[4].ToString();
                Cont_Title.Text = dr[5].ToString();
                Cont_Size.Text = dr[6].ToString();
                Cont_Path.Text = dr[7].ToString();
                Cont_Filename.Text = dr[8].ToString();
                Cont_Desc.Text = dr[9].ToString();

            }
            con.Close();

        }
        catch (Exception exp)
        {
            lblerrmsg.Text = exp.Message;
        }
    }
}