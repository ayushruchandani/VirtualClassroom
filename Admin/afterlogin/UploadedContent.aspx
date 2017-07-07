﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/afterlogin/AdminALMaster.master" AutoEventWireup="true" CodeFile="UploadedContent.aspx.cs" Inherits="Admin_afterlogin_UploadedContent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<form  id="review_content" runat="server">
<br/>
<div style="font-size:large;" align="center">
        <asp:Label ID="lblMessage" runat="server" CssClass="dropotron" Text="Uploaded-Contents"></asp:Label>    
   </div>
<br/>

    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" 
        onitemcommand="Repeater1_ItemCommand">

                <HeaderTemplate>
                    <table class="features-table">
                        <th>Content_Id</th>
                        <th>Teacher_Id</th>
                        <%--<th>Teacher_Name</th>--%>
                        <th>Course</th>
                        <%--<th>Filename</th>
                        <th>Extension</th>--%>
                        <th>Remove</th>
                        <th>View-Details</th>
                </HeaderTemplate>

                <ItemTemplate>
                
                        <tr>
                             <td align="center" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"ContentId") %></td>
                             <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"TeacherId") %></td>
                             <%--<td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Teacher") %></td>--%>
                             <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Course") %></td>
                             <%--<td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Filename") %></td>
                             <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Content_Type") %></td>--%>
                             <td align="left"  valign="middle" style="width:150px;color:Green;">
                                <asp:Button ID="Button1"  runat="server" Text="Delete-Content" 
                                 CommandArgument='<%# Eval("ContentId") %>' CommandName="Delete_content_details" BorderColor="ControlDark" Font-Italic="true" > </asp:Button></td>    
                                 <td align="left"  valign="middle" style="width:150px;color:Green;">
                                <asp:Button ID="Button2"  runat="server" Text="View-Details" 
                                 CommandArgument='<%# Eval("ContentId") %>' CommandName="Show_content_details" BorderColor="ControlDark" Font-Italic="true" > </asp:Button></td>    
                        </tr>
                </ItemTemplate>
                 <FooterTemplate>
                </table>
                </FooterTemplate>

    </asp:Repeater>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString= "Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\VirtualClassroom.mdf;Integrated Security=True;User Instance=True"
SelectCommand="SELECT [ContentId],[TeacherId],[Course] FROM Content"></asp:SqlDataSource>
</form>

</asp:Content>

