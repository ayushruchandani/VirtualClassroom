<%@ Page Title="" Language="C#" MasterPageFile="~/student/afterlogin/Master_student_after.master" AutoEventWireup="true" CodeFile="ViewReport.aspx.cs" Inherits="student_afterlogin_Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <form id="view_report" runat="server">
            <asp:Repeater ID="Repeater1" runat="server" 
                onitemcommand="Repeater1_ItemCommand" >
                <HeaderTemplate >
                <table  class="features-table">
                    <tr>
                        <th>Test Id</th>
                        <th>Test Name</th>
                        <th>Course Name</th>
                        <th>Score</th>
                        <th>Total Marks</th>
                    </tr>
                </HeaderTemplate>
                
                <ItemTemplate>
                      <tr>
                      
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"TestId") %></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"TestName") %></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Course") %></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Score") %></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Marks") %></td>
                                <td><asp:Button ID="Button1"  runat="server" Text="View Report" 
                                 CommandArgument='<%# Eval("TestId") %>' CommandName="View_Reports" BorderColor="ControlDark" Font-Italic="true" > </asp:Button></td>
                      </tr>
                </ItemTemplate>
                
                <FooterTemplate>
                </table>
                </FooterTemplate>
                
            </asp:Repeater>
 
      </form>

</asp:Content>

