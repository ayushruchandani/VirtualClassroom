<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forgottpass.aspx.cs" Inherits="Forgottpass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form runat="server" id="forgotpass">
<br /><br />
   <div style="font-size:large;" align="center">
        <h4 class="dropotron"><asp:Label ID="TITLEPASS" runat="server" Text="Password Recovery"></asp:Label></h4>    
   </div>
   <br />

<div class="effect8" style="padding:150px">
<center>
<div class="shadow" style="background-color:Navy;color:White">

<asp:Label ID="lblselectuser" runat="server" Text="Select user"></asp:Label>
<asp:RadioButtonList ID="rbselectuser" runat="server">
        <asp:ListItem Selected="True">Student</asp:ListItem>
        <asp:ListItem Selected="False">Teacher</asp:ListItem>
</asp:RadioButtonList>
<asp:Label ID="lblEmail" runat="server" Text="Email Address: " CssClass="lbl"/>
<asp:TextBox ID="txtEmail" runat="server" Height="22px"/>
<asp:RequiredFieldValidator ID="RV1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Enter Email ID" SetFocusOnError="True">*</asp:RequiredFieldValidator>
<asp:Button ID="btnPass" runat="server" Text="Submit" onclick="btnPass_Click"/>

</div>
<asp:ValidationSummary ID="ValidationSummary1" 
                       runat="server" CssClass="error"/>
<div class="shadow" style="background-color:Lime;color:Navy"><asp:Label ID="lblMessage" runat="server" Text="" CssClass="lbl"/></div>
</center>
</div>
</form>

</asp:Content>

