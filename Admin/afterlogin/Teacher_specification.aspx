<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/afterlogin/AdminALMaster.master" AutoEventWireup="true" CodeFile="Teacher_specification.aspx.cs" Inherits="Admin_afterlogin_Teacher_specification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
     <form id="specification" runat="server">
     <asp:Label ID="lblerrmsg" runat="server"></asp:Label>
     <table width="100%">
     <tr>
        <td>

     <table  border="1" width="60%"  class="features-table" style="text-align:center;">
               
     <tr>
        <th class="form-text">Profile-Pic</th>
        <td align="center">
            <asp:Image ID="Profile_pic" runat="server"  Height="150" Width="150"/></td>
     </tr>

     <tr>
        <th class="form-text" >FirstName</th>
        <td align="left"><asp:Label ID="Firstname" runat="server" Text="null"></asp:Label></td>
     </tr>

     <tr>
        <th class="form-text">LastName</th>
        <td align="left"><asp:Label ID="Lastname" runat="server" Text="null"></asp:Label></td>
     </tr>

     <tr>
        <th class="form-text">Gender</th>
        <td align="left"><asp:Label ID="Gender_select" runat="server" Text="null"></asp:Label></td>
     </tr>

    <tr>
        <th class="form-text">EmailId</th>
        <td align="left"><asp:Label ID="Email" runat="server" Text="null"></asp:Label></td>
    </tr>

     <tr>
        <th class="form-text">Contact-Number</th>
        <td align="left"><asp:Label ID="Contact_number" runat="server" Text="null"></asp:Label></td>
     </tr>
    
    <tr>
        <th class="form-text">Field/Branch</th>
        <td align="left"><asp:Label ID="Field_name" runat="server" Text="null"></asp:Label></td>
    </tr>

     <tr>
        <th class="form-text">University</th>
        <td align="left"><asp:Label ID="University_name" runat="server" Text="null"></asp:Label></td>
    </tr>

    <tr>
        <th class="form-text">Id-Proof</th>
        <td align="center">
            <asp:Image ID="Idproof" runat="server"  Height="150" Width="150"/>
            <asp:ImageButton ID="download_details" 
                ImageUrl="~/images/1424783242_download.png" runat="server" 
                onclick="download_details_Click" />
         </td>
            
     </tr>

    <tr>
        <th class="form-text">Course_Name</th>
        <td align="left"><asp:Label ID="Course_name" runat="server" Text="null"></asp:Label></td>
    </tr>

    <tr>
        <th class="form-text">Course Starting Date</th>
        <td align="left"><asp:Label ID="Course_Start_Date" runat="server" Text="null"></asp:Label></td>
    </tr>
    <tr>
        <th class="form-text">Course Ending Date</th>
        <td align="left"><asp:Label ID="Course_Ending_Date" runat="server" Text="null"></asp:Label></td>
    </tr>
    <tr>
        <th class="form-text">Course Description</th>
        <td align="left"><asp:Label  ID="Course_Description" runat="server"  Text="null"></asp:Label></td>
    </tr>
   <%--<tr>
        <td>Course Description</td>
        <td align="left"><asp:Label  ID="check" runat="server"  Text="null"></asp:Label></td>
    </tr>--%>
    <tr>
        <td colspan="2">
            <asp:Button ID="accept_request" runat="server" Text="Accept Request" 
                onclick="accept_request_Click1"/>
            <asp:Button ID="request_denied" runat="server" Text="Deny Request" onclick="request_denied_Click" 
                />
        </td>
     </tr>   
            
    
    </table>
    </td>
    </tr>
    </table>
    </form>



</asp:Content>

