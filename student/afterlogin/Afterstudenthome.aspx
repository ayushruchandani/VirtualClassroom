﻿<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/student/afterlogin/Master_student_after.master" AutoEventWireup="true" CodeFile="Afterstudenthome.aspx.cs" Inherits="student_afterlogin_Afterstudenthome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="studhome" runat="server">
     <br /><br />
   <div style="font-size:large;" align="center">
        <asp:Label ID="lblStuHome" CssClass="dropotron" runat="server" Text="Student Home"></asp:Label>    
   </div>
   <br/>
   <center><h1 style="color:Black;font-family: Arial Black;background-color:ThreeDDarkShadow" class="shadow">Welcome To Virtual Classroom Student.....!!!</h1></center>
  
    <br/>  
  
  
   <div class="effect8">

   <center>
    <table class="shadow">
          
         <tr align="center">
            <td></td>
            <td colspan="2"><center><h1 class="dropotron">Student's Info</h1></center></td>
            <td></td>
         </tr>
    
        <tr>
            <td colspan="4">    </td>
        </tr>



         <tr>
            <td colspan="2" rowspan="4"><asp:Image ID="pic" CssClass="shadow"  runat="server" Height="200" Width="200" /></td>
            <td colspan="2"></td>
            <td></td>
         </tr>
   
        <tr>
            <td class="shadow"><b><i>Name:-</i></b></td>
            <td align="left" class="shadow"><asp:Label ID="stuname" runat="server" Text="Label"></asp:Label></td>
        </tr>
       
        <tr>
            <td class="shadow"><b><i>Field:-</i></b> </td>
            <td class="shadow">
            <asp:Label ID="stufield" runat="server" Text="Label"></asp:Label></td>
        </tr>

        <tr>
            <td class="shadow"><b><i>Course:-</i></b></td>
            <td class="shadow"><asp:Label ID="stucourse" runat="server" Text="Label"></asp:Label></td>    
        </tr>

    </table>
    </center>
    </div>

<br/><br />



    <div class="effect8">
    <table class="shadow">
          
         <tr>
            <td></td>
            <td colspan="2"><center><h1 class="dropotron">Current Course Description</h1></center></td>
            <td></td>
         </tr>
    
        <tr>
            <td colspan="4">    </td>
        </tr>



         <tr>
            <td colspan="2" rowspan="6"><asp:Image ID="crspp" CssClass="shadow"  runat="server" Height="300" Width="400" /></td>
            <td colspan="2"></td>
            <td></td>
         </tr>
   
        
       
        <tr>
            <td class="shadow"><b><i>Course Name:-</i></b></td>
            <td class="shadow">
            <asp:Label ID="crsname" runat="server" Text="Label"></asp:Label></td>
        </tr>

        <tr>
            <td class="shadow"><b><i>Course Starting Date:-</i></b></td>
            <td class="shadow"><asp:Label ID="crssdate" runat="server" Text="Label"></asp:Label></td>    
        </tr>


        <tr>
            <td class="shadow"><b><i>Course Ending Date:-</i></b></td>
            <td class="shadow"><asp:Label ID="crsedate" runat="server" Text="Label"></asp:Label></td>    
        </tr>

        <tr>
            <td class="shadow"><b><i>Remaining days for course completion:-</i></b></td>
            <td class="shadow"><asp:Label ID="remdays" runat="server" Text="Label"></asp:Label></td>    
        </tr>


    </table>
    </div>

    <br/> 
  
  
   <div class="effect8">
   <center>
    <table class="shadow">
          
         <tr>
            <td></td>
            <td colspan="2"><center><h1 class="dropotron">Teacher's Info</h1></center></td>
            <td></td>
         </tr>
    
        <tr>
            <td colspan="4">    </td>
        </tr>



         <tr>
            <td colspan="2" rowspan="6"><asp:Image ID="teach_pp" CssClass="shadow"  runat="server" Height="200" Width="200" /></td>
            <td colspan="2"></td>
            <td></td>
         </tr>
   
        <tr>
            <td class="shadow"><b><i>Teacher_Id:-</i></b></td>
            <td align="left" class="shadow"><asp:Label ID="lblteacher_id" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td class="shadow"><b><i>Name:-</i></b></td>
            <td align="left" class="shadow"><asp:Label ID="lblname" runat="server" Text="Label"></asp:Label></td>
        </tr>
       
        <tr>
            <td class="shadow"><b><i>Field:-</i></b></td>
            <td class="shadow">
            <asp:Label ID="lblfield" runat="server" Text="Label"></asp:Label></td>
        </tr>

        <tr>
            <td class="shadow"><b><i>University:-</i></b></td>
            <td class="shadow"><asp:Label ID="lbluni" runat="server" Text="Label"></asp:Label></td>    
        </tr>

        <tr>
            <td class="shadow"><b><i>EmailId:-</i></b></td>
            <td class="shadow"><asp:Label ID="lblemail" runat="server" Text="Label"></asp:Label></td>    
        </tr>


    </table>
    </center>
    </div>





    </form>
</asp:Content>
