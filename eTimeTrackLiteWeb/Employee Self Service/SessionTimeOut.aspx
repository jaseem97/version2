<%@ page language="VB" autoeventwireup="false" inherits="Permission, App_Web_llxrsx5o" %>
<%@ Register Assembly="obout_Window_NET" Namespace="OboutInc.Window" TagPrefix="owd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <owd:Window ID="mySessionTimeOutWindow" runat="server" 
                    Left="580" Top="320" Height="105"  Width="420" VisibleOnLoad="true"
                    StyleFolder="~/Styles/blue" Title="Session Time Out" IsModal="True" ShowStatusBar="False" OnClientClose="SessionTimeOutCloseWindow()" >            
                 <center >
                  <table >
                    <tr>
                       <td align="left" ><asp:Label ID="lblSession" runat="server" Text="Either you did not enter User Id and Password or Session has expired. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System will re-login." Font-Size="11px" ForeColor="Black" Font-Names="Verdana"></asp:Label>
                       </td>
                   </tr>
    
                    <tr>
                     <td align="center" ><input id="btnSessionOk" type="button" value="OK" onclick="SessionTimeOutCloseWindow();" />
                     </td>
                  </tr>
           </table>  
       </center> 
  </owd:Window>
    </div>
    </form>
    <script type="text/javascript">
  function SessionTimeOutCloseWindow()
    {
        window.parent.location.href='Default.aspx?page=Login';
    }

     </script>
     
</body>
</html>
