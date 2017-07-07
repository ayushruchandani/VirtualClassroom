using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Text;
using System.Configuration;
using System.IO;

public partial class Forgottpass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnPass_Click(object sender, EventArgs e)
    {
        
        string strConnection =@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True" ;
        string checkuser;
        if (rbselectuser.SelectedValue == "Student")
        {
            checkuser = "Student";
        }
        else
        {
            checkuser = "Teacher";
        }


        
        
        
        
        if (checkuser.Equals("Student"))
        {

            try
            {


                string mailid = txtEmail.Text.ToString();
                string strSelect = "SELECT EmailId,Password FROM Studentmaster WHERE EmailId ='" + mailid + "'";

                SqlConnection connection = new SqlConnection(strConnection);
                SqlCommand command = new SqlCommand(strSelect,connection);
                DataSet dsPwd = new DataSet();
                SqlDataAdapter dAdapter = new SqlDataAdapter(command);
                connection.Open();
                dAdapter.Fill(dsPwd);
                connection.Close();
                if (dsPwd.Tables[0].Rows.Count > 0)
                {
                    string username,password,final;
                    username=dsPwd.Tables[0].Rows[0]["EmailId"].ToString();
                    password = Decrypt(dsPwd.Tables[0].Rows[0]["Password"].ToString());
                    final = "User-Name:" + username + "\nPassword:" + password;
                    EmailRelay f = new EmailRelay("smtp.gmail.com", "virtualproject.gtu@gmail.com", "virtualclassroom123");

                    if (f.SendMail("virtualproject.gtu@gmail.com", mailid, "Virtual Classroom", final, "Password Recovery", true) == true)
                    {
                        lblMessage.Text = "Password has been sent to your registered E-mail ID..!! ";

                    }
                    else
                    {
                        lblMessage.Text = "Not send..please try again";

                    } 
                }
                else
                {
                    
                }


            }
            catch (Exception exp1) { lblMessage.Text = "Exception1"; }
        }


        else




        {
            try
            {
                string mailid = txtEmail.Text.ToString();
                string strSelect = "SELECT EmailId,Password FROM Teachermaster WHERE EmailId ='" + mailid + "'";

                SqlConnection connection = new SqlConnection(strConnection);
                SqlCommand command = new SqlCommand();
                command.Connection = connection;
                command.CommandType = CommandType.Text;
                command.CommandText = strSelect;

                //SqlParameter email = new SqlParameter(mailid, SqlDbType.VarChar, 50);
                //email.Value = txtEmail.Text.Trim().ToString();
                //command.Parameters.Add(email);

                //Create Dataset to store results and DataAdapter to fill Dataset 
                SqlDataReader dr;
                
                connection.Open();
                
                command = new SqlCommand(strSelect, connection);
                dr = command.ExecuteReader();
                
                while(dr.Read())
                {
                    string username, password, final;
                    username = dr["EmailId"].ToString();
                    password=Decrypt(dr["Password"].ToString());
                    connection.Close();
                    //password = dsPwd.Tables[0].Rows[0]["Password"].ToString();
                    final = "\t User-Name:-" + username + "\n\t Password:" + password;
                    EmailRelay f = new EmailRelay("smtp.gmail.com", "virtualproject.gtu@gmail.com", "virtualclassroom123");
                    if (f.SendMail("virtualproject.gtu@gmail.com", mailid, "Virtual Classroom", final, "Password Recovery", true) == true)
                    {
                        lblMessage.Text = "Password has been sent to your registered E-mail ID..!!-->  <a href='Home.aspx'>Home</a>";

                                    
                    }
                    else
                    {
                        lblMessage.Text = "Not send..please try again";

                    }
                }
                
            }
            catch (Exception exp2) { lblMessage.Text = exp2.ToString(); }
           
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

