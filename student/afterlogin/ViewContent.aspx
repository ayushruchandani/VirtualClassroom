<%@ Page Title="" Language="C#" MasterPageFile="~/student/afterlogin/Master_student_after.master" AutoEventWireup="true" CodeFile="ViewContent.aspx.cs" Inherits="student_afterlogin_ViewContent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server" id="view_content">
    <div class="effect8">
    <asp:Repeater ID="Repeater1" runat="server" 
        onitemcommand="Repeater1_ItemCommand">
        <HeaderTemplate>
            <table class="features-table">
            
            <tr>
            
                <th>Title</th>
                <th>Description</th>
                <th>Type</th>
                <th>Download</th>
            </tr>

            
        </HeaderTemplate>
        
        <ItemTemplate>
            
            <tr>
                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Content_Title") %></td>
                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Description") %></td>
                <td align="left" valign="middle" style="width:150px;color:Green;"><%# DataBinder.Eval(Container.DataItem,"Content_Type") %></td>
                <td><asp:Button ID="btn_download"  runat="server" Text="DOWNLOAD" 
                                 CommandArgument='<%# Eval("ContentId") %>' CommandName="Download_details" BorderColor="ControlDark" Font-Italic="true" > </asp:Button></td>
            </tr>
        </ItemTemplate>


        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
    </div>
    </form>
</asp:Content>

