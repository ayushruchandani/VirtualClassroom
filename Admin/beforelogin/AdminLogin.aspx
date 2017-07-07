<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/beforelogin/AdminBFLgnMasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_beforelogin_AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <form id="Form1" name="login" runat="server">
        <div class="container">
            <div class="login">
                 <h1>Login to Virtual Classroom</h1>
      
        <p>
            <asp:TextBox ID="logintxt_username" runat="server" placeholder="Username" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqired_username" runat="server" ControlToValidate="logintxt_username" ErrorMessage="Please enter Username..!!" SetFocusOnError="true" />
        </p>

        <p>
            <asp:TextBox ID="logintxt_password" runat="server"  placeholder="Password" TextMode="Password" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="required_password" runat="server" ControlToValidate="logintxt_password"  ErrorMessage="Please enter Password..!!" SetFocusOnError="true" />
        </p>

        

        <p class="remember_me">
          <label>
            <asp:CheckBox ID="remember_me" runat="server" />
            Remember me on this computer
          </label>
        </p>


       

  <%--      <p>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>--%>
                <p class="submit"> 
                    <asp:Button ID="submit" runat="server" Text="Login" onclick="submit_Click"  />      
                </p>      
               <%-- </ContentTemplate>
                </asp:UpdatePanel>
                
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                    <asp:Image ID="loading" ImageUrl="~/images/ajax-loader.gif" runat="server" />
                    </ProgressTemplate>
                </asp:UpdateProgress>

          </p>     --%> 
            
            <p>
                <asp:Label ID="lblErrMsg1" runat="server" ForeColor="Red" ></asp:Label>
            </p>
                <br />
     

        
              <p class="login-help" style="color:Black;">Forgot your password? <a href="~/Forgottpass.aspx" style="color:Black;">Click here to reset it</a>.</p>
        

        </div>
  </div>
      </form>         
</asp:Content>

