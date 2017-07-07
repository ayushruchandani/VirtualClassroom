<%@ Page Title="" Language="C#" MasterPageFile="~/student/afterlogin/Master_student_after.master" AutoEventWireup="true" CodeFile="CourseReport.aspx.cs" Inherits="student_afterlogin_CourseReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body onload="javascript:windows:print()">
    <form id="form1" runat="server">
    <div>
        <center>

     <br />
     <br />

     <div class="shadow" style="height:700px; width:900px; background-color:White; color:Black;" >

    <table width="100%"  cellspacing="5" cellpadding="5">
        
            <tr>
                <th colspan="2">
                    <asp:Label ID="lblVC" runat="server" Text="VIRTUAL CLASSROOM" ForeColor="Blue" Font-Bold="true" Font-Names="ARIAL BLACK" Font-Size="XX-Large"></asp:Label>
                </th>
            </tr>



            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                Student Name:
                </td>
                <td>
                <asp:Label ID="lblStudentName" runat="server"></asp:Label>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                Course Name:
                </td>
                <td>
                <asp:Label ID="lblCourseName" runat="server"></asp:Label>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                
                <td colspan="2">
                    <center><asp:Label ID="lblWel" runat="server" Font-Size="X-Large" Font-Underline="true" ForeColor="Red"></asp:Label></center>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>



            <tr>
                <td align="left">
                    <asp:Image ID="studentImage" runat="server" Height="120" Width="90" BorderStyle="Ridge" BackColor="Azure" />            
                </td>
                <td align="right">
                    <asp:Label ID="lblDate" runat="server"></asp:Label>
                </td>
            </tr>


            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

            <tr>
        <td colspan="2">    <div class="shadow">
           
                <asp:Repeater ID="Repeater1" runat="server" 
                    
                    onitemcommand="Repeater1_ItemCommand" >
                    <HeaderTemplate >
                        <table  class="features-table">
                            <tr>
                                <th>Test Id</th>
                                <th>Test Name</th>
                             
                                <th>Marks Scored</th>
                                <th>Total Marks</th>
                            </tr>
                    </HeaderTemplate>
                    
                    <ItemTemplate>
                      <tr>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# Eval("TestId") %></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><%# Eval("TestName") %></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><asp:Label EnableViewState="true" ID="lblScore" runat="server"><%# Eval("Score") %></asp:Label></td>
                                <td align="left" valign="middle" style="width:150px;color:Green;"><asp:Label EnableViewState="true" ID="lblMarks" runat="server"><%# Eval("Marks") %></asp:Label></td>
                                <%--<asp:Label ID="lblCourse" runat="server" <%# DataBinder.Eval(Container.DataItem,"Course") %></asp:Label>
  --%>
                      </tr>
                </ItemTemplate>
                
                <FooterTemplate>
                </table>
                </FooterTemplate>
                
                </asp:Repeater>
            </div>
        </td>
    </tr>


    <tr>
        <td>
            Total Score:
        </td>
        <td>
            <asp:Label ID="lbltScore" runat="server" ></asp:Label>
        </td>
    </tr>

    <tr>
        <td>
            Total Marks:
        </td>
        <td>
            <asp:Label ID="lbltMarks" runat="server"></asp:Label>
        </td>
    </tr>


    <tr>
        <td>
            Percentage:
        </td>
        <td>
            <asp:Label ID="lblper" runat="server"></asp:Label>
        </td>
    </tr>

    <tr>
        <td>
           
        </td>
        <td>
            <asp:Label ID="lblGrade" runat="server"></asp:Label>
        </td>
    </tr>


    <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>


    <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>

    <tr>
        <td style="font-size:large;" colspan="2">
            This is to certify that you have <asp:Label ID="lblText" runat="server"></asp:Label>. You have secured <asp:Label ID="lblAGrade" runat="server" Font-Underline="true"></asp:Label> grade for the course <asp:Label runat="server" ID="lblACourse" Font-Underline="true"></asp:Label>.
        </td>
    
    </tr>
    
            
    </table>
    </div>
    </center>

    </div>
    </form>
</body>
</html>
</asp:Content>

