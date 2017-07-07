<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <%--Slider--%>
    <div class="shadow">
    <div id="slider" class="opener">
		<div class="viewer">
			<div class="reel">
				<div class="slide">
					<img src="images/Education.png" alt="" />
				</div>
				<div class="slide">

                   

					<img src="images/Wipro Logo.jpg" alt="" />
				</div>
				<div class="slide">
					<img src="images/category-virtual-classroom-long.png" alt="" />
				</div>
				<div class="slide">
					<img src="images/Iera_Slide_3.png" alt="" />
				</div>
				<div class="slide">
					<img src="images/banner2.png" alt="" />
				</div>
			</div>
		</div>
		<div class="indicator">
			<span>1</span>
			<span>2</span>
			<span>3</span>
			<span>4</span>
			<span>5</span>
		</div>
  </div>
</div>

<%--company info--%>


<%--<div id="page">
<div id="content">--%>
			<%--<div class="box" style="width:auto;height:auto;padding-left:50px;padding-right:50px;">
                <div class="shadow" style="background-color:ActiveCaption">
				<h2 class="dropotron"><u>Wipro Infotech</u></h2>
				<p>
					Wipro Infotech is a leading manufacturer of computer hardware and provider of IT services in India and the Middle East region. Part of Wipro Ltd, the $6.98 billion conglomerate and global leader in technology enabled solutions, the company leverages on the parent's philosophy of 'Applying Thought' to enable business results by being a transformation catalyst.
Our vast IT services portfolio includes consulting, systems integration, application development and maintenance, technology infrastructure services, package implementation and R&D services among others.

				</p>
                
                
                <p>
                Wipro is globally recognized for its innovative approach towards delivering business value and its commitment to sustainability. Wipro champions optimized utilization of natural resources, capital and talent. Today we are a trusted partner of choice for global businesses looking to ‘differentiate at the front’ and ‘standardize at the core’ through technology interventions.
In today’s world, organizations will have to rapidly reengineer themselves and be more responsive to changing customer needs. Wipro is well positioned to be a partner and co-innovator to businesses in their transformation journey, identify new growth opportunities and facilitate their foray into new sectors and markets.
                </p>
                </div>
			</div>		
			<br class="clearfix" />--%>
<%--</div>
</div>--%>

<%--login div--%>



<%--<div  id="sidebar">--%>
<hr class="effect8"  />
<div class="shadow">
<table>
<tr>
<td colspan="2">
<div  style="background-color:transparent;width:350px;height:500px;padding-left:280px;">
    <form name="login" runat="server">
            <div class="login">
                 <h1 style="background-color:#209d9d;color:Black;font-size:larger;font-family:@MingLiU"><b> Login to Virtual Classroom</b></h1>
      
        <p>
            <asp:TextBox ID="logintxt_username" runat="server" placeholder="Username" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqired_username" runat="server" ControlToValidate="logintxt_username" ErrorMessage="Please enter Username..!!" SetFocusOnError="true" />
        </p>

        <p>
            <asp:TextBox ID="logintxt_password" runat="server"  placeholder="Password" TextMode="Password" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="required_password" runat="server" ControlToValidate="logintxt_password"  ErrorMessage="Please enter Password..!!" SetFocusOnError="true" />
        </p>

        <p>
            <asp:Label ID="select_user" runat="server" Text="Select User:-"></asp:Label>&nbsp;&nbsp;
           
            <asp:RadioButtonList ID="user" runat="server">
                            <asp:ListItem Selected="true">Student</asp:ListItem> 
                            <asp:ListItem>Teacher</asp:ListItem>
            </asp:RadioButtonList>  
        </p>

        <p class="remember_me">
          <label>
            <asp:CheckBox ID="remember_me" runat="server" />
            Remember me on this computer
          </label>
        </p>

        <p>
               <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>--%>
                <p class="submit"> 
                    <asp:Button ID="submit" runat="server" Text="Login" onclick="submit_Click" />      
                </p>      
               <%-- </ContentTemplate>
                </asp:UpdatePanel>
                
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                    <asp:Image ID="loading" ImageUrl="~/images/ajax-loader.gif" runat="server" />
                    </ProgressTemplate>
                </asp:UpdateProgress>--%>

          </p>      
            
           <p>
                <asp:Label ID="lblErrMsg" runat="server"></asp:Label>
           </p>
                <br />
     

        
              <p class="login-help" style="color:Black;">Forgot your password? <a href="Forgottpass.aspx" style="color:Black;">Click here to reset it</a>.</p>
        

        </div>
        
      </form>         
</div>

</td>

<%--<td align="right" style="padding-left:30px">
    <div class="shadow">
    <div class="box" style="background-color:ActiveCaption;height:550px;width:500px;font-size:inherit;font-weight: bold;color: #000000;">
        <h2 class="dropotron"><u>What's New..??</u></h2>
            


            <script type="text/javascript">

                /***********************************************
                * Fading Scroller- © Dynamic Drive DHTML code library (www.dynamicdrive.com)
                * This notice MUST stay intact for legal use
                * Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
                ***********************************************/

                var delay = 3000; //set delay between message change (in miliseconds)
                var maxsteps = 30; // number of steps to take to change from start color to endcolor
                var stepdelay = 40; // time in miliseconds of a single step
                //**Note: maxsteps*stepdelay will be total time in miliseconds of fading effect
                var startcolor = new Array(255, 255, 255); // start color (red, green, blue)
                var endcolor = new Array(0, 0, 0); // end color (red, green, blue)

                var fcontent = new Array();
                begintag = '<div style="font: normal 34px Arial; padding: 5px;">'; //set opening tag, such as font declarations
                fcontent[0] = "<b>What\'s new?</b><br>New scripts added to the Scroller category!<br><br>The MoreZone has been updated. <a href='../morezone/index.htm'>Click here to visit</a>";
                fcontent[1] = "Dynamic Drive has been featured on Jars as a top 5% resource, and About.com as a recommended DHTML destination.";
                fcontent[2] = "Ok, enough with these pointless messages. You get the idea behind this script.</a>";
                closetag = '</div>';

                var fwidth = '495px'; //set scroller width
                var fheight = '490px'; //set scroller height

                var fadelinks = 1;  //should links inside scroller content also fade like text? 0 for no, 1 for yes.

                ///No need to edit below this line/////////////////


                var ie4 = document.all && !document.getElementById;
                var DOM2 = document.getElementById;
                var faderdelay = 0;
                var index = 0;


                /*Rafael Raposo edited function*/
                //function to change content
                function changecontent() {
                    if (index >= fcontent.length)
                        index = 0
                    if (DOM2) {
                        document.getElementById("fscroller").style.color = "rgb(" + startcolor[0] + ", " + startcolor[1] + ", " + startcolor[2] + ")"
                        document.getElementById("fscroller").innerHTML = begintag + fcontent[index] + closetag
                        if (fadelinks)
                            linkcolorchange(1);
                        colorfade(1, 15);
                    }
                    else if (ie4)
                        document.all.fscroller.innerHTML = begintag + fcontent[index] + closetag;
                    index++
                }

                // colorfade() partially by Marcio Galli for Netscape Communications.  ////////////
                // Modified by Dynamicdrive.com

                function linkcolorchange(step) {
                    var obj = document.getElementById("fscroller").getElementsByTagName("A");
                    if (obj.length > 0) {
                        for (i = 0; i < obj.length; i++)
                            obj[i].style.color = getstepcolor(step);
                    }
                }

                /*Rafael Raposo edited function*/
                var fadecounter;
                function colorfade(step) {
                    if (step <= maxsteps) {
                        document.getElementById("fscroller").style.color = getstepcolor(step);
                        if (fadelinks)
                            linkcolorchange(step);
                        step++;
                        fadecounter = setTimeout("colorfade(" + step + ")", stepdelay);
                    } else {
                        clearTimeout(fadecounter);
                        document.getElementById("fscroller").style.color = "rgb(" + endcolor[0] + ", " + endcolor[1] + ", " + endcolor[2] + ")";
                        setTimeout("changecontent()", delay);

                    }
                }

                /*Rafael Raposo's new function*/
                function getstepcolor(step) {
                    var diff
                    var newcolor = new Array(3);
                    for (var i = 0; i < 3; i++) {
                        diff = (startcolor[i] - endcolor[i]);
                        if (diff > 0) {
                            newcolor[i] = startcolor[i] - (Math.round((diff / maxsteps)) * step);
                        } else {
                            newcolor[i] = startcolor[i] + (Math.round((Math.abs(diff) / maxsteps)) * step);
                        }
                    }
                    return ("rgb(" + newcolor[0] + ", " + newcolor[1] + ", " + newcolor[2] + ")");
                }

                if (ie4 || DOM2)
                    document.write('<div id="fscroller" style="border:1px solid black;width:' + fwidth + ';height:' + fheight + '"></div>');

                if (window.addEventListener)
                    window.addEventListener("load", changecontent, false)
                else if (window.attachEvent)
                    window.attachEvent("onload", changecontent)
                else if (document.getElementById)
                    window.onload = changecontent

</script>









    </div>
    </div>
</td>
--%>
</tr>



</table>
 </div>   
     <br class="clearfix" />
    

</asp:Content>

