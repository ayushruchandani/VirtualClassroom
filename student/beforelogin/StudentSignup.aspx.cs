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
using System.Net.Mail;
using System.Security.Cryptography;
using System.Text;

public partial class student_beforelogin_StudentSignup : System.Web.UI.Page
{
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                String strSel1 = "Select Course from Teachermaster";
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                SqlCommand cmdSel1 = new SqlCommand(strSel1, con);
                SqlDataReader dr = cmdSel1.ExecuteReader();


                course.DataSource = dr;
                course.DataTextField = "Course";
                course.DataValueField = "";
                course.DataBind();
                con.Close();
            }
            catch (Exception exp)
            {
                lblErrMsg.Text = exp.Message;
            }

        }
    }



    protected void submitSu_Click(object sender, EventArgs e)
    {
        String strSel = "Select * from Studentmaster where EmailId='" + EmailId.Text + "'";
        SqlCommand cmdSel = new SqlCommand(strSel, con);
        SqlDataReader dr;


        String crs = course.SelectedItem.Value;
        

        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        dr = cmdSel.ExecuteReader();


        if (dr.Read() == false)
        {
            con.Close();
            String strGen;
            if (gender.SelectedValue == "Male")
            {
                strGen = "Male";
            }
            else
            {
                strGen = "Female";
            }
            string pwd = Encrypt(password.Text.Trim());
            string cpwd = Encrypt(cpassword.Text.Trim());

          
            
               if(pp.HasFile)
               {
                   

                 string extension = Path.GetExtension(pp.PostedFile.FileName);
                 string filenm =  pp.FileName;
                 
                 string path = Server.MapPath("~/images/" + filenm);
                 pp.SaveAs(path);
                 imgpro.ImageUrl = "~/images/" + filenm;

                 String strIns = "Insert into Studentmaster (Firstname,Lastname,Dateofbirth,Gender,EmailId,Password,Confirm_Password,Contactnumber,Country,State,City,Field,CollegeSchool,Profilepic,filename,Course) values ('" + FN.Text + "','" + LN.Text + "','" + DOB.Text + "','" + strGen + "','" + EmailId.Text + "','" + pwd + "','" + cpwd + "','" + contactno.Text + "','India','" + state.Text + "','" + city.Text + "','" + field.Text + "','" + uni.Text + "',@Profilepic,@filename,'" + crs + "')";
                 SqlCommand cmdIns = new SqlCommand(strIns, con);
                 cmdIns.Parameters.AddWithValue("@Profilepic", path);
                 cmdIns.Parameters.AddWithValue("@filename", filenm);

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
                        lblErrMsg.Text = "Please upload profile picture,,!!";
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