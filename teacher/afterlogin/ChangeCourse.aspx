<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/afterlogin/Master_teacher_after.master" AutoEventWireup="true" CodeFile="ChangeCourse.aspx.cs" Inherits="teacher_afterlogin_ChangeCourse" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cci" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <head runat="server"></head>
    <br /><br />
   <div style="font-size:large;" align="center">
        <h4 class="dropotron"><asp:Label ID="lblMessage" runat="server" Text="Change Course."></asp:Label></h4>    
   </div>
   <br />
   <div class="features-table">
   <form id="Form1" name="change_courseteacher" runat="server">
   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <div>
            <h6></h6>
            
            <asp:Label ID="lblupdtMsg" runat="server"></asp:Label>
            </div><br />
            <table width="100%" style="text-align:center;">
                <tr>
                    <td align="left">
                         <h4 class="dropotron">Enter Course Name:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="coursena" runat="server" placeholder="Course Name" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcoursena" runat="server" ControlToValidate="coursena" ErrorMessage="Please Enter a Valid Course Name!!" Display="None" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="ccicna" runat="server" TargetControlID="rfvcoursena" ></cci:ValidatorCalloutExtender>
                    </td>
                </tr>


                <tr>
                     <td align="left">
                        <h4 class="dropotron">Select Course-cover:<span style="color:Red">(you can upload your profile picture less than 500 kb)</span></h4>
                    </td>
                    <td align="left">
                   <%-- <asp:Image ID="imgpro" Height="100" ImageUrl="~/images/download.png" Width="100" runat="server" />--%>
                        <asp:FileUpload ID="pp" runat="server" />   
                    </td> 
                </tr>


                <tr>
                    <td align="left">
                         <h4 class="dropotron">Enter Course Description:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="CDesc" runat="server" TextMode="MultiLine" Rows="10" Columns="40"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcdes" runat="server" ControlToValidate="CDesc" Display="None"  ErrorMessage="Please enter course description..!!" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="ccicdes" runat="server" TargetControlID="rfvcdes"  ></cci:ValidatorCalloutExtender>
                    </td>
                </tr>

                <tr>
                    <td align="left">
                        <h4 class="dropotron">Enter Course Start Date:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="CStartDate" runat="server"  placeholder="Course Start Date" 
                            TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcsd" runat="server" ControlToValidate="CStartDate" Display="None"  ErrorMessage="Please enter course starting date..!!" SetFocusOnError="true" />
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
                        <asp:RequiredFieldValidator ID="rfvced" runat="server" ControlToValidate="CEndDate" Display="None"  ErrorMessage="Please enter course ending date..!!" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="cciced" runat="server" TargetControlID="rfvced"  ></cci:ValidatorCalloutExtender>
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

