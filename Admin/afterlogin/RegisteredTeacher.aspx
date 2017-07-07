<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/afterlogin/AdminALMaster.master" AutoEventWireup="true" CodeFile="RegisteredTeacher.aspx.cs" Inherits="Admin_afterlogin_RegisteredTeacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="registered_teacher" runat="server">
<br/>
<div style="font-size:large;" align="center">
        <asp:Label ID="lblMessage" runat="server" CssClass="dropotron" Text="Registered-Teachers"></asp:Label>    
   </div>
<br/>

<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" 
    onitemcommand="Repeater1_ItemCommand">
                <HeaderTemplate >
                <table  class="features-table">
                    <tr>
                        <th>Teacher_Id</th>
                        <th>Email_ID</th>
                        <th>Field</th>
                        <th>Course</th>
                        <th>Remove</th>
                        <th>View/Edit Details</th>
                    </tr>
                </HeaderTemplate>
                
                <ItemTemplate>
                      <tr>
                      
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"TeacherId") %></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"EmailId") %></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Field") %></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Course") %></td>
                                <td><asp:Button ID="Button2"  runat="server" Text="Delete-User" 
                                 CommandArgument='<%# Eval("TeacherId") %>' CommandName="Remove_details" BorderColor="ControlDark" Font-Italic="true" > </asp:Button></td>
                                <td><asp:Button ID="Button1"  runat="server" Text="View Details" 
                                 CommandArgument='<%# Eval("TeacherId") %>' CommandName="Show_details" BorderColor="ControlDark" Font-Italic="true" > </asp:Button></td>
                      </tr>
                </ItemTemplate>
                
                <FooterTemplate>
                </table>
                </FooterTemplate>
                
            </asp:Repeater>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString= "Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True"
      SelectCommand="SELECT [TeacherId],[EmailId],[Field],[Course] FROM Teachermaster" ></asp:SqlDataSource>
      </form>
</asp:Content>

