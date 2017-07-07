<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/afterlogin/Master_teacher_after.master" AutoEventWireup="true" CodeFile="Generate_Test.aspx.cs" Inherits="teacher_afterlogin_Generate_Test" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cci" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br /><br />
   <div style="font-size:large;" align="center">
        <h4 class="dropotron"><asp:Label ID="lblMessage" runat="server" Text="Generate Test"></asp:Label></h4>    
   </div>
   <br />
   <br />
   <br />
   <br />

   <div class="features-table">
    <form id="Form1" name="Generate_Test" runat="server">
    <center>
    <table>
        <tr>
            <td align="center" valign="middle">
                <asp:Button ID="gntTest" runat="server" Text="Generate New Test" 
                    onclick="gntTest_Click" />
            </td>
        </tr>
        <tr>
            <td align="center" valign="middle">
                <asp:Button ID="edtTest" runat="server" Text="View Previous Test" />
            </td>
        </tr>
    </table>
    </center>
    </form>
   </div>





</asp:Content>

