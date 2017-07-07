<%@ Page Title="" Language="C#" MasterPageFile="~/student/beforelogin/StudentMaster.master" AutoEventWireup="true" CodeFile="StudentSignup.aspx.cs" Inherits="student_beforelogin_StudentSignup" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cci" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    
   <br /><br />
   <div style="font-size:large;" align="center">
        <asp:Label ID="lblMessage" CssClass="dropotron" runat="server" Text="Welcome Student. Please Enter Your Details."></asp:Label>    
   </div>
   <br />
   <div style="background-color:#c0addb;"  class="features-table">
   
   <form id="Form1" name="sign_upstudent" runat="server">
  <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
   
        <div>
            <div>
                
            <h6 class="shadow">All Fields marked in * are compulsary</h6>
            
            <asp:Label ID="lblErrMsg" runat="server"></asp:Label>
            </div><br />
            <table width="100%" style="text-align:center;">
                <tr>
                    <td align="left">
                       <h4 class="dropotron"> Enter First Name:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="FN" runat="server" placeholder="First Name" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFN" runat="server" ControlToValidate="FN" ErrorMessage="Please enter First Name..!!" SetFocusOnError="true" Display="None" />
                        <cci:ValidatorCalloutExtender ID="cciFN" runat="server" TargetControlID="rfvFN"  ></cci:ValidatorCalloutExtender>
                    </td>
                </tr>

                <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter Last Name:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="LN" runat="server"  placeholder="Last Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLN" runat="server" ControlToValidate="LN"  ErrorMessage="Please enter Last Name..!!" SetFocusOnError="true" Display="None" />
                        <cci:ValidatorCalloutExtender ID="cciLN" runat="server" TargetControlID="rfvLN"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

                <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter Date-Of-Birth:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="DOB" runat="server"  placeholder="Date of Birth" 
                            TextMode="Date"></asp:TextBox>
                        
                       <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="DOB"  ErrorMessage="Please enter Date of Birth..!!" SetFocusOnError="true" Display="None" />
                       <cci:ValidatorCalloutExtender ID="cciDOB" runat="server" TargetControlID="rfvDOB"  ></cci:ValidatorCalloutExtender>
                        
                    </td> 
               </tr>

               <tr>
                    <td align="left">
                        <h4 class="dropotron">Gender:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:RadioButtonList ID="gender" runat="server">
                            <asp:ListItem Selected="true">Male</asp:ListItem> 
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>  
                    </td> 
               </tr>

               <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter E-mail Id:</h4><span style="color:Red">*</span>
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
                        <h4 class="dropotron">Enter Password:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="password" runat="server"  placeholder="Password" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvpassword" runat="server" ControlToValidate="password"  ErrorMessage="Please enter Password..!!" SetFocusOnError="true" Display="None"/>
                        <cci:ValidatorCalloutExtender ID="ccipassword" runat="server" TargetControlID="rfvpassword"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

               
               <tr>
                    <td align="left">
                        <h4 class="dropotron">Confirm Password:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="cpassword" runat="server"  placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcpassword" runat="server" ControlToValidate="cpassword"  ErrorMessage="Please confirm your password..!!" SetFocusOnError="true" Display="None" />
                        <cci:ValidatorCalloutExtender ID="ccicpassword" runat="server" TargetControlID="rfvpassword"  ></cci:ValidatorCalloutExtender>
                        <asp:CompareValidator ID="cmpassword" ControlToCompare="password" ControlToValidate="cpassword" runat="server" ErrorMessage="The Passwords do not match. Enter Password Again." Display="None"></asp:CompareValidator>
                        <cci:ValidatorCalloutExtender ID="ccicpass" runat="server" TargetControlID="cmpassword"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

               
               <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter Contact Number:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="contactno" runat="server"  placeholder="Contact Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcontactno" runat="server" ControlToValidate="contactno"  ErrorMessage="Please enter your Contact Number..!!" Display="None" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="ccicontactno" runat="server" TargetControlID="rfvcontactno"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

               
               <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter Address:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="address" runat="server"  placeholder="Address" TextMode="MultiLine" Rows="4" Columns="30" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvaddress" runat="server" ControlToValidate="address"  ErrorMessage="Please enter the address..!!" Display="None" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="cciaddress" runat="server" TargetControlID="rfvaddress"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

               
               <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter State:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="state" runat="server"  placeholder="State"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvstate" runat="server" ControlToValidate="state" Display="None"  ErrorMessage="Please enter the state you live in..!!" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="ccistate" runat="server" TargetControlID="rfvstate"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

               
               <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter City:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="city" runat="server"  placeholder="City"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcity" runat="server" ControlToValidate="city"  ErrorMessage="Please enter the city you live in..!!" Display="None" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="ccicity" runat="server" TargetControlID="rfvcity"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

               
              <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter your Field:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                       <%-- <asp:TextBox ID="field" runat="server"  placeholder="Field"></asp:TextBox>--%>
                       <asp:DropDownList ID="field" runat="server">
                        <asp:ListItem Value="Computer Engineering"></asp:ListItem>
                        <asp:ListItem Value="Mechanical Engineering"></asp:ListItem>
                        <asp:ListItem Value="Electronic & Communication"></asp:ListItem>
                        <asp:ListItem Value="Information Technology"></asp:ListItem>
                        <asp:ListItem Value="Civil Engineering"></asp:ListItem>
                        
                    </asp:DropDownList>&nbsp;
                        <asp:RequiredFieldValidator ID="rfvField" runat="server" ControlToValidate="field"  ErrorMessage="Please enter your Field of Education..!!" Display="None" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="ccifield" runat="server" TargetControlID="rfvField"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

               <tr>
                    <td align="left">
                        <h4 class="dropotron">Select Course:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                       
                       <asp:DropDownList ID="course" runat="server">
                        <asp:ListItem Value="Select Course"></asp:ListItem>
                        
                    </asp:DropDownList>&nbsp;
                        <asp:RequiredFieldValidator ID="rfvcourse" runat="server" ControlToValidate="field"  ErrorMessage="Please select your course..!!" Display="None" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="ccicourse" runat="server" TargetControlID="rfvcourse"  ></cci:ValidatorCalloutExtender>
                         <a href="../../Courses.aspx" target="_blank">View Available Courses</a>
                    </td> 
                    <%--<td>
                       
                    </td>--%>
               </tr>

               <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter University/College:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="uni" runat="server"  placeholder="University/College"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvuni" runat="server" ControlToValidate="uni"  ErrorMessage="Please enter your University.College where you study..!!" Display="None" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="cciuni" runat="server" TargetControlID="rfvuni"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

               
               <tr>
                    <td align="left">
                        <h4 class="dropotron">Upload Profile Photo:<span style="color:Red">(you can upload your profile picture less than 500 kb)</span></h4>
                    </td>
                    <td align="left">
                        <asp:Image ID="imgpro" Height="100" ImageUrl="~/images/download.png" Width="100" runat="server" />
                        <asp:FileUpload ID="pp" runat="server" />   
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
                        
                        <asp:Button ID="submitSu" runat="server" Text="Submit" 
                            onclick="submitSu_Click" />&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="clearSu" runat="server" Text="Reset" />
                        
                    </td>
               </tr>
       </table>

  </div>
 </form>              

   </div> 
</asp:Content>

