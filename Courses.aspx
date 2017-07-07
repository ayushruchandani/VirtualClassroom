<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Courses.aspx.cs" Inherits="Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br /><br />
   <div style="font-size:large;" align="center">
        <asp:Label ID="title" CssClass="dropotron" runat="server" Text="Available Courses" Width="150px"></asp:Label>    
   </div>
   <br />

   <hr class="shadow" />

    <form id="course_search" runat="server">
    <table width="100%"  style="text-align:center;" class="shadow">
    
    
    
    <tr>
        
         <td align="left">
             <asp:Label ID="lblmsg" runat="server" Text="" CssClass="shadow" Font-Bold="false" Font-Size="Large" ForeColor="DarkBlue"> </asp:Label>
        </td>
    </tr>
    <tr>    
        <td>
            <asp:Label ID="Label1" runat="server" class="shadow" Text="Search Course:"></asp:Label>
            <asp:TextBox ID="search_txtbox" placeholder="Enter course name here.." runat="server"></asp:TextBox>
            <asp:Button ID="btnsearch"  runat="server" Text="Search" 
            onclick="btnsearch_Click" />
        </td>



    </tr>

    <tr>
        <td>    <div class="shadow">
           
                <asp:DataList ID="datalist" runat="server" OnItemCommand="datalist_ItemCommand">
                    <HeaderTemplate >
                        <table  class="features-table">
                            <tr>
                                <th>Course_Cover</th>
                                <th>Field</th>
                                <th>Course</th>
                                <th>University</th>
                                <th>View Details</th>
                            </tr>
                    </HeaderTemplate>
                    
                    <ItemTemplate>
                      <tr>
                        
                                <td ><asp:Image ID="Image1" class="shadow" runat="server" Width="250" Height="150" ImageUrl='<%# "~/images/" + Eval("Cover_filename") %>' /></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Field") %></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Course") %></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"University_college") %></td>
                                <td align="left"  valign="middle" style="width:150px;color:Green;">
                                <asp:Button ID="Button1"  runat="server" Text="View-Details" class="shadow" 
                                 CommandArgument='<%# Eval("TeacherId") %>' CommandName="Show_Course_Details" BorderColor="ControlDark" Font-Italic="true" > </asp:Button></td>
                      </tr>
                </ItemTemplate>
                
                <FooterTemplate>
                </table>
                </FooterTemplate>
                
                </asp:DataList>
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

