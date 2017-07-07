<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" runat="server">
<br /><br />
   <div style="font-size:large;" align="center">
        <asp:Label ID="title" CssClass="dropotron" runat="server" Text="Contact--Us" Width="150px"></asp:Label>    
   </div>
   <br />
   

   <div class="effect8" style="padding:60px">
   

        
       <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
       </asp:ToolkitScriptManager>
       

      
<asp:Accordion  ID="Accordion1"  runat="server">
    <Panes>
        <asp:AccordionPane ID="AccordionPane4" runat="server">
        <Header><h4 class="shadow" style="background-color:Gray;color:CaptionText;cursor:pointer">GOOGLE-MAP</h4></Header>
        <Content>
            <h3 class="panel-info">
            <center>
                 <div class="shadow" style="width:inherit;height:inherit;background-color:Black">
                    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script><div style="overflow:hidden;height:500px;width:600px;"><div id="gmap_canvas" style="height:500px;width:600px;"></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style><a class="google-map-code" href="http://premium-wordpress-themes.org" id="get-map-data">http://premium-wordpress-themes.org</a></div><script type="text/javascript">                                                                                                                                                                                                                                                                                                                                                                                                                                                       function init_map() { var myOptions = { zoom: 14, center: new google.maps.LatLng(22.3209191, 73.15881620000005), mapTypeId: google.maps.MapTypeId.ROADMAP }; map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions); marker = new google.maps.Marker({ map: map, position: new google.maps.LatLng(22.3209191, 73.15881620000005) }); infowindow = new google.maps.InfoWindow({ content: "<b>Wipro Infotech</b><br/>311-Pujer Complex, Subhanpura,<br/>390023 Vadodara" }); google.maps.event.addListener(marker, "click", function () { infowindow.open(map, marker); }); infowindow.open(map, marker); } google.maps.event.addDomListener(window, 'load', init_map);</script>
                 </div>
            </center>                 
            </h3>
        </Content>
        </asp:AccordionPane>
    
        <asp:AccordionPane ID="AccordionPane1" runat="server">
        <Header><h4 class="shadow" style="background-color:Gray;color:CaptionText;cursor:pointer">ADDRESS</h4></Header>
        <Content>
        <h4 style="background-color:Teal">
        Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.
        Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.
        Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.            
        </h4>
        </Content>
        </asp:AccordionPane>
    
        <asp:AccordionPane ID="AccordionPane2" runat="server">
        <Header><h4 class="shadow" style="background-color:Gray;color:CaptionText;cursor:pointer">CONTACT-DETAILS</h4></Header>
        <Content>
        <h4 style="background-color:Teal">
        Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.
        Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.
        Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.
        </h4>
        </Content>
        </asp:AccordionPane>

        <asp:AccordionPane ID="AccordionPane3" runat="server">
        <Header><h4 class="shadow" style="background-color:Gray;color:CaptionText;cursor:pointer">MAIL-US</h4></Header>
        <Content>
        <h4 style="background-color:Teal">
        Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.
        Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.
        Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.
        </h4>
        </Content>
    </asp:AccordionPane>
</Panes>
</asp:Accordion>

       
   </div>
      
   </form>
</asp:Content>

