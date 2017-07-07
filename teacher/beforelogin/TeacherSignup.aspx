<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/beforelogin/Teachermaster.master" AutoEventWireup="true" CodeFile="TeacherSignup.aspx.cs" Inherits="teacher_beforelogin_TeacherSignup" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cci" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <br /><br />
   <div style="font-size:large;" align="center">
        <asp:Label ID="lblMessage" runat="server" CssClass="dropotron" Text="Welcome Teacher. Please Enter Your Details."></asp:Label>    
   </div>
   <br />
   <div class="features-table">
   <form id="Form1" name="sign_up" runat="server">
   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <div>
            <h6 class="shadow">All Fields marked in * are compulsary</h6>
            <asp:Label ID="lblErrMsg" runat="server"></asp:Label>
            </div><br />
            <table width="100%" class="shadow" style="text-align:center;">
                <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter First Name:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="FN" runat="server" placeholder="First Name" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFN" runat="server" ControlToValidate="FN" ErrorMessage="Please enter First Name..!!" Font-Size="Medium" ForeColor="Black"  SetFocusOnError="true" Display="None" />
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
                        <cci:ValidatorCalloutExtender ID="ccidob" runat="server" TargetControlID="rfvDOB"  ></cci:ValidatorCalloutExtender>
                    
                   
                    </td> 
               </tr>

               <tr>
                    <td align="left">
                        <h4 class="dropotron">Gender:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:RadioButtonList ID="gender" TextAlign="Right" runat="server">
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
                        <asp:RequiredFieldValidator ID="rfvEMailId" runat="server" ControlToValidate="EmailId"  ErrorMessage="Please enter E-Mail Id..!!" SetFocusOnError="true"  Display="None"/>
                        <asp:RegularExpressionValidator ID="reEmailId" runat="server" ControlToValidate="EmailId" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Please Enter Correct Email Address" Display="None"></asp:RegularExpressionValidator>
                        <cci:ValidatorCalloutExtender ID="cciemail" runat="server" TargetControlID="rfvEMailId"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

               <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter Password:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="password" runat="server"  placeholder="Password" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvpassword" runat="server" ControlToValidate="password"  ErrorMessage="Please enter Password..!!" Display="None" SetFocusOnError="true" />
                         <cci:ValidatorCalloutExtender ID="ccipass" runat="server" TargetControlID="rfvpassword"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

               <tr>
                    <td align="left">
                        <h4 class="dropotron">Confirm Password:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="cpassword" runat="server"  placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcpassword" runat="server" ControlToValidate="cpassword"  ErrorMessage="Please confirm your password..!!" SetFocusOnError="true" Display="None"  />
                        <asp:CompareValidator ID="cmpassword" ControlToCompare="password" ControlToValidate="cpassword" runat="server" ErrorMessage="The Passwords do not match. Enter Password Again." Display="None"></asp:CompareValidator>
                         <cci:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="rfvcpassword"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

               <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter Contact Number:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="contactno" runat="server"  placeholder="Contact Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcontactno" runat="server" ControlToValidate="contactno"  ErrorMessage="Please enter your Contact Number..!!" SetFocusOnError="true" Display="None" />
                         <cci:ValidatorCalloutExtender ID="ccicontact" runat="server" TargetControlID="rfvcontactno"  ></cci:ValidatorCalloutExtender>
                        
                    </td> 
               </tr>

               <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter State:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="state" runat="server"  placeholder="State"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvstate" runat="server" ControlToValidate="state"  ErrorMessage="Please enter the state you live in..!!" Display="None" SetFocusOnError="true" />
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
                        <h4 class="dropotron">Enter Course-Name:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="CName" runat="server" placeholder="Course Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCourse" runat="server" ControlToValidate="CName"  ErrorMessage="Please enter valid Course Name..!!" Display="None" SetFocusOnError="true" />
                         <cci:ValidatorCalloutExtender ID="ccicourse" runat="server" TargetControlID="rfvCourse"  ></cci:ValidatorCalloutExtender>
                    
                    </td> 
               </tr>



               <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter Course Start Date:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="CStartDate" runat="server"  placeholder="Course Start Date" 
                            TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcsd" runat="server" ControlToValidate="CStartDate"  ErrorMessage="Please enter course starting date..!!" Display="None" SetFocusOnError="true" />
                         <cci:ValidatorCalloutExtender ID="ccicsd" runat="server" TargetControlID="rfvcsd"  ></cci:ValidatorCalloutExtender>
                    
                    </td>
                </tr>



                <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter Course End Date:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="CEndDate" runat="server"  placeholder="Course End Date" 
                            TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvced" runat="server" ControlToValidate="CEndDate"  ErrorMessage="Please enter course ending date..!!" Display="None" SetFocusOnError="true" />
                         <cci:ValidatorCalloutExtender ID="cciced" runat="server" TargetControlID="rfvced"  ></cci:ValidatorCalloutExtender>
                    
                    </td>
                </tr>
               
               
               <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter Course Description:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="CDesc" runat="server" TextMode="MultiLine" Rows="10" Columns="40"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcdes" runat="server" ControlToValidate="CDesc" Display="None"  ErrorMessage="Please enter course ending date..!!" SetFocusOnError="true" />
                         <cci:ValidatorCalloutExtender ID="ccicdes" runat="server" TargetControlID="rfvcdes"  ></cci:ValidatorCalloutExtender>
                    
                    </td>
                </tr>
                
               
               
               <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter University/College:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="uni" runat="server"  placeholder="University/College"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvuni" runat="server" ControlToValidate="uni" Display="None" ErrorMessage="Please enter your University.College where you teach..!!" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="cciuni" runat="server" TargetControlID="rfvuni"  ></cci:ValidatorCalloutExtender>
                        
                    </td> 
               </tr>

               <tr>
                    <td align="left">
                        <h4 class="dropotron">Upload Photo-ID:<span style="color:Red">*(upload any id as your teacher proof)</span></h4>
                    </td>
                    
                    <td align="left">
                        <asp:Image ID="imgidentity" Height="100" ImageUrl="~/images/download.png" Width="100" runat="server" />
                        <asp:FileUpload ID="pid" runat="server" />
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
                    <td align="left">
                        <h4 class="dropotron">Upload Course Cover:<span style="color:Red">(you can upload your profile picture less than 500 kb)</span></h4>
                    </td>
                    <td align="left">
                    <asp:Image ID="imagecourse" Height="100" ImageUrl="~/images/download.png" Width="100" runat="server" />
                        <asp:FileUpload ID="cc" runat="server" />   
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


               <tr>
               <td></td>
               <td></td>
               </tr>
       </table>

  </div>
 </form>  
 
   
   </div> 
</asp:Content>

