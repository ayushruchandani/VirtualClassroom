using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_beforelogin_AdminLogin : System.Web.UI.Page
{
    static string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con = new SqlConnection(strCon);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        //string uname = null, pass = null;
        //uname=logintxt_username.Text.ToString();
        //pass=logintxt_password.Text.ToString();
        //if (uname.Equals("admin123"))
        //{
        //    if (pass.Equals("helloworld"))
        //    {
        //        Session["admin"] = "authorised";
                
        //        Response.Redirect("../afterlogin/Home.aspx");
        //    }
        //    else
        //    {
        //        lblErrMsg1.Text = "Invalid password..!!";
        //        logintxt_password.Focus();
        //    }
        //}
        //else 
        //{
        //    lblErrMsg1.Text = "Invalid Username..!!";
        //    logintxt_username.Focus();
        //}





        try
        {

            string strSel = "Select * from Adminmaster where username='" + logintxt_username.Text + "'";
            SqlCommand cmdSel = new SqlCommand(strSel, con);
            SqlDataReader dr;
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            dr = cmdSel.ExecuteReader();
            if (dr.Read())
            {
                string pwd = dr["password"].ToString();
                //string pwd = Decrypt(dr["Password"].ToString());
                if (pwd == logintxt_password.Text)
                {
                    Session["admin_id"] = dr["AdminId"].ToString();
                    Response.Redirect("../afterlogin/Home.aspx");

                }
                else
                {
                    lblErrMsg1.Text = "Invalid Password..!!";
                    logintxt_password.Focus();
                }
            }
            else
            {
                lblErrMsg1.Text = "Invalid Username..!!";
                logintxt_username.Focus();
            }

        }
        catch
        {
            lblErrMsg1.Text = "Exception Occured!!";
        }







    }
}