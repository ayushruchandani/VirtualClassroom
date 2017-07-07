<%@ Page Title="" Language="C#" MasterPageFile="~/student/afterlogin/Master_student_after.master" AutoEventWireup="true" CodeFile="ViewMessage.aspx.cs" Inherits="student_afterlogin_ViewMessage" %>

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
        
         <td align="left" colspan="3">
             <asp:Label ID="lblmsg" runat="server" Text="" CssClass="shadow" Font-Bold="false" Font-Size="Large" ForeColor="DarkBlue"> </asp:Label>
        </td>
    </tr>

    <tr>
         <td align="left" colspan="2">
            Search Queries
         </td>
         <td align="left">
             <asp:DropDownList ID="select" runat="server" 
                 onselectedindexchanged="select_SelectedIndexChanged">
                 <asp:ListItem Value="Search"></asp:ListItem>
                <asp:ListItem Value="Queries Uploaded only by you"></asp:ListItem>
                <asp:ListItem Value="Queries Uploaded by everyone in your course"></asp:ListItem>
             
             </asp:DropDownList>
             
        </td>
        <td>
            <asp:Button ID="show" runat="server" Text="Show" onclick="show_Click" />
        </td>
    </tr>

    <tr>
        <td colspan="3"></td>
    </tr>
    

     <tr>
        <td colspan="3">    <div class="shadow">
           
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
                                <td align="left"  valign="middle" style="width:150px;color:Green;">
                                <asp:Button ID="Button1"  runat="server" Text="View" class="shadow" 
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
    <td colspan="3"></td>
    </tr>
    <tr>
    <td colspan="3"></td>
    </tr>
    <tr>
    <td colspan="3"></td>
    </tr>
    <tr>
    <td colspan="3"></td>
    </tr>
    </table>
    
    
    </form>

</asp:Content>

