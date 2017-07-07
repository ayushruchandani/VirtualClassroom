using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Xml.Linq;
using System.IO;
using System.Web.Security;
using System.Security.Cryptography;
using System.Text;
using System.Configuration;
using System.IO;

public partial class Admin_afterlogin_Teacher_specification : System.Web.UI.Page
{
    string FN, LN, DOB, GEN, EM, PWD, CPWD, CONT, CON, ST, CIT, FLD, UNI, UPID, FLIF, PP, PFNM, CRS, CRSD, CRED, CRDES,CPIC,CPICF;
    string filename;
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);
    SqlConnection con1 = new SqlConnection(strCon);
    string EmailId,password=null;
    protected void Page_Load(object sender, EventArgs e)
    {


        try
        {
            EmailId = Session["uname"].ToString();
            String strSel = "Select * from TeacherTemp where EmailId='" + EmailId + "'";
            SqlCommand cmdSel = new SqlCommand(strSel, con);
            SqlDataReader dr;

            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            dr = cmdSel.ExecuteReader();

            while (dr.Read())
            {
                string url = null;
                url = "~/images/" + Convert.ToString(dr[17]);
                string urlid = null;
                urlid = "~/images/" + Convert.ToString(dr[15]);
                Profile_pic.ImageUrl = url;
                Idproof.ImageUrl = urlid;
                Firstname.Text = dr[1].ToString();
                Lastname.Text = dr[2].ToString();
                Gender_select.Text = dr[4].ToString();
                Email.Text = dr[5].ToString();
                Contact_number.Text = dr[8].ToString();
                Field_name.Text = dr[12].ToString();
                University_name.Text = dr[13].ToString();
                Course_name.Text = dr[18].ToString();
                Course_Start_Date.Text = dr[19].ToString();
                Course_Ending_Date.Text = dr[20].ToString();
                Course_Description.Text = dr[21].ToString();
            }
            con.Close();
        }
        catch (Exception exp1) 
        {
            lblerrmsg.Text = exp1.Message;
        }
    }

    


    protected void request_denied_Click(object sender, EventArgs e)
    {
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }

        try
        {
            string EmailId = Session["uname"].ToString();
          
            string strDel = "DELETE FROM TeacherTemp WHERE EmailId='" + EmailId + "'";
            EmailRelay f = new EmailRelay("smtp.gmail.com", "virtualproject.gtu@gmail.com", "virtualclassroom123");

            if (f.SendMail("virtualproject.gtu@gmail.com", EmailId, "Virtual Classroom","Sorry...!!your request has been refused..!!", "Request rejected", true) == true)
            {
              //  lblMessage.Text = "Password has been sent to your registered E-mail ID..!! ";

            }
            else
            {
                //lblMessage.Text = "Not send..please try again";

            } 

            SqlCommand cmdDel = new SqlCommand(strDel, con);
            cmdDel.ExecuteNonQuery();
                   
            Response.Redirect("../afterlogin/TeacherApproval.aspx");
            con.Close();
        }
        catch (Exception exp3) 
        {
            lblerrmsg.Text = exp3.Message;
        }
    }


    
    
    
    protected void accept_request_Click1(object sender, EventArgs e)
    {
        EmailId = Session["uname"].ToString();
        String strSel = "Select * from TeacherTemp where EmailId='" + EmailId + "'";
        SqlCommand cmdSel = new SqlCommand(strSel, con);
        SqlDataReader dr;

        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        dr = cmdSel.ExecuteReader();
        while (dr.Read())
        {
            FN = dr[1].ToString();
            LN = dr[2].ToString();
            DOB = dr[3].ToString();
            GEN= dr[4].ToString();
            EM = dr[5].ToString();
            PWD = dr[6].ToString();
            CPWD = dr[7].ToString();
            CONT = dr[8].ToString();
            CON = dr[9].ToString();
            ST = dr[10].ToString();
            CIT = dr[11].ToString();
            FLD = dr[12].ToString();
            UNI = dr[13].ToString();
            UPID = dr[14].ToString();
            FLIF = dr[15].ToString();
            PP = dr[16].ToString();
            PFNM = dr[17].ToString();
            CRS = dr[18].ToString();
            CRSD = dr[19].ToString();
            CRED = dr[20].ToString();
            CRDES = dr[21].ToString();
            CPIC= dr[22].ToString();
            CPICF= dr[23].ToString();

            //EmailRelay f = new EmailRelay("smtp.gmail.com", "virtualproject.gtu@gmail.com", "virtualclassroom123");

        //     if (f.SendMail("virtualproject.gtu@gmail.com", EmailId, "Virtual Classroom", "Your request has been approved..!!You can login with:"+"Username:"+EmailId+"Password:"+password, "Request Approved", true) == true)
        //    {
        //    //  lblMessage.Text = "Password has been sent to your registered E-mail ID..!! ";

        //    }
        //    else
        //    {
        //        //lblMessage.Text = "Not send..please try again";

        //    }
            insert_record(FN, LN, DOB, GEN, EM, PWD, CPWD, CONT, CON, ST, CIT, FLD, UNI, UPID, FLIF, PP, PFNM, CRS, CRSD, CRED, CRDES,CPIC,CPICF);    
          }
        
        con.Close();

        
    }

    void insert_record(string fn, string ln, string dob, string gen, string em, string pwd, string cpwd, string cont, string coun, string st, string cit, string fld, string uni
        , string upid, string flif, string pp, string pfnm, string crs, string crsd, string cred, string crdes,string cpic,string cpicf)
    {
        try
        {

            String strIns = "Insert into Teachermaster (Firstname,Lastname,Dateofbirth,Gender,EmailId,Password,Confirm_Password,Contactnumber,Country,State,City,Field,University_college,UploadId,fileid,Profilepic,filename,Course,CourseSDate,CourseEDate,CourseDesc,Course_cover,Cover_filename) values ('" + fn + "','" + ln + "','" + dob + "','" + gen + "','" + em + "','" + pwd + "','" + cpwd + "','" + cont + "','" + coun + "','" + st + "','" + cit + "','" + fld + "','" + uni + "','" + upid + "','" + flif + "','" + pp + "','" + pfnm + "','" + crs + "','" + crsd + "','" + cred + "','" + crdes + "','" + cpic + "','" + cpicf + "')";
            if (con1.State != ConnectionState.Open)
            {
                con1.Open();
            }
            SqlCommand cmdIns = new SqlCommand(strIns, con1);
            cmdIns.ExecuteNonQuery();
            string strDel = "DELETE FROM TeacherTemp WHERE EmailId='" + EmailId + "'";
            pwd = Decrypt(pwd);

            EmailRelay f = new EmailRelay("smtp.gmail.com", "virtualproject.gtu@gmail.com", "virtualclassroom123");

            if (f.SendMail("virtualproject.gtu@gmail.com", EmailId, "Virtual Classroom", "Congratulations. Your Request has been approved.!! You can now login now using your user-name and password. User name is="+em+" and your password is "+pwd, "Request Approved", true) == true)
            {
                //  lblMessage.Text = "Password has been sent to your registered E-mail ID..!! ";

            }
            else
            {
                //lblMessage.Text = "Not send..please try again";

            }

            SqlCommand cmdDel = new SqlCommand(strDel, con1);
            cmdDel.ExecuteNonQuery();
            con1.Close();
            Response.Redirect("../afterlogin/TeacherApproval.aspx");
        
            
        }
        catch (Exception exp3) 
        {
            lblerrmsg.Text = exp3.Message;
        }
    }





    protected void download_details_Click(object sender, ImageClickEventArgs e)
    {
        
        try
        {

            EmailId = Session["uname"].ToString();
            String strSel = "Select * from TeacherTemp where EmailId='" + EmailId + "'";
            SqlCommand cmdSel = new SqlCommand(strSel, con);
            SqlDataReader dr;

            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            dr = cmdSel.ExecuteReader();
            while (dr.Read())
            {
                 filename = dr[15].ToString();

            }


            string filePath = "~/images/" + filename ;

            string ext = Path.GetExtension(filePath);

            if (ext.Equals(".jpg"))
            {
                Response.ContentType = "image/jpg";
                Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
                Response.TransmitFile(Server.MapPath(filePath));
                Response.End();
    
            }

             
                        

        }
        catch (Exception exx)
        {
            lblerrmsg.Text = exx.Message;
        }
    }


    private string Decrypt(string cipherText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] cipherBytes = Convert.FromBase64String(cipherText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(cipherBytes, 0, cipherBytes.Length);
                    cs.Close();
                }
                cipherText = Encoding.Unicode.GetString(ms.ToArray());
            }
        }
        return cipherText;
    }
   
    
}