<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/afterlogin/AdminALMaster.master" AutoEventWireup="true" CodeFile="Class_specification.aspx.cs" Inherits="Admin_afterlogin_Class_specification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br/><br/>
    <div style="font-size:large;" align="center">
        <asp:Label ID="lblMessage" runat="server" CssClass="dropotron" Text="Classroom-Specification"></asp:Label>    
   </div>
<br/>
    <form id="class_specification" runat="server">
     <asp:Label ID="lblerrmsg" runat="server"></asp:Label>
     
     <table   width="60%" border="1"  class="features-table" style="text-align:center;">
               
     <tr>
        <th class="form-text">Class_Id</th>
        <td align="center">
            <asp:Label ID="Cls_Id" runat="server"></asp:Label>
        </td>
     </tr>

     <tr>
        <th class="form-text" >Teacher_Id</th>
        <td align="left">
            <asp:Label ID="Teach_Id" runat="server"></asp:Label>
        </td>
     </tr>

    

     <tr>
        <th class="form-text">Course_Name</th>
        <td align="left">
            <asp:Label ID="course" runat="server"></asp:Label>
        </td>
     </tr>

     <tr>
        <th class="form-text">Topic_Name</th>
        <td align="left">
            <asp:Label ID="clstopic_name" runat="server"></asp:Label>
        </td>
     </tr>

    <tr>
        <th class="form-text">Topic Description</th>
        <td align="left">
            <asp:Label ID="clsdesc" runat="server"></asp:Label>
        </td>
    </tr>

     <tr>
        <th class="form-text">Date of class</th>
        <td align="left">
            <asp:Label ID="clsdate" runat="server"></asp:Label>
        </td>
     </tr>
    
    <tr>
        <th class="form-text">Class Staring Time</th>
        <td align="left">
            <asp:Label ID="clsst" runat="server"></asp:Label>
        </td>
    </tr>

     <tr>
        <th class="form-text">Class Ending Time</th>
        <td align="left">
            <asp:Label ID="clset" runat="server"></asp:Label>
        </td>
    </tr>

    <tr>
        <th class="form-text">Total Duration of Session</th>
        <td align="center">
            <asp:Label ID="clsdur" runat="server" Text="null"></asp:Label>
         </td>
            
     </tr>

    
    
    
    <tr>
        <td colspan="2" align="center">
            <asp:Button ID="accept_class_request" runat="server" 
                Text="Approve Class Request" onclick="accept_class_request_Click"/>&nbsp;
            <asp:Button ID="request_denied" runat="server" Text="Reject Class Request" 
                onclick="request_denied_Click"/>
        </td>
     </tr>   
            
    
    </table>
    </form>


</asp:Content>

