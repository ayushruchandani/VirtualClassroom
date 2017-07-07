<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/beforelogin/Teachermaster.master" AutoEventWireup="true" CodeFile="AfterSignUp.aspx.cs" Inherits="teacher_beforelogin_AfterSignUp" %>

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
                <center>Congratulations.</center>
            </td>
        </tr>
        
        <tr>
            <td>
                <center><h5>You have successfully registered to Virtual Classroom.</h5></center>
            </td>
        </tr>

        <tr>
            <td>
                <center><h5>Your Registeration request has been sent to the admin for approval.</h5></center>
            </td>
        </tr>

        <tr>
            <td>
                <center><h5>A mail will be sent to you registered EmailId after your request has been approved.</h5></center>
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

