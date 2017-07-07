<%@ Page Title="" Language="C#" MasterPageFile="~/student/afterlogin/Master_student_after.master" AutoEventWireup="true" CodeFile="Query.aspx.cs" Inherits="student_afterlogin_Query" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<head></head>    
    <br /><br />
   <div style="font-size:large;" align="center">
        <h4 class="dropotron"><asp:Label ID="lblMessage" runat="server" Text="Reply"></asp:Label></h4>    
   </div>
   <br />
   <br />

   <div class="features-table">
    <form id="frm" name="reply" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <center>

    <table width="100%" border="0">
        <tr>
            <td rowspan="2" style="width: 15px">
                <asp:Image ID="propic" runat="server" />
            </td>
            <td >
                    <center><h4 class="dropotron"><asp:Label ID="lblStudentId" runat="server"></asp:Label></h4></center>
            </td>
        </tr>
        <tr>
            
            <td >
                         <center><h4 class="dropotron"><asp:Label ID="lblStudentName" runat="server"></asp:Label></h4></center>
            </td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 15px">
                <asp:Image ID="tProPic" runat="server" />
            </td>
            <td >
                         <h4 class="dropotron"><asp:Label ID="lblTeacherId" runat="server"></asp:Label></h4>
            </td>
        </tr>
        <tr>
            
            <td >
                         <center><h4 class="dropotron"><asp:Label ID="lblTeacherName" runat="server"></asp:Label></h4></center>
            </td>
        </tr>
         <tr>
            
            <td colspan="2">
                        
            </td>
        </tr>
         <tr>
            
            <td colspan="2">
                         
            </td>
        </tr>
        <tr>
            <td>
                <h4 class="dropotron"><asp:Label ID="lblQ" runat="server" Text="Query:"></asp:Label></h4>
            </td>
            <td> 
                         <h4 class="dropotron"><asp:Label ID="lblQuery" runat="server"></asp:Label></h4>
            </td>
        </tr>
        <tr>
            
            <td colspan="2">
                        
            </td>
        </tr>
         <tr>
            
            <td colspan="2">
                         
            </td>
        </tr>
        <tr>
            <td>
                <h4 class="dropotron"><asp:Label ID="lblr" runat="server" Text="Reply:"></asp:Label></h4>
            </td>
            <td colspan="2">
                        <h4 class="dropotron"><asp:Label ID="lblReply" runat="server"></asp:Label></h4>
            </td>
        </tr>


        <tr>
            <td colspan="2" >
                        <center><asp:Button ID="sndmsg" runat="server" Text="Send Message" 
                                onclick="sndmsg_Click" /></center>
            </td>
        </tr>

    </table>
    </center>
    </form>
    </div>

</asp:Content>

