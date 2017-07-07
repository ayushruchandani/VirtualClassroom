<%@ Page Title="" Language="C#" MasterPageFile="~/student/beforelogin/StudentMaster.master" AutoEventWireup="true" CodeFile="AfterSignUp.aspx.cs" Inherits="student_beforelogin_AfterSignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br /><br />
   <div style="font-size:large;" align="center">
        <asp:Label ID="lblMessage" runat="server" CssClass="dropotron" Text="Sign-Up Successful."></asp:Label>    
   </div>
   <br />
   <div class="features-table">
   <form id="Form1" name="after" runat="server">
   <center>
   <table width="100%">
        <tr>
            <td >
                <center><h5>Congratulations.</h5></center>
            </td>
        </tr>
        
        <tr>
            <td>
                <center><h5>You have successfully registered to Virtual Classroom.</h5></center>
            </td>
        </tr>

        <tr>
            <td>
                <center><h5>You can now login using your EmailId and Password</h5></center>
            </td>
        </tr>


        <tr>
            <td>
                <center><asp:Button ID="goHome" runat="server" Text="Go to Home Page" 
                        onclick="goHome_Click" /></center>
            </td>
        </tr>

   </table>
   </center>
   </form>
   </div>

</asp:Content>

