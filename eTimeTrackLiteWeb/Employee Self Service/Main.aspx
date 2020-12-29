<%@ page language="VB" autoeventwireup="false" inherits="Main, App_Web_llxrsx5o" %>

<%@ Register Assembly="obout_Splitter2_Net" Namespace="OboutInc.Splitter2" TagPrefix="obspl" %>
<%@ Register TagPrefix="owd" Namespace="OboutInc.Window" Assembly="obout_Window_NET" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>eTimeTrack Attendance Master</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="Form1" runat="server" action="">
    <table style="width: 100%; padding: 0; margin: 0" cellpadding="0" cellspacing="0">
        <tr style="background-image: url(images/top.jpg); height: 70px;">
            <td style="width: 100%; padding: 0; margin: 0" colspan="2">
                <img src="images/topleft.jpg" style="">
            </td>
        </tr>
        <tr style="background-image: url(images/middle.jpg); height: 25px;">
            <td style="padding: 0; margin: 0">
                <img src="images/middle.jpg" style="">
            </td>
            <td align="right">
                <asp:Label ID="lbl_LoginDetails" runat="server" Text="Welcome, SUMIT JAIN . You Last Visited the site on 04/10/2011 4:38:12 PM IST "
                    Font-Bold="true" Font-Size="8" ForeColor="white"></asp:Label>
                &nbsp;&nbsp;|&nbsp;<a href="javascript:;" onclick="LoadMainPageWithQueryString('MyProfile.aspx')" class="LogOffButton">My Profile</a> |&nbsp;<asp:LinkButton ID="lnk_LogOff"
                    CssClass="LogOffButton" runat="server">Log Off</asp:LinkButton>&nbsp;|&nbsp;
            </td>
        </tr>
    </table>


        
        
        <obspl:Splitter ID="splMain" runat="server" StyleFolder="~/styles/splitter/styles/icq" >
            <LeftPanel WidthDefault="210" WidthMin="30" WidthMax="230">
                <%--<Content Url="LeftMenu_Slider.aspx">--%>
                <Content  Url="LeftMenu.aspx">
                </Content>
                <Footer Height="22">
                    <table cellpadding="0" cellspacing="0" style="width: 100%;">
                        <tr style="background-color: lightsteelblue; height: 22px;">
                            <td width="100%">
                            </td>
                            <td align="right" class="LogOffButton">
                            </td>
                        </tr>
                    </table>
                </Footer>
            </LeftPanel>
            <RightPanel WidthDefault="100">
                <Content Url="Workerpage.aspx" />
                <Footer Height="22">
                    <table cellpadding="2" cellspacing="0" style="width: 100%; background-color: lightsteelblue;
                        height: 22px;">
                        <tr style="">
                            <td style="font-family: Verdana; font-size: 9px; color: #ffffff;" align="right">
                                &nbsp;<asp:Label ID="lblFooter" CssClass="LogOffButton" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                </Footer>
            </RightPanel>
            
        </obspl:Splitter>
        
        
        <owd:Window ID="mySessionTimeOutWindow" runat="server" 
                    Left="580" Top="320" Height="80"  Width="250" VisibleOnLoad="false"
                    StyleFolder="~/Styles/mainwindow/blue" Title="Session Time Out" IsModal="True" ShowStatusBar="False" OnClientClose="SessionTimeOutCloseWindow()" >            
 <center >
         <table >
    <tr>
        <td align="left" ><asp:Label ID="lblSession" runat="server" Text="Session Timed Out. System will re-login." Font-Size="11px" ForeColor="Black" Font-Names="Verdana"></asp:Label></td>
    </tr>
    
    <tr>
        <td align="right" ><input id="btnSessionOk" type="button" value="OK" onclick="SessionTimeOutCloseWindow()" /></td>
    </tr>
             
    
</table>  
 </center> 
  </owd:Window>
 
 
    </form>
    
    <script type="text/javascript">
  function SessionTimeOutCloseWindow()
    {
        window.parent.location.href='LogOut.aspx';
    }

    function LoadMainPageWithQueryString(cId) {
        window.parent.splMain.loadPage('RightContent', cId);
    }
  
  </script>
  
  
  
</body>

</html>
