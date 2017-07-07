<%@ Page Title="" Language="C#" MasterPageFile="~/student/afterlogin/Master_student_after.master" AutoEventWireup="true" CodeFile="Gotovirtualclass.aspx.cs" Inherits="student_afterlogin_Gotovirtualclass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
   <div style="font-size:large;" align="center">
        <asp:Label ID="title" CssClass="dropotron" runat="server" Text="Go to Virtual-Classroom" Width="550px"></asp:Label>    
   </div>
   <br />

   <hr class="shadow" />


<div class="effect8" style="padding:150px">
    <center>
        <table class="features-table">
            <tr>
                <td>
                    Topic
                </td>
                
                <td>
                    <asp:Label ID="lbltopic" runat="server" Text="Label"></asp:Label></td>

                <td colspan="2" rowspan="5">
                    <a href="Virtualclass.htm"><asp:Image ID="imgclass" runat="server" ToolTip="Click here to go to the classroom..!!" ImageUrl="~/images/class.png" /></a>
                </td>

                            
            </tr>

             <tr>
                <td>Description</td>
                <td>
                    <asp:Label ID="lbldesc" runat="server" Text="Label"></asp:Label></td>
                
             </tr>

             <tr>
                <td>Starting Time</td>
                <td>
                    <asp:Label ID="lblstime" runat="server" Text="Label"></asp:Label></td>
                
             </tr>

             <tr>
                <td>Completion Time</td>
                <td>
                    <asp:Label ID="lbletime" runat="server" Text="Label"></asp:Label></td>
                
             </tr>

             <tr>
                <td>Total Duration</td>
                <td>
                    <asp:Label ID="lbldur" runat="server" Text="Label"></asp:Label></td>
                
             </tr>


            </table>
    </center>
</div>
</asp:Content>

