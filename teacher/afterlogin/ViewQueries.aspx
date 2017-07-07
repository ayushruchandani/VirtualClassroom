<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/afterlogin/Master_teacher_after.master" AutoEventWireup="true" CodeFile="ViewQueries.aspx.cs" Inherits="teacher_afterlogin_ViewQueries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <br /><br />
   <div style="font-size:large;" align="center">
        <asp:Label ID="title" CssClass="dropotron" runat="server" Text="Queries" Width="150px"></asp:Label>    
   </div>
   <br />

   <hr class="shadow" />

    <form id="queries" runat="server">
    <table width="100%"  style="text-align:center;" class="shadow">
    
    
    
    <tr>
        
         <td align="left">
             <asp:Label ID="lblmsg" runat="server" Text="" CssClass="shadow" Font-Bold="false" Font-Size="Large" ForeColor="DarkBlue"> </asp:Label>
        </td>
    </tr>
    

     <tr>
        <td>    <div class="shadow">
           
                <asp:Repeater ID="Repeater1" runat="server" 
                    onitemcommand="Repeater1_ItemCommand" >
                    <HeaderTemplate >
                        <table  class="features-table">
                            <tr>
                                <th>Teacher Id</th>
                                <th>Student Id</th>
                                <%--<th>Teacher Name</th>--%>
                                <th>Title</th>
                                <th>Message</th>
                            </tr>
                    </HeaderTemplate>
                    
                    <ItemTemplate>
                      <tr>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"TeacherId") %></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"StudentId") %></td>
                               <%-- <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Teacher Name") %></td>--%>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Title") %></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Query") %></td>
                                <td align="left"  valign="middle" style="width:150px;color:Green;">
                                <asp:Button ID="Button1"  runat="server" Text="Reply" class="shadow" 
                                 CommandArgument='<%# Eval("QueryId") %>' CommandName="View_Query" BorderColor="ControlDark" Font-Italic="true" > </asp:Button></td>
                      </tr>
                </ItemTemplate>
                
                <FooterTemplate>
                </table>
                </FooterTemplate>
                
                </asp:Repeater>
            </div>
        </td>
    </tr>
    <tr>
    <td></td>
    </tr>
    <tr>
    <td></td>
    </tr>
    <tr>
    <td></td>
    </tr>
    <tr>
    <td></td>
    </tr>
    </table>
    
    
    </form>

</asp:Content>

