<%@ Page Title="" Language="C#" MasterPageFile="~/student/afterlogin/Master_student_after.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="student_afterlogin_Report" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  

    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
     <center>

     <br />
     <br />

     <div class="shadow" style="height:700px; width:900px; background-color:White; color:Black;" >

    <table width="100%" cellspacing="5" cellpadding="5">
        
            <tr>
                <th colspan="2">
                    <asp:Label ID="lblVC" runat="server" Text="VIRTUAL CLASSROOM" ForeColor="Blue" Font-Bold="true" Font-Names="ARIAL BLACK" Font-Size="XX-Large"></asp:Label>
                </th>
            </tr>



            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>



            <tr>
                <td align="left">
                    <asp:Image ID="studentImage" runat="server" Height="120" Width="90" BorderStyle="Ridge" BackColor="Azure" />            
                </td>
                <td align="right">
                    <asp:Label ID="lblDate" runat="server"></asp:Label>
                </td>
            </tr>


            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <asp:Label ID="lblWel" runat="server" Font-Bold="true" ForeColor="Red" Font-Names="Arial" Font-Size="X-Large"></asp:Label>
                </td>
                
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>


            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>


            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

             <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

             <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td align="left" style="font-size:x-large;">
                    This is to certify that <asp:Label ID="lblStudentName" runat="server" Font-Underline="true"></asp:Label> 
                    has successfully completed the test <asp:Label ID="lblTestName" runat="server" Font-Underline="true"></asp:Label>
                    under the course <asp:Label runat="server" ID="lblCourse" Font-Underline="true"></asp:Label>
                    by scoring <asp:Label ID="lblScore" runat="server" Font-Bold="true" Font-Underline="true"></asp:Label> out of
                    <asp:Label ID="lblMarks" runat="server" Font-Underline="true"></asp:Label>.
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td align="left" style="font-size:x-large;">
                    <asp:Label ID="lblGen" runat="server"></asp:Label> has secured <asp:Label ID="lblPer" runat="server" Font-Underline="true"></asp:Label> percentage and has <asp:Label ID="lblGrade" runat="server" Font-Underline="True"></asp:Label>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>
            
            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>


            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>
            
            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>


            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>
            
            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td></td>
                <td align="right">
                    <asp:Button ID="print" runat="server" Text="Print" onclick="print_Click" />
                </td>
            </tr>

        
    </table>
    </div>
    </center>
    </form>


</asp:Content>

