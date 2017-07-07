<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/afterlogin/AdminALMaster.master" AutoEventWireup="true" CodeFile="ViewRegisteredClass.aspx.cs" Inherits="Admin_afterlogin_ViewRegisteredClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/>
<div style="font-size:large;" align="center">
        <asp:Label ID="lblMessage" runat="server" CssClass="dropotron" Text="Registered Classes"></asp:Label>    
   </div>
<br/>
<form id="registered_class" runat="server">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" 
                onitemcommand="Repeater1_ItemCommand">
                <HeaderTemplate >
                <table  class="features-table">
                    <tr>
                        <th>Class_Id</th>
                        <th>Teacher_Id</th>
                        <th>Course</th>
                         <th>View-Details</th>
                    </tr>
                </HeaderTemplate>
                
                <ItemTemplate>
                      <tr>
                      
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"ClassId") %></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"TeacherId") %></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Course") %></td>
                                <td align="left"  valign="middle" style="width:150px;color:Green;">
                                <asp:Button ID="btnview"  runat="server" Text="View-Details" 
                                 CommandArgument='<%# Eval("ClassId") %>' CommandName="Show_details" BorderColor="ControlDark" Font-Italic="true" > </asp:Button></td>
                      </tr>
                </ItemTemplate>
                
                <FooterTemplate>
                </table>
                </FooterTemplate>
                
            </asp:Repeater>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString= "Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True"
      SelectCommand="SELECT [ClassId],[TeacherId],[Course] FROM ClassApproved" ></asp:SqlDataSource>
      </form>
</asp:Content>

