<%@ page language="VB" autoeventwireup="false" inherits="ResetPassword, App_Web_llxrsx5o" enableeventvalidation="false" %>

<%@ Register Assembly="obout_Window_NET" Namespace="OboutInc.Window" TagPrefix="owd" %>
<!DOCTYPE  html  PUBLIC  "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>eTimeTrackLite Server Online</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">

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
                &nbsp;</td>
        </tr>
    </table>
     
      <div style="text-align: center;vertical-align: text-top">
      <br />
          <asp:Label ID="lblError" runat="server" Style="font-size: 14pt; color: #ff6666" Width="717px"></asp:Label>
          <br />
          <br />
          <asp:HyperLink ID="hprLink" Style="font-size: 14pt;" runat="server">Login Here</asp:HyperLink>
          
                <owd:Window ID="ChangePassword" runat="server" IsModal="true" Height="200" Width="405"
                    StyleFolder="~/Styles/mainwindow/blue" Title="Reset Password" VisibleOnLoad="true"
                    ShowCloseButton="false" ShowStatusBar="False" Left="350" Top="155">
                    <table width="100%" height="100%" cellpadding="1" class="Table" style="border-top-style: none;
                        border-right-style: none; border-left-style: none; border-bottom-style: none;">
                        <tr>
                            <td>
                                <fieldset>
                                    <legend>Reset Password</legend>
                                    <table>
                                        <tr>
                                            <td style="font-weight: bold;">
                                                New Password</td>
                                            <td>
                                                <asp:TextBox ID="txt_NewPassword" runat="server" TextMode="Password" Width="230px"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="font-weight: bold;">
                                                Confirm Password</td>
                                            <td>
                                                <asp:TextBox ID="txt_ConfirmPassword" runat="server" TextMode="Password" Width="230px"></asp:TextBox></td>
                                        </tr>
                                    </table>
                                </fieldset>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Button ID="Btn_Save" runat="server" Text="Save" Width="60px" OnClientClick="return Btn_SaveOnClientClick();" />
                                &nbsp;&nbsp;&nbsp;<input id="btn_Cancel" type="button" value="Close" onclick="return closeWindow();" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Lbl_Error" runat="server" EnableViewState="False" Text="&nbsp;" ForeColor="Red"></asp:Label>&nbsp;
                                <asp:HyperLink ID="hprLink1"  runat="server">Login Here</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </owd:Window>
            </div>
    </form>
    
    <script type="text/javascript">
        function closeWindow()
        {
         try
		         {
		        
		        ChangePassword.Close();
		         }
		         catch(ex)
		         {
		            alert(ex.message);
		         }
        
        }
        
        function Btn_SaveOnClientClick()
            {
                 
                
                    if(document.getElementById("<%=txt_NewPassword.ClientID %>").value==='')
                    {
                            document.getElementById("<%=Lbl_Error.ClientID %>").innerHTML="Please Enter New Password"
                            return false;
                    }
                    
                    else  if(document.getElementById("<%=txt_ConfirmPassword.ClientID %>").value==='')
                    {
                        document.getElementById("<%=Lbl_Error.ClientID %>").innerHTML="Please Enter Confirm Password"
                        return false;
                    }
                    
                    else if(document.getElementById("<%=txt_NewPassword.ClientID %>").value===document.getElementById("<%=txt_ConfirmPassword.ClientID %>").value)
                    {
                        return true;
                    }
                    
                    else
                        {
                            document.getElementById("<%=Lbl_Error.ClientID %>").innerHTML="New Password and Confirm Password is not Match"
                            return false;
                        }
            }
    </script>
  
</body>
</html>