<%@ page language="VB" autoeventwireup="false" inherits="ApplyOD, App_Web_bgemufol" enableeventvalidation="false" %>

<%@ Register Assembly="obout_Window_NET" Namespace="OboutInc.Window" TagPrefix="owd" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
    <title>Untitled Page</title>
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-repeat: no-repeat; background-position-x: right; background-position-y: top;"
    onload="SetDuration();">
    <form id="form1" runat="server">
    <table cellpadding="2">
        <tr>
            <td style="height: 381px">
                <div>
                    <owd:Window ID="wnd_ApplyOD" runat="server" Height="405" StyleFolder="~/Styles/mainwindow/blue"
                        Title="OD Request Form" Width="595" IsResizable="true" ShowStatusBar="false"
                        Left="200" Top="80">
                        <table class="rowEditTable" width="100%" height="100%" style="border: none;">
                            <tr>
                                <td>
                                    <fieldset>
                                        <legend>OD Request Form</legend>
                                        <table>
                                            <tr>
                                                <td align="right">
                                                    Employee Name
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_EmployeeName" runat="server" Width="265px" Enabled="False"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    From Date
                                                </td>
                                                <td>
                                                    <select id="drp_ddFromDate" runat="server" width="46px">
                                                    </select>&nbsp;&nbsp;<select id="drp_mmFromDate" runat="server" width="48px">
                                                    </select>&nbsp;&nbsp;<select id="drp_yyyyFromDate" runat="server" width="69px">
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    To Date
                                                </td>
                                                <td>
                                                    <select id="drp_ddToDate" runat="server" width="46px">
                                                    </select>&nbsp;&nbsp;<select id="drp_mmToDate" runat="server" width="48px">
                                                    </select>&nbsp;&nbsp;<select id="drp_yyyyToDate" runat="server" width="69px">
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    Begin Time
                                                </td>
                                                <td>
                                                    <asp:DropDownList runat="server" ID="drp_HHBeginTime" onchange="return SetDuration();">
                                                    </asp:DropDownList>
                                                    &nbsp;:&nbsp;<asp:DropDownList runat="server" onchange="return SetDuration();" ID="drp_mmBeginTime">
                                                    </asp:DropDownList>
                                                    &nbsp;End Time&nbsp;<asp:DropDownList runat="server" ID="drp_HHEndTime" onchange="return SetDuration();"
                                                        Width="40px">
                                                    </asp:DropDownList>
                                                    &nbsp;:&nbsp;<asp:DropDownList runat="server" onchange="return SetDuration();" ID="drp_mmEndTime">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    Duration
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_Duration" Enabled="False" runat="server" Width="50px"></asp:TextBox>&nbsp;Mins
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    Remarks
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_Remarks" runat="server" TextMode="MultiLine" Width="415px" Height="100px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    Send Mail To
                                                </td>
                                                <td>
                                                    <asp:ListBox ID="drp_Departments" SelectionMode="Multiple" runat="server" Width="228px">
                                                    </asp:ListBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </fieldset>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Label runat="server" ForeColor="Red" EnableViewState="False" ID="Lbl_InvalidError"></asp:Label>
                                    <asp:Button ID="btn_Save" runat="server" OnClientClick="return btn_Save_onclick();"
                                        Text="Apply"></asp:Button>&nbsp;&nbsp;
                                    <input id="btn_Cancel" type="button" value="Close" onclick="wnd_ApplyOD.Close();" />
                                </td>
                            </tr>
                        </table>
                    </owd:Window>
                    &nbsp; &nbsp; &nbsp; &nbsp;
                </div>
            </td>
        </tr>
    </table>
    <asp:HiddenField ID="hdn_EmployeeLeaveEntryId" runat="server" />
    <asp:HiddenField ID="hdn_EmployeeId" runat="server" />
    <asp:HiddenField ID="hdn_EmployeeName" runat="server" />
    <asp:HiddenField ID="hdn_IsDepartmentHead" runat="server" />
    <asp:HiddenField ID="hdn_DepartmentHeadId" runat="server" />
    <asp:HiddenField ID="hdn_LastApprovedStatus" runat="server" />
    <asp:HiddenField ID="hdn_DepartmentHeadIds" runat="server" />
    <asp:HiddenField ID="hdn_Duration" runat="server" />
    </form>
</body>
</html>
<script type="text/javascript">
    var ControlAction;
    function SetDuration() {

        var HHBeginTime = parseInt(document.getElementById("<%=drp_HHBeginTime.ClientID%>").value);
        if (document.getElementById("<%=drp_HHBeginTime.ClientID%>").value == '08')
            HHBeginTime = 8;
        else if (document.getElementById("<%=drp_HHBeginTime.ClientID%>").value == '09')
            HHBeginTime = 9;

        var mmBeginTime = parseInt(document.getElementById("<%=drp_mmBeginTime.ClientID%>").value);
        if (document.getElementById("<%=drp_mmBeginTime.ClientID%>").value == '08')
            mmBeginTime = 8;
        else if (document.getElementById("<%=drp_mmBeginTime.ClientID%>").value == '09')
            mmBeginTime = 9;

        var HHEndTime = parseInt(document.getElementById("<%=drp_HHEndTime.ClientID%>").value);
        if (document.getElementById("<%=drp_HHEndTime.ClientID%>").value == '08')
            HHEndTime = 8;
        else if (document.getElementById("<%=drp_HHEndTime.ClientID%>").value == '09')
            HHEndTime = 9;

        var mmEndTime = parseInt(document.getElementById("<%=drp_mmEndTime.ClientID%>").value);
        if (document.getElementById("<%=drp_HHEndTime.ClientID%>").value == '08')
            HHEndTime = 8;
        else if (document.getElementById("<%=drp_HHEndTime.ClientID%>").value == '09')
            HHEndTime = 9;

        var Hours;
        if (HHEndTime < HHBeginTime)
            HHEndTime = HHEndTime + 24;
        else if (HHEndTime == HHBeginTime && mmBeginTime > mmEndTime)
            HHEndTime = HHEndTime + 24;

        Hours = (HHEndTime - HHBeginTime) * 60;
        var Minuts = mmEndTime - mmBeginTime;
        var TotalDuration = Hours + Minuts;
        document.getElementById("<%=txt_Duration.ClientID %>").value = TotalDuration;
        return false;
    }
    function btn_Save_onclick() {

        document.getElementById('<%=hdn_Duration.ClientID %>').value = document.getElementById("<%=txt_Duration.ClientID %>").value;
        return true;
    }

    function popup(url) {
        var width = 620;
        var height = 400;
        var left = (screen.width - width) / 2;
        var top = (screen.height - height) / 2;
        var params = 'width=' + width + ', height=' + height;
        params += ', top=' + top + ', left=' + left;
        params += ', directories=no';
        params += ', location=no';
        params += ', menubar=no';
        params += ', resizable=no';
        params += ', scrollbars=no';
        params += ', status=no';
        params += ', toolbar=no';
        newwin = window.open(url, 'windowname5', params);
        if (window.focus) { newwin.focus() }
        return false;
    }
		
</script>
