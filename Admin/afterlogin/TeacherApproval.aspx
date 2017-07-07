<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/afterlogin/AdminALMaster.master" AutoEventWireup="true" CodeFile="TeacherApproval.aspx.cs" Inherits="Admin_afterlogin_TeacherApproval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <br/>
<div style="font-size:large;" align="center">
        <asp:Label ID="lblMessage" runat="server" CssClass="dropotron" Text="Teacher-Requests"></asp:Label>    
   </div>
<br/>

      <form id="teacher_approval" runat="server">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" 
                onitemcommand="Repeater1_ItemCommand">
                <HeaderTemplate >
                <table  class="features-table">
                    <tr>
                        <th>Teacher_Id</th>
                        <th>Teacher_Name</th>
                        <th>Email_ID</th>
                        <th>Field</th>
                        <th>Course</th>
                        <th>Details</th>
                    </tr>
                </HeaderTemplate>
                
                <ItemTemplate>
                      <tr>
                      
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"TeacherId") %></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Firstname") %></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"EmailId") %></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Field") %></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Course") %></td>
                                <td align="left"  valign="middle" style="width:150px;color:Green;">
                                <asp:Button ID="Button1"  runat="server" Text="View-Details" 
                                 CommandArgument='<%# Eval("EmailId") %>' CommandName="Show_details" BorderColor="ControlDark" Font-Italic="true" > </asp:Button></td>
                      </tr>
                </ItemTemplate>
                
                <FooterTemplate>
                </table>
                </FooterTemplate>
                
            </asp:Repeater>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString= "Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True"
      SelectCommand="SELECT [TeacherId],[Firstname],[EmailId],[Field],[University_College],[Course] FROM TeacherTemp" ></asp:SqlDataSource>
      </form> 
</asp:Content>

