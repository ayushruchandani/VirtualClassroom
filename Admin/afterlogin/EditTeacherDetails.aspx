<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/afterlogin/AdminALMaster.master" AutoEventWireup="true" CodeFile="EditTeacherDetails.aspx.cs" Inherits="Admin_afterlogin_EditTeachetDetails" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cci" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<head runat="server"></head>
  <br /><br />
   <div style="font-size:large;" align="center">
        <asp:Label ID="lblMessage" runat="server" CssClass="dropotron" Text="Teacher's Details"></asp:Label>    
   </div>
   <br />
   <div class="features-table">
   
   <form id="Form1" name="edit_teacher" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <div>
            
            <asp:Label ID="lblupdtMsg" runat="server" CssClass="shadow"></asp:Label>
            </div><br />
            <table width="90%" style="text-align:center;">
                
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
                         <h4 class="dropotron">Teacher_Id:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:Label ID="TID" runat="server" placeholder="First Name" ></asp:Label>
                        <%--<asp:RequiredFieldValidator ID="rfvtid" runat="server" ControlToValidate="TID" ErrorMessage="Please enter First Name..!!" SetFocusOnError="true" Display="None" />
                        <cci:ValidatorCalloutExtender ID="ccitid" runat="server" TargetControlID="rfvtid"  ></cci:ValidatorCalloutExtender>--%>
                    </td>
                </tr>

                <tr>
                    <td align="left">
                         <h4 class="dropotron">First Name:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="FN" runat="server" placeholder="First Name" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFN" runat="server" ControlToValidate="FN" ErrorMessage="Please enter First Name..!!" SetFocusOnError="true" Display="None" />
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
                        <h4 class="dropotron">Contact-Number:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="contactno" runat="server"  placeholder="Contact Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcontactno" runat="server" ControlToValidate="contactno"  ErrorMessage="Please enter your Contact Number..!!" SetFocusOnError="true" Display="None" />
                         <cci:ValidatorCalloutExtender ID="ccicontact" runat="server" TargetControlID="rfvcontactno"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

               
              

               <tr>
                    <td align="left">
                       <h4 class="dropotron">State:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="state" runat="server"  placeholder="State"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvstate" runat="server" ControlToValidate="state"  ErrorMessage="Please enter the state you live in..!!" SetFocusOnError="true" Display="None" />
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
                        <h4 class="dropotron">Course Start_Date:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="CStartDate" runat="server"  placeholder="Course Start Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcsd" runat="server" ControlToValidate="CStartDate"  ErrorMessage="Please enter course starting date..!!" Display="None" SetFocusOnError="true" />
                         <cci:ValidatorCalloutExtender ID="ccicsd" runat="server" TargetControlID="rfvcsd"  ></cci:ValidatorCalloutExtender>
                    
                    </td>
                </tr>



                <tr>
                    <td align="left">
                        <h4 class="dropotron">Course End_Date:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="CEndDate" runat="server"  placeholder="Course End Date" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvced" runat="server" ControlToValidate="CEndDate"  ErrorMessage="Please enter course ending date..!!" Display="None" SetFocusOnError="true" />
                         <cci:ValidatorCalloutExtender ID="cciced" runat="server" TargetControlID="rfvced"  ></cci:ValidatorCalloutExtender>
                    
                    </td>
                </tr>
               
               
               <tr>
                    <td align="left">
                        <h4 class="dropotron">Course Description:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="CDesc" runat="server" TextMode="MultiLine" Rows="10" Columns="40"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcdes" runat="server" ControlToValidate="CDesc" Display="None"  ErrorMessage="Please enter course ending date..!!" SetFocusOnError="true" />
                         <cci:ValidatorCalloutExtender ID="ccicdes" runat="server" TargetControlID="rfvcdes"  ></cci:ValidatorCalloutExtender>
                    
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
                            onclick="btnupdate_Click" />
                       
                        
                    </td>
               </tr>
       </table>

  </div>
 </form>              

   </div>

</asp:Content>

