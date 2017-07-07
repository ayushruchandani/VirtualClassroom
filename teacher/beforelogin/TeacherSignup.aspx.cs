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
using System.Security.Cryptography;
using System.Text;

public partial class teacher_beforelogin_TeacherSignup : System.Web.UI.Page
{
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);
    String fname;
    string cdate, sdate, edate;

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    

    protected void submitSu_Click(object sender, EventArgs e)
    {
        String strSel = "Select * from Teachermaster where EmailId='" + EmailId.Text + "'";
        SqlCommand cmdSel = new SqlCommand(strSel, con);

        SqlDataReader dr;
 
        
        

        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        dr = cmdSel.ExecuteReader();
        


        if (dr.Read() == false)
        {

            string pwd = Encrypt(password.Text.Trim());
            string cpwd = Encrypt(cpassword.Text.Trim());
                con.Close();


                cdate = DateTime.Now.ToString("dd/MM/yyyy");
                sdate = Convert.ToString(CStartDate.Text);
                edate = Convert.ToString(CEndDate.Text);

                if (Convert.ToDateTime(cdate) <= Convert.ToDateTime(sdate) && Convert.ToDateTime(cdate) <= Convert.ToDateTime(edate) && Convert.ToDateTime(sdate) < Convert.ToDateTime(edate))
                {


                    //starting_date = Convert.ToDateTime(starting_date).ToString("dd/MM/yyyy");
                    //ending_date = Convert.ToDateTime(ending_date).ToString("dd/MM/yyyy");


                    String strGen;
                    if (gender.SelectedValue == "Male")
                    {
                        strGen = "Male";
                    }
                    else
                    {
                        strGen = "Female";
                    }


                    if (pp.HasFile && pid.HasFile && cc.HasFile)
                    {


                        string extension_profilepic = Path.GetExtension(pp.PostedFile.FileName);
                        string filenm_profilepic = pp.FileName;


                        string extension_idpic = Path.GetExtension(pid.PostedFile.FileName);
                        string filenm_idpic = pid.FileName;

                        string extension_cover = Path.GetExtension(cc.PostedFile.FileName);
                        string filenm_cover = cc.FileName;


                        string path_pp = Server.MapPath("~/images/" + filenm_profilepic);
                        pp.SaveAs(path_pp);

                        string path_pid = Server.MapPath("~/images/" + filenm_idpic);
                        pid.SaveAs(path_pid);

                        string path_cover = Server.MapPath("~/images/" + filenm_cover);
                        cc.SaveAs(path_cover);

                        imgpro.ImageUrl = "~/images/" + filenm_profilepic;
                        imgidentity.ImageUrl = "~/images/" + filenm_idpic;
                        imagecourse.ImageUrl = "~/images/" + filenm_cover;


                        String strIns = "Insert into TeacherTemp (Firstname,Lastname,Dateofbirth,Gender,EmailId,Password,Confirm_Password,Contactnumber,Country,State,City,Field,University_college,UploadId,fileid,Profilepic,filename,Course,CourseSDate,CourseEDate,CourseDesc,Course_cover,Cover_filename) values ('" + FN.Text + "','" + LN.Text + "','" + DOB.Text + "','" + strGen + "','" + EmailId.Text + "','" + pwd + "','" + cpwd + "','" + contactno.Text + "','India','" + state.Text + "','" + city.Text + "','" + field.Text + "','" + uni.Text + "',@UploadId,@filename1,@Profilepic,@filename,'"
                            + CName.Text + "','" + CStartDate.Text + "','" + CEndDate.Text + "','" + CDesc.Text + "',@Coverpic,@filename2)";
                        SqlCommand cmdIns = new SqlCommand(strIns, con);

                        cmdIns.Parameters.AddWithValue("@UploadId", path_pid);
                        cmdIns.Parameters.AddWithValue("@filename1", filenm_idpic);

                        cmdIns.Parameters.AddWithValue("@Profilepic", path_pp);
                        cmdIns.Parameters.AddWithValue("@filename", filenm_profilepic);

                        cmdIns.Parameters.AddWithValue("@Coverpic", path_cover);
                        cmdIns.Parameters.AddWithValue("@filename2", filenm_cover);

                        if (con.State != ConnectionState.Open)
                        {
                            con.Open();
                        }
                        cmdIns.ExecuteNonQuery();
                        con.Close();
                        Response.Redirect("../beforelogin/AfterSignUp.aspx");

                    }
                    else
                    {
                        lblErrMsg.Text = "Please upload given picture,,!!";
                    }
                }
                else
                {
                    lblErrMsg.Text = "Please select a valid course starting or ending date.";
                }
            }
            

        else

        {
            lblErrMsg.Text = "The User-Name/E-Mail ID already exists";
        }
    }


    private string Encrypt(string clearText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(clearBytes, 0, clearBytes.Length);
                    cs.Close();
                }
                clearText = Convert.ToBase64String(ms.ToArray());
            }
        }
        return clearText;
    }
}