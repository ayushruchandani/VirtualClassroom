<%@ Page Title="" Language="C#" MasterPageFile="~/student/afterlogin/TestMaster.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="student_afterlogin_Test" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <script type="text/javascript" src="counter/src/jquery.countdown360.js"></script>
    

<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<div style="font-size:large;" align="center">
        <h4 class="dropotron">Test</h4>    
   </div>
   <br />
   <div class="features-table">
    <br />


    <div id="container">
			<center><asp:Label ID="time" runat="server" Text="Time Remaining"></asp:Label><div id="countdown"></div></center>
			<script type="text/javascript" charset="utf-8">
			    var session = '<%= Session["Times"] %>'
			    $("#countdown").countdown360({
			        radius: 60,
			        seconds: session ,
			        fontColor: '#FFFFFF',
			        autostart: false,
			        onComplete: function () {
			            document.getElementById('<%= submit_answer.ClientID %>').click();
                    }
			    }).start()
		  </script>
		</div>
    <center>
    <div class="shadow" style="height:500px; width:1000px; background-color:Silver; color:Black;" >
        <center><h4 class="dropotron"><asp:Label ID="lblTestName" runat="server"></asp:Label></h4></center>
        <center><h4 class="dropotron"><asp:Label ID="lblNumber" runat="server"></asp:Label></h4></center>
        <center><h4 class="dropotron"><asp:Label ID="lblMarks" runat="server"></asp:Label></h4></center>
        <br />
        <table width="100%">
            <tr>
                <td align="left">
                    <h4 class="dropotron"><asp:Label ID="lblQuestion" runat="server"></asp:Label> </h4>
                </td>
            </tr>

            <tr>
                <td align="left">
                    <asp:RadioButtonList ID="options" runat="server" RepeatDirection="Vertical">
                    </asp:RadioButtonList>
                </td>
            </tr>

             <tr>
                <td>
                    <asp:Button ID="submit_answer" runat="server" 
                        Text="Sumbit and Move to next question" onclick="submit_answer_Click" />
                
                        &nbsp; &nbsp;
                    <asp:Button ID="clear_answer" runat="server" Text="Clear Answer" onClientClick="this.form.reset();return false;" />
                </td>
            </tr>

        </table>
    </div>
    </center>
    </div>
   
</asp:Content>

