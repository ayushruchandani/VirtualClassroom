<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/afterlogin/Master_teacher_after.master" AutoEventWireup="true" CodeFile="AddQuestions.aspx.cs" Inherits="teacher_afterlogin_AddQuestions" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cci" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head runat="server"></head>    
    <br /><br />
   <div style="font-size:large;" align="center">
        <h4 class="dropotron"><asp:Label ID="lblMessage" runat="server" Text="Add Questions"></asp:Label></h4>    
   </div>
   <br />
   <br />

   <div class="features-table">
    <form id="frm" name="Add_Questions" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
    <center>

    <table width="100%">
        <tr>
            <td align="left">
                         <h4 class="dropotron">Enter Question Number:</h4><span style="color:Red">*</span>
            </td>
            <td align="left">
                        <asp:TextBox ID="qNo" runat="server" placeholder="Question Number" />
                        
                        <asp:RequiredFieldValidator ID="rfvqno" runat="server" ControlToValidate="qNo"  ErrorMessage="Please Enter the Question Number" Display="None" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="cciqno" runat="server" TargetControlID="rfvqno"  ></cci:ValidatorCalloutExtender>

             </td>
        </tr>

        <tr>
            <td align="left">
                         <h4 class="dropotron">Enter Question:</h4><span style="color:Red">*</span>
            </td>
            <td align="left">
                        <asp:TextBox ID="question" TextMode="MultiLine" runat="server" placeholder="Question" Rows="4" Columns="30" />
                        
                        <asp:RequiredFieldValidator ID="rfvquestion" runat="server" ControlToValidate="question"  ErrorMessage="Please Enter the Question" Display="None" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="cciquestion" runat="server" TargetControlID="rfvquestion"  ></cci:ValidatorCalloutExtender>

             </td>
        </tr>



        <tr>
            <td align="center" colspan="2"><center><h4 class="dropotron"><asp:Label ID="Label1" runat="server" Text="Options"></asp:Label></h4></center></td>  
        </tr>



        <tr>
            <td colspan="2"></td>
        </tr>



        <tr>
            <td align="left">
                         <h4 class="dropotron">Option 1:</h4><span style="color:Red">*</span>
            </td>
            <td align="left">
                        <asp:TextBox ID="option1" runat="server" placeholder="Option 1" />
                        
                        <asp:RequiredFieldValidator ID="rfvoption1" runat="server" ControlToValidate="option1"  ErrorMessage="Enter Option 1" Display="None" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="ccioption1" runat="server" TargetControlID="rfvoption1"  ></cci:ValidatorCalloutExtender>

             </td>
        </tr>



        <tr>
            <td align="left">
                         <h4 class="dropotron">Option 2:</h4><span style="color:Red">*</span>
            </td>
            <td align="left">
                        <asp:TextBox ID="option2" runat="server" placeholder="Option 2" />
                        
                        <asp:RequiredFieldValidator ID="rfvoption2" runat="server" ControlToValidate="option2"  ErrorMessage="Enter Option 2" Display="None" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="ccioption2" runat="server" TargetControlID="rfvoption2"  ></cci:ValidatorCalloutExtender>

             </td>
        </tr>



        <tr>
            <td align="left">
                         <h4 class="dropotron">Option 3:</h4><span style="color:Red">*</span>
            </td>
            <td align="left">
                        <asp:TextBox ID="option3" runat="server" placeholder="Option 3" />
                        
                        <asp:RequiredFieldValidator ID="rfvoption3" runat="server" ControlToValidate="option3"  ErrorMessage="Enter Option 3" Display="None" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="ccioption3" runat="server" TargetControlID="rfvoption3"  ></cci:ValidatorCalloutExtender>

             </td>
        </tr>



        <tr>
            <td align="left">
                         <h4 class="dropotron">Option 4:</h4><span style="color:Red">*</span>
            </td>
            <td align="left">
                        <asp:TextBox ID="option4" runat="server" placeholder="Option 4" />
                        
                        <asp:RequiredFieldValidator ID="rfvoption4" runat="server" ControlToValidate="option4"  ErrorMessage="Enter Option 4" Display="None" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="ccioption4" runat="server" TargetControlID="rfvoption4"  ></cci:ValidatorCalloutExtender>

             </td>
        </tr>


        <tr>
            <td colspan="2"></td>
        </tr>

        <tr>
            <td colspan="2"></td>
        </tr>



        <tr>
            <td align="left">
                         <h4 class="dropotron">Answer:</h4><span style="color:Red">*</span>
            </td>
            <td align="left">
                        <asp:TextBox ID="answer" runat="server" placeholder="Answer" 
                            ontextchanged="answer_TextChanged" />
                        
                        <asp:RequiredFieldValidator ID="rfvanswer" runat="server" ControlToValidate="answer"  ErrorMessage="Enter Answer" Display="None" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="ccianswer" runat="server" TargetControlID="rfvanswer"  ></cci:ValidatorCalloutExtender>

             </td>
        </tr>



        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="lblErrMsg" runat="server"></asp:Label>
            </td>
        </tr>

        <tr>
            <td colspan="2"></td>
        </tr>



        
        <tr>
                    <td align="center">

                         <asp:Button ID="addQ" runat="server" Text="Add Question" 
                             onclick="addQ_Click"   />
                    
                    </td>
                    
                    <td align="left">
                    
                        <asp:Button ID="clear" runat="server" Text="Clear" onClientClick="this.form.reset();return false;"  />
                        
                    </td>
        </tr>



    </table>
    </center>
    </form>
    </div>
   
</asp:Content>

