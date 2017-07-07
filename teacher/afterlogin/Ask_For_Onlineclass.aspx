<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/afterlogin/Master_teacher_after.master" AutoEventWireup="true" CodeFile="Ask_For_Onlineclass.aspx.cs" Inherits="teacher_afterlogin_Ask_For_Onlineclass" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cci" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<head runat="server"></head>
    <br /><br />
   <div style="font-size:large;" align="center">
        <h4 class="dropotron"><asp:Label ID="lblMessage" runat="server" Text="Request for Virtual-Class"></asp:Label></h4>    
   </div>
   <br />
   <div class="features-table">
   <form id="Form1" name="onlineclass_request" runat="server">
   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <div>
            <h6></h6>
            
            <asp:Label ID="lblupdtMsg" runat="server"></asp:Label>
            </div><br />
            <table width="100%" style="text-align:center;">
                <tr>
                    <td align="left">
                         <h4 class="dropotron">Enter Topic Name:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="clstopic" runat="server" placeholder="Course Name" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvtopic" runat="server" ControlToValidate="clstopic" ErrorMessage="Please Enter  Valid Topic Name!!" Display="None" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="ccitopic" runat="server" TargetControlID="rfvtopic" ></cci:ValidatorCalloutExtender>
                    </td>
                </tr>


                

                <tr>
                    <td align="left">
                         <h4 class="dropotron">Enter Description:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="CDesc" runat="server" TextMode="MultiLine" Rows="10" Columns="40"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcdes" runat="server" ControlToValidate="CDesc" Display="None"  ErrorMessage="Please Enter Description..!!" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="ccicdes" runat="server" TargetControlID="rfvcdes"  ></cci:ValidatorCalloutExtender>
                    </td>
                </tr>


                <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter Date:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="clsdate" runat="server"  placeholder="Course Start Date" 
                            TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvclsdate" runat="server" ControlToValidate="clsdate" Display="None"  ErrorMessage="Please enter date of class..!!" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="cciclsdate" runat="server" TargetControlID="rfvclsdate"  ></cci:ValidatorCalloutExtender> 
                    
                    </td>
                </tr>





                <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter start time:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="clsst" runat="server"  placeholder="Course Start Date" 
                            TextMode="Time"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvclsst" runat="server" ControlToValidate="clsst" Display="None"  ErrorMessage="Please enter starting time of class" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="cciclsst" runat="server" TargetControlID="rfvclsst"  ></cci:ValidatorCalloutExtender> 
                    
                    </td>
                </tr>



                <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter end time:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="clset" runat="server"  placeholder="Course End Date" 
                            TextMode="Time"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvclset" runat="server" ControlToValidate="clset" Display="None"  ErrorMessage="Please enter class ending time..!!" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="cciclset" runat="server" TargetControlID="rfvclset"  ></cci:ValidatorCalloutExtender>
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
                    
                        <asp:Button ID="btnrqst" runat="server" Text="Send Request" 
                            onclick="btnrqst_Click"/>
                        &nbsp;
                        <asp:Button ID="btnclr" runat="server" Text="Clear" onClientClick="this.form.reset();return false;" />
                    </td>
                    
               </tr>
       </table>

  </div>
 </form>              

   </div>
</asp:Content>

