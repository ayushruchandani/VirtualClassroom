﻿<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/afterlogin/Master_teacher_after.master" AutoEventWireup="true" CodeFile="Reply.aspx.cs" Inherits="teacher_afterlogin_Reply" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cci" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <head runat="server"></head>    
    <br /><br />
   <div style="font-size:large;" align="center">
        <h4 class="dropotron"><asp:Label ID="lblMessage" runat="server" Text="Reply"></asp:Label></h4>    
   </div>
   <br />
   <br />

   <div class="features-table">
    <form id="frm" name="reply" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <center>

    <table width="100%" border="0">
        <tr>
            <td align="left" colspan="2">
                         <h4 class="dropotron"><asp:Label ID="lblStudentId" runat="server"></asp:Label></h4>
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2">
                         <h4 class="dropotron"><asp:Label ID="lblTeacherId" runat="server"></asp:Label></h4>
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2">
                         <h4 class="dropotron"><asp:Label ID="lblQuery" runat="server"></asp:Label></h4>
            </td>
        </tr>

        <tr>
            <td>
            
            </td>
        </tr>


        <tr>
            <td align="left" colspan="2">
                         <h4 class="dropotron">Reply:</h4><span style="color:Red">*</span>
            </td>
            
        </tr>

        <tr>
            <td align="left" colspan="2">
                        <center>
                        <asp:TextBox ID="query" TextMode="MultiLine" runat="server" placeholder="Reply" Rows="5" Columns="100" />
                        
                        <asp:RequiredFieldValidator ID="rfvquery" runat="server" ControlToValidate="query"  ErrorMessage="Please Enter your Query" Display="None" SetFocusOnError="true" />
                        <cci:ValidatorCalloutExtender ID="cciquery" runat="server" TargetControlID="rfvquery"  ></cci:ValidatorCalloutExtender>
                        </center>
             </td>
        
            
        </tr>

        <tr>
            <td>
            
            </td>
        </tr>


        <tr>
            <td colspan="2">
                <center>
                   <asp:Button ID="reply" runat="server" Text=" Reply " onclick="reply_Click"  /> 
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                   <asp:Button ID="clearMessage" runat="server" Text="      Clear      " onClientClick="this.form.reset();return false;" /> 
                </center>
            </td>
        </tr>

    </table>
    </center>
    </form>
    </div>

</asp:Content>
