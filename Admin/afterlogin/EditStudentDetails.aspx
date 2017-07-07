<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/afterlogin/AdminALMaster.master" AutoEventWireup="true" CodeFile="EditStudentDetails.aspx.cs" Inherits="Admin_afterlogin_EditStudentDetails" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cci" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<head runat="server"></head>
  
   
   <div class="features-table">
   <form id="Form1" name="sign_upstudent" runat="server">
   
   <br />
    <asp:Label ID="lblmsg" runat="server" Text="" CssClass="shadow"></asp:Label> 
   
   <div style="font-size:large;" align="center">
        <asp:Label ID="lblMessage" runat="server" CssClass="dropotron" Text="Student's Details"></asp:Label>    
   </div>
   <br/>
<hr class="shadow" />
   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <div>
           
            
            <asp:Label ID="lblupdtMsg" runat="server" CssClass="shadow"></asp:Label>
            </div><br />
            <table width="100%" style="text-align:center;">
                 <tr>
                    <td align="left">
                         <h4 class="dropotron">Profile-Pic:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:Image ID="pp" runat="server" />
                    </td>
                </tr>

                <tr>
                    <td align="left">
                          <h4 class="dropotron">First Name:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="FN" runat="server" placeholder="First Name" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFN" runat="server" ControlToValidate="FN" ErrorMessage="Please enter First Name..!!" SetFocusOnError="true" Display="None"/>
                        <cci:ValidatorCalloutExtender ID="cciFN" runat="server" TargetControlID="rfvFN"  ></cci:ValidatorCalloutExtender>
                    </td>
                </tr>

                <tr>
                    <td align="left">
                         <h4 class="dropotron">Last Name:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="LN" runat="server"  placeholder="Last Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLN" runat="server" ControlToValidate="LN"  ErrorMessage="Please enter Last Name..!!" SetFocusOnError="true" Display="None" />
                        <cci:ValidatorCalloutExtender ID="cciLN" runat="server" TargetControlID="rfvLN"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>




              <%-- <tr>
                    <td align="left">
                         Date-Of-Birth:<span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="DOB" runat="server"  placeholder="Date of Birth" ></asp:TextBox>
                        
                       <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="DOB"  ErrorMessage="Please enter Date of Birth..!!" SetFocusOnError="true" Display="None" />
                       <cci:ValidatorCalloutExtender ID="cciDOB" runat="server" TargetControlID="rfvDOB"  ></cci:ValidatorCalloutExtender>
                        
                    </td> 
               </tr>--%>

               

               <tr>
                    <td align="left">
                         <h4 class="dropotron">E-mail Id:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="EmailId" runat="server"  placeholder="E-Mail Id"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEMailId" runat="server" ControlToValidate="EmailId"  ErrorMessage="Please enter E-Mail Id..!!" SetFocusOnError="true" Display="None" />
                        <asp:RegularExpressionValidator ID="reEmailId" runat="server" ControlToValidate="EmailId" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Please Enter Correct Email Address" Display="None"></asp:RegularExpressionValidator>
                        <cci:ValidatorCalloutExtender ID="cciEMailId" runat="server" TargetControlID="rfvEMailId"  ></cci:ValidatorCalloutExtender>
                        <cci:ValidatorCalloutExtender ID="cciEMail" runat="server" TargetControlID="reEMailId"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>



               <tr>
                    <td align="left">
                        <h4 class="dropotron">Contact Number:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="contactno" runat="server"  placeholder="Contact Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcontactno" runat="server" ControlToValidate="contactno"  ErrorMessage="Please enter your Contact Number..!!" SetFocusOnError="true" Display="None" />
                        <cci:ValidatorCalloutExtender ID="ccicontact" runat="server" TargetControlID="rfvcontactno"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

               

               
               <tr>
                    <td align="left">
                        <h4 class="dropotron">Course:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="course" runat="server"  placeholder="Course"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcourse" runat="server" ControlToValidate="course"  ErrorMessage="Please enter your Contact Number..!!" SetFocusOnError="true" Display="None" />
                        <cci:ValidatorCalloutExtender ID="ccicourse" runat="server" TargetControlID="rfvcourse"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>
               
               
               
               <tr>
                    <td align="left">
                         <h4 class="dropotron">Field:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="field" runat="server"  placeholder="Field"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvfield" runat="server" ControlToValidate="field"  ErrorMessage="Please enter your Contact Number..!!" SetFocusOnError="true" Display="None" />
                        <cci:ValidatorCalloutExtender ID="ccifield" runat="server" TargetControlID="rfvfield"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>
              

              <tr>
                    <td align="left">
                        <h4 class="dropotron">University:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="university" runat="server"  placeholder="University"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvuni" runat="server" ControlToValidate="university"  ErrorMessage="Please enter your Contact Number..!!" SetFocusOnError="true" Display="None" />
                        <cci:ValidatorCalloutExtender ID="cciuni" runat="server" TargetControlID="rfvcontactno"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>


               <tr>
                    <td align="left">
                         <h4 class="dropotron">State:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="state" runat="server"  placeholder="State"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvstate" runat="server" ControlToValidate="state"  ErrorMessage="Please enter the state you live in..!!" SetFocusOnError="true" Display="None"/>
                        <cci:ValidatorCalloutExtender ID="ccistate" runat="server" TargetControlID="rfvstate"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

               <tr>
                    <td align="left">
                        <h4 class="dropotron">City:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="city" runat="server"  placeholder="City"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcity" runat="server" ControlToValidate="city"  ErrorMessage="Please enter the city you live in..!!" SetFocusOnError="true" Display="None" />
                         <cci:ValidatorCalloutExtender ID="ccicity" runat="server" TargetControlID="rfvcity"  ></cci:ValidatorCalloutExtender>
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
                    
                        <asp:Button ID="btnupdate" runat="server" Text="Update Details" 
                            onclick="btnupdate_Click"  />
                      
                        
                    </td>
               </tr>
       </table>

  </div>
 </form>              

   </div> 

</asp:Content>

