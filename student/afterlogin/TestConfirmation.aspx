<%@ Page Title="" Language="C#" MasterPageFile="~/student/afterlogin/Master_student_after.master" AutoEventWireup="true" CodeFile="TestConfirmation.aspx.cs" Inherits="student_TestConfirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form name="inst" runat="server">
        <br />
      
        
        <asp:Label ID="testid" runat="server"></asp:Label>
        <center><h4 class="dropotron"><asp:Label ID="inst" runat="server" Text="INSTRUCTIONS"></asp:Label></h4>
        </center>
        <br /><br />
        <center>
        <div class="effect8">
        <table>
            <tr>
                <td align="right">
                    1)
                </td>
                <td align="left">
                    You cannot refresh the test at any moment.
                </td>
            </tr>

            <tr>
                <td align="right">
                    2)
                </td>
                <td align="left">
                    Answer once submitted cannot be changed.
                </td>
            </tr>
        
            
            <tr>
                <td align="right">
                    3)
                </td>
                <td align="left">
                    You cannot move back or forward in the test. Questions will be in sequential order only.
                </td>
            </tr>


            <tr>
                <td align="right">
                    4)
                </td>
                <td align="left">
                    Marks and Time is decided by the teacher. The time duration for a question in this test is <b><asp:Label ID="lblTime" runat="server"></asp:Label></b>
                    and the total number of questions in this test are <b><asp:Label ID="lblQues" runat="server"></asp:Label></b>.
                </td>
            </tr>

            <tr>
                <td align="right">
                    5)
                </td>
                <td align="left">
                    There is no negative marking in this test. You will be awarded one mark for each right answer.
                </td>
            </tr>

            <tr>
                <td align="right">
                    6)
                </td>
                <td align="left">
                    Once you have appeared for the test, you cannot appear for it again.
                </td>
            </tr>


            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="start_test" runat="server" Text="Start Test" 
                        onclick="start_test_Click" />&nbsp;
                    <asp:Button ID="cancel_test" runat="server" Text="Cancel" onclick="cancel_test_Click"/>
                </td>
                <td align="left">
                    
                </td>
            </tr>


        </table>
        </div>
            <h4 class="dropotron"><asp:Label ID="bol" runat="server" Text="BEST OF LUCK"></asp:Label></h4>

        </center>
    </form>
</asp:Content>

