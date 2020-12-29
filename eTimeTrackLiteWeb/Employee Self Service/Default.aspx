<%@ page language="VB" autoeventwireup="false" inherits="_Default, App_Web_llxrsx5o" %>
<%@ Register TagPrefix="cc1" Namespace="WebControlCaptcha" Assembly="WebControlCaptcha" %>
<%@ Register TagPrefix="owd" Namespace="OboutInc.window" Assembly="obout_Window_NET" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>eSSl eTimeTrack Server</title>
    
    <script type="text/javascript">
    window.onload = function(){
if (top.location.href != self.location.href)
top.location.href = 'Default.aspx';
};

function OpenPopUpWindow() {
    var iMyWidth;
    var iMyHeight;
    iMyWidth = (window.screen.width / 2) - (75 + 10);
    iMyHeight = (window.screen.height / 2) - (100 + 50);
    window.open("ForgotPassword.aspx?", "PopupChild", "status=no,height=150,width=460,resizable=yes,left=" + iMyWidth + ",top=" + iMyHeight + ",screenX=" + iMyWidth + ",screenY=" + iMyHeight + ",toolbar=no,menubar=no,scrollbars=no,location=no,directories=no");
}
    </script>
    
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
    
    <table style="width:100%;padding:0;margin:0" cellpadding="0" cellspacing="0">
<tr style="background-image:url(images/top.jpg);height:70px;">
<td style="width: 100%; padding: 0; margin: 0"  colspan="2">
<img src="images/topleft.jpg" style=""></td>
</tr>
    <tr style="background-image: url(images/middle.jpg); height: 25px;">
        <td style="width: 100%; padding: 0; margin: 0" colspan="2">
            <img src="images/middle.jpg" style=""></td>
            
    </tr>
    <tr>
                <td colspan="2" align="right">
                    <img alt="Background" src="images/bck1.gif" />
                </td>
            </tr>
</table>


        <owd:Dialog   ID="StaffloginDialog" runat="server" StyleFolder="~/Styles/mainwindow/blue"
            Title="Login" VisibleOnLoad="true" Width="420" Height="260" IsModal="False"
            ShowCloseButton="true">
            <table style="background-color: #F1F2EF;" cellpadding="0" cellspacing="0" width="100%">
                <tr style="font-size: 0;">
                    <td>
                        <img src="images/login-header.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 30px; padding-top: 20px;" align="left">
                        <table cellpadding="1px" style="width:350px;">
                            <tr>
                                <td style="width:100px;" align="right">
                                    <b><asp:Label ID="Label1" runat="server" Text="Login Name"></asp:Label></b></td>
                                <td align="left">
                                    <asp:TextBox ID="Txt_UserLogin" runat="server" Width="210px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <b><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></b></td>
                                <td  align="left">
                                    <asp:TextBox ID="Txt_Password" runat="server" TextMode="Password"  Width="210px"></asp:TextBox></td>
                            </tr>
                           
                            <tr>
                                <br />
                                <td align="right" colspan="2">
                                    <br />
                                    <table>
                                        <tr>
                                          
                                            <td align="left" colspan="2">
                                                <asp:Label ID="lbl_InValidError" runat="server" EnableViewState="False" ForeColor="Red"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                             <asp:LinkButton ID="lnkForgotPasswprd" runat="server">Forgot&nbsp;Password?</asp:LinkButton>
                                            </td>
                                            <td align="right">
                                                <asp:Button ID="Btn_Ok" runat="server" Width="70px" Text="Login" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td align="right">
                                               
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </owd:Dialog>
    </form>
</body>
</html>
