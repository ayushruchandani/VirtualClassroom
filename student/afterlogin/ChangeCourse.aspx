<%@ Page Title="" Language="C#" MasterPageFile="~/student/afterlogin/Master_student_after.master" AutoEventWireup="true" CodeFile="ChangeCourse.aspx.cs" Inherits="student_afterlogin_ChangeCourse" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cci" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head runat="server"></head>

<br /><br />
   <div style="font-size:large;" align="center">
        <h4 class="dropotron"><asp:Label ID="lblMessage" runat="server" Text="Change Course."></asp:Label></h4>    
   </div>
   <br />
   <div class="features-table">
   <form id="Form1" name="change_coursestudent" runat="server">
   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <div>
            <h6></h6>
            <center>
            <asp:Label ID="lblupdtMsg" runat="server" CssClass="shadow" BackColor="Blue" ForeColor="White" ></asp:Label> 
            </center>
            </div><br />
            <table width="100%" style="text-align:center;">
                <tr>
                    <td align="left">
                         <h4 class="dropotron">Select Course Name:</h4><span style="color:Red">*</span>
                    </td>
                    <td align="left">
                        <asp:DropDownList ID="course" runat="server">
                        <asp:ListItem Value="Select Course"></asp:ListItem>
                        
                    </asp:DropDownList>&nbsp;
                        <asp:RequiredFieldValidator ID="rfvcourse" runat="server" ControlToValidate="course"  ErrorMessage="Please select your course..!!" Display="None" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="ccicourse" runat="server" TargetControlID="rfvcourse"  ></cci:ValidatorCalloutExtender>

                    </td>
                </tr>


                <tr>
                    <td align="left">
                         
                    </td>
                    <td align="left">
                        <a href="../../Courses.aspx">View Available Courses</a>
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

