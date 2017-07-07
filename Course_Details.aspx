<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Course_Details.aspx.cs" Inherits="Course_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%" border="2" class="shadow">

        <tr>
               <td>
                    <table width="100%" class="features-table" >
                        <tr>
                            
                        </tr>
                        <tr>
                                       
                        </tr>
                        <tr>
                                       
                         </tr>
                        <tr>
                            <td align="center" valign="middle" style="color:White;font-size:26pt;">
                            <div  align="center" class="dropotron">
                                 Course And Teacher Details
                            </div>
                            </td>
                        </tr>

                            <tr>
                                    <td colspan="2"></td>
                            </tr>
                        <tr>

                        

                            <td>
                            <div align="center" class="shadow">
                                <table align="center" class="text">
                                   
                                    <tr>
                                        <td align="left" valign="middle" colspan="2">
                                        <div align="center" class="shadow">
                                            <h4 class="dropotron">Course Details</h4>
                                        </div>
                                        </td>
                                    </tr>
                                   
                                    <tr>
                                        <td align="left" valign="middle" colspan="2">
                                            <asp:Image ID="coverpic" runat="server" Width="550" CssClass="shadow" Height="250"  />
                                        </td>
                                    </tr>

                                    <tr>
                                       
                                    </tr>
                                    <tr>
                                       
                                    </tr>
                                    <tr>
                                       
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="crsname" runat="server" Text="Course Name"></asp:Label>
                                        </td>
                                        
                                        <td>
                                            <asp:Label ID="Couse_name" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <asp:Label ID="crsfield" runat="server" Text="Field"></asp:Label>
                                        </td>
                                        
                                        <td>
                                            <asp:Label ID="Course_field" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>


                                    <tr>
                                        <td>
                                            <asp:Label ID="crssdate" runat="server" Text="Course Starting Date"></asp:Label>
                                        </td>
                                        
                                        <td>
                                            <asp:Label ID="Course_sdate" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td>
                                            <asp:Label ID="crsedate" runat="server" Text="Course Ending Date"></asp:Label>
                                        </td>
                                        
                                        <td>
                                            <asp:Label ID="Course_edate" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <asp:Label ID="crsdesc" runat="server" Text="Course Description"></asp:Label>
                                        </td>
                                        
                                        <td>
                                            <asp:Label ID="Course_desc" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="2">
                                           
                                        </td>
                                        
                                        
                                    </tr>

                                    <tr>
                                        <td align="left" valign="middle" colspan="2">
                                             <div align="center" class="shadow">   
                                             <h4 class="dropotron">Teacher's Details<//h4>
                                             </div>
                                        </td>
                                    </tr>
                                    <tr>
                                   
                                    </tr>
                                     <tr>
                                   
                                    </tr>
                                     <tr>
                                   
                                    </tr>

                                    <tr>
                                        <td align="right" valign="baseline" colspan="2">
                                        <div align="center" class="dropdown">
                                            <asp:Image ID="tcrpic" Width="150" Height="150" CssClass="shadow" runat="server" />
                                         </div>    
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <asp:Label ID="tcrname" runat="server" Text="Name"></asp:Label>
                                        </td>
                                        
                                        <td>
                                            <asp:Label ID="Teacher_name" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    
                                    
                                    <tr>
                                        <td>
                                            <asp:Label ID="tcrfield" runat="server" Text="Field"></asp:Label>
                                        </td>
                                        
                                        <td>
                                            <asp:Label ID="Teacher_field" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>


                                    <tr>
                                        <td>
                                            <asp:Label ID="tcruni" runat="server" Text="University/College"></asp:Label>
                                        </td>
                                        
                                        <td>
                                            <asp:Label ID="Teacher_uni" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="tcrmail" runat="server" Text="EmailId"></asp:Label>
                                        </td>
                                        
                                        <td>
                                            <asp:Label ID="Teacher_mail" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>

                                </table>
                                </div>
                            </td>
                         </tr>

                         


                    </table>
               </td>
        </tr>
</table>

</asp:Content>

