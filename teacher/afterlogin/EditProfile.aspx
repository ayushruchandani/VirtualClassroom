<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/afterlogin/Master_teacher_after.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="teacher_afterlogin_EditProfile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cci" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<head runat="server"></head>
  <br /><br />
   <div style="font-size:large;" align="center">
        <h4 class="dropotron"><asp:Label ID="lblMessage" runat="server" Text="Edit Your Profile Here."></asp:Label></h4>    
   </div>
   <br />
   <div class="features-table">
   
   <form id="Form1" name="edit_teacher" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <div>
            
            <asp:Label ID="lblupdtMsg" runat="server"></asp:Label>
            </div><br />
            <table width="90%" style="text-align:center;">
                <tr>
                    <td align="left">
                         Change First Name:<span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="FN" runat="server" placeholder="First Name" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFN" runat="server" ControlToValidate="FN" ErrorMessage="Please enter First Name..!!" SetFocusOnError="true" Display="None" />
                        <cci:ValidatorCalloutExtender ID="cciFN" runat="server" TargetControlID="rfvFN"  ></cci:ValidatorCalloutExtender>
                    </td>
                </tr>

                <tr>
                    <td align="left">
                        Change Last Name:<span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="LN" runat="server"  placeholder="Last Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLN" runat="server" ControlToValidate="LN"  ErrorMessage="Please enter Last Name..!!" SetFocusOnError="true" Display="None" />
                         <cci:ValidatorCalloutExtender ID="cciLN" runat="server" TargetControlID="rfvLN"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

    
               

               

               <tr>
                    <td align="left">
                        Change Password:<span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="password" runat="server"  placeholder="Password" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvpassword" runat="server" ControlToValidate="password"  ErrorMessage="Please enter Password..!!" SetFocusOnError="true" Display="None" />
                        <cci:ValidatorCalloutExtender ID="ccipass" runat="server" TargetControlID="rfvpassword"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

               <tr>
                    <td align="left">
                        Confirm Password:<span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="cpassword" runat="server"  placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcpassword" runat="server" ControlToValidate="cpassword"  ErrorMessage="Please confirm your password..!!" SetFocusOnError="true" Display="None" />
                        <asp:CompareValidator ID="cmpassword" ControlToCompare="password" ControlToValidate="cpassword" runat="server" ErrorMessage="The Passwords do not match. Enter Password Again." Display="None"></asp:CompareValidator>
                         <cci:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="rfvcpassword"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

               <tr>
                    <td align="left">
                        Change Contact Number:<span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="contactno" runat="server"  placeholder="Contact Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcontactno" runat="server" ControlToValidate="contactno"  ErrorMessage="Please enter your Contact Number..!!" SetFocusOnError="true" Display="None" />
                         <cci:ValidatorCalloutExtender ID="ccicontact" runat="server" TargetControlID="rfvcontactno"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

               
              

               <tr>
                    <td align="left">
                        Change State:<span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="state" runat="server"  placeholder="State"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvstate" runat="server" ControlToValidate="state"  ErrorMessage="Please enter the state you live in..!!" SetFocusOnError="true" Display="None" />
                         <cci:ValidatorCalloutExtender ID="ccistate" runat="server" TargetControlID="rfvstate"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

               <tr>
                    <td align="left">
                        Change City:<span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="city" runat="server"  placeholder="City"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcity" runat="server" ControlToValidate="city"  ErrorMessage="Please enter the city you live in..!!" SetFocusOnError="true" Display="None" />
                         <cci:ValidatorCalloutExtender ID="ccicity" runat="server" TargetControlID="rfvcity"  ></cci:ValidatorCalloutExtender>
                    </td> 
               </tr>

               
               
               <tr>
                    <td align="left">
                        Change Profile Photo:<span style="color:Red">(you can upload your profile picture less than 500 kb)</span>
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
                    
                        <asp:Button ID="btnupdate" runat="server" Text="Update Details" onclick="btnupdate_Click" />
                       
                        
                    </td>
               </tr>
       </table>

  </div>
 </form>              

   </div>


</asp:Content>

