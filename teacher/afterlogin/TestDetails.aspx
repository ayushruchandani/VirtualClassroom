<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/afterlogin/Master_teacher_after.master" AutoEventWireup="true" CodeFile="TestDetails.aspx.cs" Inherits="teacher_afterlogin_TestDetails" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cci" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<head runat="server"></head>    
    <br /><br />
   <div style="font-size:large;" align="center">
        <h4 class="dropotron"><asp:Label ID="lblMessage" runat="server" Text="Test Details"></asp:Label></h4>    
   </div>
   <br />
   <br />
   <br />
   <br />

   <div class="features-table">
    <form id="Form1" name="Test_Details" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <center>
    <table width="100%">
        <tr>
            <td align="left">
                         <h4 class="dropotron">Enter Test Name:</h4><span style="color:Red">*</span>
            </td>
            <td align="left">
                        <asp:TextBox ID="testName" runat="server" placeholder="Test Name" />
                        
                        <asp:RequiredFieldValidator ID="rfvtname" runat="server" ControlToValidate="testName"  ErrorMessage="Please Enter a Valid Test Name..!!" Display="None" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="ccitname" runat="server" TargetControlID="rfvtname"  ></cci:ValidatorCalloutExtender>

                    </td>
        </tr>
        <tr>
            <td align="left">
                         <h4 class="dropotron">Enter Total Marks or Questions(Max 50):</h4><span style="color:Red">*</span>
            </td>
            <td align="left">
                        <asp:TextBox ID="marks" runat="server" placeholder="Total Marks/Questions" />
                        
                        <asp:RequiredFieldValidator ID="rfvmarks" runat="server" ControlToValidate="marks"  ErrorMessage="Please Enter Total Number Of Questions..!!" Display="None" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="ccimarks" runat="server" TargetControlID="rfvmarks"  ></cci:ValidatorCalloutExtender>
                        <asp:RangeValidator ID="ranmarks" runat="server" ControlToValidate="marks" MinimumValue="2" MaximumValue="50" ErrorMessage="The maximum marks should be 50 and minimum should be 20." Display="None" SetFocusOnError="true"></asp:RangeValidator>
                        <cci:ValidatorCalloutExtender ID="cciranmarks" runat="server" TargetControlID="ranmarks"  ></cci:ValidatorCalloutExtender>
                        <%--<asp:RegularExpressionValidator ID="regmarks" ControlToValidate="marks" runat="server" ValidationExpression="\[0-9]" ErrorMessage="You can enter only numbers" Display="None" SetFocusOnError="true"></asp:RegularExpressionValidator>
                        <cci:ValidatorCalloutExtender ID="cciregmarks" runat="server" TargetControlID="regmarks"  ></cci:ValidatorCalloutExtender>--%>
            </td>
        </tr>
        <tr>
                    <td align="left">
                         <h4 class="dropotron">Select Time alloted for One Question(in seconds):</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:DropDownList ID="time" runat="server" 
                            onselectedindexchanged="time_SelectedIndexChanged">
                        <asp:ListItem Value="Select Time"></asp:ListItem>
                        <asp:ListItem Value="30"></asp:ListItem>
                        <asp:ListItem Value="60"></asp:ListItem>
                        <asp:ListItem Value="90"></asp:ListItem>
                        <asp:ListItem Value="120"></asp:ListItem>
                        
                    </asp:DropDownList>&nbsp;
                        <asp:RequiredFieldValidator ID="rfvtime" runat="server" ControlToValidate="time"  ErrorMessage="Please select the time alloted for one question..!!" Display="None" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="ccitime" runat="server" TargetControlID="rfvtime"  ></cci:ValidatorCalloutExtender>

                    </td>
         </tr>
         <tr>
            <td colspan="2" align="center">
                <h4 class="dropotron"><asp:Label ID="lblTTime" runat="server"></asp:Label></h4>
            </td>
         </tr>

         <tr>
                    <td></td>
                    <td></td>
               </tr>
               <tr>
                    <td>
                    
                    </td>
                    
                    <td align="left">
                    
                        <asp:Button ID="btnSubmitTestDetails" runat="server" Text="Submit Test Details" 
                            onclick="btnSubmitTestDetails_Click"  />
                       
                        
                    </td>
               </tr>

    </table>
    </center>
    </form>
   </div>


</asp:Content>

