using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Text;
using System.Configuration;
using System.IO;

public partial class Home : System.Web.UI.Page
{
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnstudent_Signup_Click(object sender, EventArgs e)
    {
        
    }
    protected void btnteacher_Signup_Click(object sender, EventArgs e)
    {
        
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        String tuser;
        
        if (user.SelectedValue == "Student")
        {
            tuser = "Student";
        }
        else
        {
            tuser = "Teacher";
        }

        if (tuser.Equals("Student"))
        {
            try
            {

                string strSel = "Select * from Studentmaster where EmailId='" + logintxt_username.Text + "'";
                SqlCommand cmdSel = new SqlCommand(strSel, con);
                SqlDataReader dr;
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                dr = cmdSel.ExecuteReader();
                if (dr.Read())
                {
                    //string pwd = dr["Password"].ToString();
                    string pwd = Decrypt(dr["Password"].ToString());
                    if (pwd == logintxt_password.Text)
                    {
                        Session["student_id"]=dr["StudentId"].ToString();               
                        Session["Firstname"] = dr["Firstname"].ToString();
                        Session["Lastname"] = dr["Lastname"].ToString();
                        Session["EmailId"]=dr["EmailId"].ToString();
                        Session["filename"]=dr["filename"].ToString();
                        Session["Course"] = dr["Course"].ToString();
                        Response.Redirect("student/afterlogin/Afterstudenthome.aspx");
                        
                    }
                    else
                    {
                        lblErrMsg.Text = "Invalid Password..!!";
                        logintxt_password.Focus();
                    }
                }
                else
                {
                    lblErrMsg.Text = "Invalid Username..!!";
                    logintxt_username.Focus();
                }

            }
            catch
            {
                lblErrMsg.Text = "Exception Occured!!";
            }
        }
        else
        {
            try
            {

                string strSel = "Select * from Teachermaster where EmailId='" + logintxt_username.Text + "'";
                SqlCommand cmdSel = new SqlCommand(strSel, con);
                SqlDataReader dr;
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                dr = cmdSel.ExecuteReader();
                if (dr.Read())
                {
                    string pwd = Decrypt(dr["Password"].ToString());
                    if (pwd == logintxt_password.Text)
                    {
                        //lblErrMsg.Text = "You are successfully logged-in..!!";
                        Session["Firstname"] = dr["Firstname"].ToString();
                        Session["Lastname"] = dr["Lastname"].ToString();
                        Session["EmailId"] = dr["EmailId"].ToString();
                        Session["filename"] = dr["filename"].ToString();
                        Session["Course"] = dr["Course"].ToString();
                        Session["course_teacherid"] = dr["TeacherId"].ToString();
                        Response.Redirect("teacher/afterlogin/Teacherhome.aspx");
                        //lblErrMsg.Text = "Login Successful";
                    }
                    else
                    {
                        lblErrMsg.Text = "Invalid Password..!!";
                        logintxt_password.Focus();
                    }
                }
                else
                {
                    lblErrMsg.Text = "Invalid Username..!!";
                    logintxt_username.Focus();
                }
            }
            catch
            {
                lblErrMsg.Text = "Exception Occured!!";
            }

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