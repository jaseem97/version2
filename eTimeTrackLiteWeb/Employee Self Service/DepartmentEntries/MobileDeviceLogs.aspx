<%@ page language="VB" autoeventwireup="false" inherits="DepartmentEntries_MobileDeviceLogs, App_Web_fzgtou2n" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        html
        {
            height: 100%;
        }
        body
        {
            height: 100%;
            margin: 0;
            padding: 0;
        }
     
        .style1
        {
            height: 30px;
        }
    </style>
   
    <script type="text/javascript">
        function OpenLocationPopUpWindow() {

            var Longitude = document.getElementById("<%=hdn_Longitude.ClientID %>").value
            var Latitude = document.getElementById("<%=hdn_Latitude.ClientID %>").value

            var wide = '800';
            var high = '500';

            //this gets the total available width and height of the users screen
            screen_height = window.screen.availHeight;
            screen_width = window.screen.availWidth;

            //this gets the left and top point by saying total width of the screen divided by 2 (center), minus the width of your window divided by 2, which make its center point the middle of the screen. Same for the top
            left_point = parseInt(screen_width / 2) - (wide / 2);
            top_point = parseInt(screen_height / 2) - (high / 2);

            //just doing a simple popup window here, but plugging your info into it, and setting the top and left corners to be our calculated points that will center your window.
            win = window.open('ViewMobileLocationInMaps.aspx?Longitude=' + Longitude + '&Latitude=' + Latitude + '', 'myPopup', 'width=' + wide + ',height=' + high + ',left=' + left_point + ',top=' + top_point + ',toolbar=no,location=no,scrollbars=no,status=no,resizable=no,fullscreen=no');     //make sure your window is in the front 
            win.focus();
        }
      
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
            <br />
            <table cellpadding="0" cellspacing="0" style="border-right: gray 1px solid; border-top: gray 1px solid;
                border-left: gray 1px solid; border-bottom: gray 1px solid;">
                <tr style="font-weight: bold; font-size: 14px; background-color: lightsteelblue;
                    padding-left: 5px; padding-top: 3px; padding-bottom: 3px; color: white;">
                    <td>
                        Mobile Log Details:
                    </td>
                </tr>
                <tr style="background-color: lightsteelblue;">
                    <td colspan="2">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td style="width: 800px; height: 200px;">
                        <table cellpadding="0" cellspacing="0" style="width: 100%; height: 100%;">
                            <tr>
                                <td style="border-right-style: solid; border-right-width: thin; border-right-color: #666666;
                                    text-align: center; font-weight: bold;" class="style1">
                                    Employee Photo
                                </td>
                                <td style="border-right-style: solid; border-right-width: thin; border-right-color: #666666;
                                    text-align: center; font-weight: bold;" class="style1">
                                    To View Google Map with Latitude and Longitude
                                </td>
                            </tr>
                            <tr>
                                <td style="border-right-style: solid; border-right-width: thin; border-right-color: #666666;
                                    text-align: center; vertical-align: top;">
                                    <asp:Image ID="EmployeePhoto" runat="server" Height="142px" Width="131px" BackColor="#666666"
                                        ImageUrl="~/Images/noPhoto.jpg" />
                                </td>
                                <td style="border-right-style: solid; border-right-width: thin; border-right-color: #666666;
                                    text-align: center; vertical-align: top;">
                                    <br />
                                    <br />

                                   <a href="Javascript:void(0);" onclick="OpenLocationPopUpWindow()">
                                    click here! </a>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="background-color: lightsteelblue;">
                    <td colspan="2" style="text-align: left;">
                        <hr />
                        <a style="font-family: Verdana; font-size: 13px; color: #0c416f;" href="PunchRecords.aspx">
                            « Go to Employees Punch Records</a>
                        <asp:HiddenField ID="hdn_Longitude" runat="server" />
                        <asp:HiddenField ID="hdn_Latitude" runat="server" />
                    </td>
                </tr>
            </table>
        </center>
    </div>
    </form>
</body>
</html>
