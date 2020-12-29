<%@ page language="VB" autoeventwireup="false" inherits="Utilities_DefaultTest, eTimeTrackWeb_deploy" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register TagPrefix="obout" Namespace="OboutInc.Flyout2" Assembly="obout_Flyout2_NET" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <center style="font-family:Verdana;font-size:8pt;">

			<a id="ad_calendar" href="javascript: //">Calendar</a>	
			<br />[Position:MIDDLE_RIGHT;Align:TOP]
	    
	    </center>
			
			
			
		<!-- Create Flyout with MIDDLE_RIGHT position and TOP alignment-->
        <obout:Flyout runat="server" ID="Flyout2"  AttachTo="ad_calendar" Position="MIDDLE_RIGHT" Align="TOP" >
	        <img src="images/calendar.jpg"/>
        </obout:Flyout>		

    </div>
    </form>
</body>
</html>
