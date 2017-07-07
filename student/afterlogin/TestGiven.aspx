<%@ Page Title="" Language="C#" MasterPageFile="~/student/afterlogin/TestMaster.master" AutoEventWireup="true" CodeFile="TestGiven.aspx.cs" Inherits="student_afterlogin_TestGiven" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="font-size:large;" align="center">
        <h4 class="dropotron">Congratulations</h4>    
   </div>
   <br />
   <br />
   <center>
   <div class="features-table">
    <br />
        <table>
        
            <tr>
                <td align="center">
                    You have completed this test successfully.
                </td>
            </tr>
            

            <tr>
                <td align="center">
                    Your Score in this test is-
                </td>
            </tr>

            <tr>
                <td align="center">
                    <b><asp:Label ID="lblscore" runat="server"></asp:Label></b>
                </td>
            </tr>


             <tr>
                <td align="center">
                    <asp:Button ID="ViewReport" runat="server" Text="View Reports" 
                        onclick="ViewReport_Click" />
                </td>
            </tr>


            <tr>
                <td align="center">
                    <asp:Button ID="clsWindow" runat="server" Text="Close Window" onclick="clsWindow_Click" />
                </td>
            </tr>


        </table>


    </div>
    </center>
</asp:Content>

