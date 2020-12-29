<%@ page language="VB" autoeventwireup="false" inherits="Admin_ShiftCalendarShedular, App_Web_bgemufol" %>

<%@ Register TagPrefix="obout" Namespace="Obout.Grid" Assembly="obout_Grid_NET" %>
<%@ Register TagPrefix="obout" Namespace="OboutInc.Flyout2" Assembly="obout_Flyout2_NET" %>
<%@ Register Assembly="obout_Window_NET" Namespace="OboutInc.Window" TagPrefix="owd" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
		               
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="0" cellspacing="0" style="border-right: gray 1px solid; border-top: gray 1px solid;
                border-left: gray 1px solid; border-bottom: gray 1px solid;">
                <tr style=" background-image: url(../styles/grid/styles/style_12/record_group_header.gif); padding-left: 5px; padding-top: 3px; padding-bottom: 3px; color: white; background-repeat:repeat-x;">
                    <td style="height: 26px" >
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Employee Name</b>:&nbsp;<asp:Label ID="lbl_shiftCalendarName"
                            runat="server" Text="Label" Font-Names="Verdana" Font-Bold="false" ForeColor="white"></asp:Label>
                    </td>
                    <td align="right" runat="server" id="td_DeviceCommand" style="height: 26px">
                        <asp:Label ID="Label2" runat="server" Text="Month"></asp:Label>&nbsp;<asp:DropDownList
                            ID="drp_Month" runat="server" Font-Names="Verdana" Font-Size="12px" >
                        </asp:DropDownList>&nbsp;&nbsp;Year&nbsp;<asp:DropDownList ID="drp_Year" runat="server" Font-Names="Verdana" Font-Size="12px" />
                        &nbsp;&nbsp;&nbsp;<asp:Button ID="btn_OK" runat="server" Text="OK" OnClientClick="return btn_OK_OnClientClick();" Font-Names="Verdana" Font-Size="12px" />&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2" width="100%">
                        <asp:PlaceHolder ID="plchld_shiftCalender" runat="server"></asp:PlaceHolder>
                    </td>
                </tr>
            </table>
        </div>
    </form>

    

</body>
</html>
