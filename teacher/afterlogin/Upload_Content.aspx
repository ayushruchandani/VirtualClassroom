<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/afterlogin/Master_teacher_after.master" AutoEventWireup="true" CodeFile="Upload_Content.aspx.cs" Inherits="teacher_afterlogin_Upload_Content" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="upload_content" runat="server">
<fieldset>
<legend class="dropotron">Upload Content Here</legend>
   <table  class="features-table" width="90%">
   <tr>
        <td>
            <div class="shadow" style="background-color:Navy;color:Lime"><asp:Label ID="lblerrmsg" runat="server" Text=""></asp:Label></div>
        </td>
   </tr>
   <tr>
        <th>
        <asp:Label ID="title1" runat="server" CssClass="form-text" ForeColor="Black" Text="Title of the content">
       
        </asp:Label>
        </th>


        <td>
        <asp:TextBox ID="content_title" runat="server"></asp:TextBox>
        
        </td>
    </tr>
    
    <tr>
        <th>
        <asp:Label ID="description" runat="server" CssClass="form-text" ForeColor="Black" Text="Description regarding topic">
       
        </asp:Label>
        </th>
        <td>
        <asp:TextBox ID="desc" TextMode="MultiLine" Columns="50"  Rows="10" runat="server"></asp:TextBox>
        
        </td>
    </tr>

    <tr>
        <th>
        <asp:Label ID="selectcont" runat="server" CssClass="form-text" ForeColor="Black" Text="Select File to Upload(Must be in '.ppt','.doc','.pdf','.jpg') format">
        </asp:Label>
        </th>

        <td>
            <asp:FileUpload ID="Fileupload123" runat="server" />
        </td>

    </tr>

    <tr>
        

        <td>
            <asp:Button ID="file_upload" runat="server" Text="Upload Content" 
                onclick="file_upload_Click" />
        </td>

    </tr>

   </table>


</fieldset>
</form>
</asp:Content>

