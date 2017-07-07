<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/afterlogin/AdminALMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_afterlogin_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <form runat="server"> 
<br/>
<div style="font-size:large;" align="center">
        <asp:Label ID="lblMessage" runat="server" CssClass="dropotron" Text="Admin-Home"></asp:Label>    
   </div>
<br/>

    


    <asp:Panel ID="Panel1" runat="server"  BackColor="ControlDarkDark" Height="350px" Width="100%"  >
     <h4 class="dropotron"><b> WELCOME ADMIN...!!!!</b><br /></h4> 
    <asp:Label ID="Label1" runat="server" Text="Date:-" CssClass="shadow" Font-Size="Larger" ForeColor="White"></asp:Label>  
    <asp:Label ID="date" runat="server" Text="Label" CssClass="shadow" Font-Size="Larger" ForeColor="White"></asp:Label>
    <br /><br /><br />
    <div class="effect8">
    <table class="features-table">
    
    <tr>
        <th><h3 class="shadow">Teacher-Management</h3></th>
        <th></th>
        <th><h3 class="shadow">Student-Management</h3></th>
        <th></th>
        <th><h3 class="shadow">Content-Management</h3></th>
        <th></th>
        <th><h3 class="shadow">Virtual_Classroom-Management</h3></th>
    </tr>
    <tr>
        <td>
            <asp:ImageButton ID="teacherIcon" CssClass="effect8" ImageUrl="~/images/Teacher.png" runat="server" PostBackUrl="~/Admin/afterlogin/RegisteredTeacher.aspx"/>
        </td>
        
        <td></td>
        
        <td>
            <asp:ImageButton ID="studentIcon"  CssClass="effect8" runat="server" ImageUrl="~/images/Student.png" PostBackUrl="~/Admin/afterlogin/RegisteredStudent.aspx" />
        </td>
        
        <td></td>
        
        <td>
            <asp:ImageButton ID="contentIcon" CssClass="effect8" runat="server" ImageUrl="~/images/Content.png" PostBackUrl="~/Admin/afterlogin/UploadedContent.aspx"/>
        </td>

        <td></td>

        <td>
            <asp:ImageButton ID="classIcon" CssClass="effect8" runat="server" ImageUrl="~/images/webinar.png" PostBackUrl="~/Admin/afterlogin/ViewRegisteredClass.aspx"/>
        </td>

    </tr>
    </table>
    </div>
    </asp:Panel>


    </form>
</asp:Content>

