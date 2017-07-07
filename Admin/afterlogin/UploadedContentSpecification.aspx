<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/afterlogin/AdminALMaster.master" AutoEventWireup="true" CodeFile="UploadedContentSpecification.aspx.cs" Inherits="Admin_afterlogin_UploadedContentSpecification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<form id="content_specification" runat="server">
<br/>
<div style="font-size:large;" align="center">
        <asp:Label ID="lblMessage" runat="server" CssClass="dropotron" Text="Content's Details"></asp:Label>    
   </div>
<br/>

     <asp:Label ID="lblerrmsg" runat="server"></asp:Label>
     <table  border="1" width="60%"  class="features-table" style="text-align:center;">
               
     <tr>
        <th class="form-text">Content_Id</th>
        <td align="center">
            <asp:Label ID="Cont_Id" runat="server" Text="null"></asp:Label>
        </td>
     </tr>

     <tr>
        <th class="form-text" >Teacher_Id</th>
        <td align="left">
            <asp:Label ID="Teach_Id" runat="server" Text="null"></asp:Label>
        </td>
     </tr>

     <tr>
        <th class="form-text">Teacher_Name</th>
        <td align="left">
            <asp:Label ID="Teach_Name" runat="server" Text="null"></asp:Label>
        </td>
     </tr>

     <tr>
        <th class="form-text">Content_Type</th>
        <td align="left">
            <asp:Label ID="Cont_Type" runat="server" Text="null"></asp:Label>
        </td>
     </tr>

    <tr>
        <th class="form-text">Course</th>
        <td align="left">
            <asp:Label ID="crs" runat="server" Text="null"></asp:Label>
        </td>
    </tr>

     <tr>
        <th class="form-text">Content_Title</th>
        <td align="left">
            <asp:Label ID="Cont_Title" runat="server" Text="null"></asp:Label>
        </td>
     </tr>
    
    <tr>
        <th class="form-text">Content_Size(in bytes)</th>
        <td align="left">
            <asp:Label ID="Cont_Size" runat="server" Text="null"></asp:Label>
        </td>
    </tr>

     <tr>
        <th class="form-text">Content_Path</th>
        <td align="left">
            <asp:Label ID="Cont_Path" runat="server" Text="null"></asp:Label>
        </td>
    </tr>

   <%-- <tr>
        <th class="form-text">Download_Content to inspect</th>
        <td align="center">
            <asp:ImageButton ID="download_content" 
                ImageUrl="~/images/1424783242_download.png" runat="server" 
                onclick="download_content_Click"/>
         </td>
            
     </tr>--%>

    <tr>
        <th class="form-text">Content_FileName</th>
        <td align="left">
            <asp:Label ID="Cont_Filename" runat="server" Text="null"></asp:Label>
        </td>
    </tr>

    <tr>
        <th class="form-text">Content_Description</th>
        <td align="left"><asp:Label ID="Cont_Desc" runat="server"></asp:Label></td>
    </tr>
    
    
   <%-- <tr>
        <td colspan="2">
            <asp:Button ID="accept_request" runat="server" Text="Approve Content" 
                onclick="accept_request_Click"/>
            <asp:Button ID="request_denied" runat="server" Text="Reject Content" 
                onclick="request_denied_Click" />
        </td>
     </tr>   
            --%>
    
    </table>
    </form>

</asp:Content>

