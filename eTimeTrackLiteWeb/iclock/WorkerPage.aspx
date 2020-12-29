<%@ page language="VB" autoeventwireup="false" inherits="WorkerPage, eTimeTrackWeb_deploy" enableeventvalidation="false" %>

<%@ Register TagPrefix="obout" Namespace="Obout.Grid" Assembly="obout_Grid_NET" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function LoadMainPage(cId) {
            window.parent.splMain.loadPage('RightContent', cId + '.aspx');
        }

        function LoadMainPageWithQueryString(cId) {
            window.parent.splMain.loadPage('RightContent', cId);
        }
    </script>
    <script type="text/javascript">
        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
        function IsNumeric(e) {
            var keyCode = e.which ? e.which : e.keyCode
            var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
            return ret;
        }

        function RefreshDataGrid() {
            grid_Devices.refresh();
        }

        
    </script>
    <style type="text/css">
        .style1
        {
            color: #FF5050;
            font-size: medium;
        }
        .style2
        {
            color: #FF0066;
        }
    </style>
</head>
<body>
    <script>
        var TimeInterval = '<%= Session("TimeInterval") %>';
        TimeInterval = TimeInterval * 1000;
        var myVar = setInterval(myTimer, TimeInterval);

        function myTimer() {
            document.getElementById("btnUpdate").click();
        }

    </script>
    <form id="form1" runat="server">
    <div>
        <center>
            <table cellpadding="0" cellspacing="0" style="width: 84%">
                <tr>
                    <td colspan="3" style="border-bottom: lightgrey thin solid; height: 62px; background-color: #e7edf2">
                        <h1>
                            &nbsp; <span style="font-family: Bell MT"><span style="font-size: 18pt; color: black">
                                Dashboard</span> <small><span style="font-size: 11pt; color: silver">Biometric Attendance
                                    System</span></small> </span>
                        </h1>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="vertical-align: middle; border-bottom: lightgrey thin solid;
                        background-color: ghostwhite; text-align: center; border-bottom-color: #0099CC;">
                        <table style="padding-left: 11px; width: 96%">
                            <tr>
                                <td style="vertical-align: middle; width: 25%; text-align: center">
                                    <div style="width: 98%; height: 97%; background-color: #e57718">
                                        <!-- small box -->
                                        <div style="width: 100%">
                                            <div style="background-color: #ff851b">
                                                <h3 style="text-align: left">
                                                    <asp:Label ID="lblRegEmployees" runat="server" Text="0"></asp:Label>
                                                </h3>
                                                <p style="font-size: 16px; text-align: left">
                                                    Registered Employees
                                                </p>
                                            </div>
                                            <div style="width: 1%">
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td style="vertical-align: middle; width: 25%; text-align: center">
                                    <div style="width: 98%; height: 97%; background-color: #90b030">
                                        <!-- small box -->
                                        <div style="width: 100%">
                                            <div style="background-color: #a1c436">
                                                <h3 style="text-align: left">
                                                    <asp:Label ID="lblPrEmployees" runat="server" Text="0"></asp:Label>
                                                </h3>
                                                <p style="font-size: 16px; text-align: left">
                                                    Present Employees
                                                </p>
                                            </div>
                                            <div style="width: 1%">
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td style="vertical-align: middle; width: 25%; text-align: center">
                                    <div style="width: 98%; height: 97%; background-color: #99703d">
                                        <!-- small box -->
                                        <div style="width: 100%">
                                            <div style="background-color: #ab7d44">
                                                <h3 style="text-align: left">
                                                    <asp:Label ID="lblActDevices" runat="server" Text="0"></asp:Label>
                                                </h3>
                                                <p style="font-size: 16px; text-align: left">
                                                    Online Devices
                                                </p>
                                            </div>
                                            <div style="width: 1%">
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td style="vertical-align: middle; width: 25%; text-align: center">
                                    <div style="width: 98%; height: 97%; background-color: #BB0000">
                                        <!-- small box -->
                                        <div style="width: 100%">
                                            <div style="background-color: #CC0000">
                                                <h3 style="text-align: left">
                                                    <asp:Label ID="lblInActDevices" runat="server" Text="0"></asp:Label>
                                                </h3>
                                                <p style="font-size: 16px; text-align: left">
                                                    Offline Devices
                                                </p>
                                            </div>
                                            <div style="width: 1%">
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr colspan="4">
                                <td>
                                    <div style="width: 99%; height: 10%;">
                                        <!-- small box -->
                                        <div style="width: 100%">
                                            <a href="Covid19Dashboard.aspx" style="background-color: #CC0066; border-style: None;
                                                font-bold: True; color: #99CCFF; font-weight: 700; width: 271px;"><blink>Click for Covid-19
                                                Dashboard</blink></a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <span style="font-size: 10pt">&nbsp;&nbsp; </span>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="vertical-align: middle; border-bottom: lightgrey thin solid;
                        background-color: ghostwhite; text-align: center">
                        <br />
                        <br />
                        <center>
                            <table cellpadding="0" cellspacing="0" style="width: 84%">
                                <tr>
                                    <td>
                                        <center>
                                            <table cellpadding="0" cellspacing="0" style="color: #0033CC; font-weight: bold;">
                                                <tr>
                                                    <td>
                                                        Device&nbsp;Status:
                                                    </td>
                                                    <td>
                                                        &nbsp;&nbsp;Location
                                                    </td>
                                                    <td>
                                                        &nbsp;&nbsp;<asp:DropDownList ID="drp_Location" Width="200px" runat="server">
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        &nbsp;&nbsp;Status
                                                    </td>
                                                    <td>
                                                        &nbsp;&nbsp;<asp:DropDownList ID="drp_Status" Width="125px" runat="server">
                                                            <asp:ListItem>Online</asp:ListItem>
                                                            <asp:ListItem>Offline</asp:ListItem>
                                                            <asp:ListItem>All</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        &nbsp;&nbsp;
                                                        <input type="button" class="tdText" value="Refresh" onclick="grid_Devices.refresh()"
                                                            id="btn_Refresh" />
                                                    </td>
                                                    <td>
                                                        &nbsp;&nbsp;Auto&nbsp;refresh&nbsp;every&nbsp;
                                                        <asp:TextBox ID="txt_Interval" runat="server" AutoPostBack="true" Onkeypress="return IsNumeric(event);"
                                                            Width="32" Text="30" Style="text-align: center;" />&nbsp;seconds
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                        </center>
                                    </td>
                                </tr>
                            </table>
                            <div style="overflow: auto; height: 200; width: 200;">
                                <obout:Grid ID="grid_Devices" runat="server" AllowRecordSelection="false" AllowMultiRecordSelection="false"
                                    KeepSelectedRecords="true" Serialize="true" AllowPageSizeSelection="true" AllowFiltering="true"
                                    AutoGenerateColumns="false" FolderStyle="~/styles/grid/styles/grand_gray" AllowAddingRecords="false"
                                    ShowLoadingMessage="false" OnRebind="RebindGrid" AllowSorting="True">
                                    <Columns>
                                        <obout:Column ID="Column2" DataField="DeviceId" Visible="False" Width="300" HeaderText="DeviceId"
                                            ConvertEmptyStringToNull="False" Index="0" />
                                        <obout:Column ID="Column4" DataField="DeviceSName" Visible="True" Width="325" HeaderText="DeviceSName"
                                            ConvertEmptyStringToNull="False" Index="1" />
                                        <obout:Column ID="Column3" DataField="DeviceFName" Visible="True" Width="325" HeaderText="DeviceFName"
                                            ConvertEmptyStringToNull="False" Index="2" />
                                        <obout:Column ID="Column7" DataField="SerialNumber" Width="150" HeaderText="Serial No."
                                            ConvertEmptyStringToNull="False" Index="3" />
                                        <obout:Column ID="Column8" DataField="DeviceDirection" Visible="false" Width="70"
                                            HeaderText="Direction" ConvertEmptyStringToNull="False" Index="4" />
                                        <obout:Column ID="Column11" DataField="TransactionStamp" Visible="false" Width="90"
                                            HeaderText="T Stamp" ConvertEmptyStringToNull="False" Index="5" />
                                        <obout:Column ID="Column9" DataField="OpStamp" Width="95" HeaderText="Op Stamp" Visible="false"
                                            ConvertEmptyStringToNull="False" Index="6" />
                                        <obout:Column ID="Column14" DataField="DeviceLocation" Width="100" HeaderText="Location"
                                            ConvertEmptyStringToNull="False" Index="7">
                                        </obout:Column>
                                        <obout:Column ID="Column6" Width="130" HeaderText="Last Ping" DataField="LastPing"
                                            ConvertEmptyStringToNull="False" Index="8" TemplateId="LastPing_Template">
                                            <TemplateSettings TemplateId="LastPing_Template" />
                                        </obout:Column>
                                        <obout:Column ID="Column12" Width="70" HeaderText="Status" ConvertEmptyStringToNull="False"
                                            Index="9" TemplateId="DeviceStatus_Template">
                                            <TemplateSettings TemplateId="DeviceStatus_Template" />
                                        </obout:Column>
                                    </Columns>
                                    <Templates>
                                        <obout:GridTemplate runat="server" ID="LastPing_Template" ControlID="" ControlPropertyName="">
                                            <Template>
                                                <%#ParseLastPing(Container.DataItem.Item("LastPing"))%>
                                            </Template>
                                        </obout:GridTemplate>
                                        <obout:GridTemplate runat="server" ID="DeviceStatus_Template" ControlID="" ControlPropertyName="">
                                            <Template>
                                                <asp:Label ID="Label1" runat="server" Text='<%#DeviceStatus(Container.DataItem.Item("LastPing"),Container.DataItem.Item("TimeOut"))%>'
                                                    ForeColor='<%#ChangeColorOnDeviceStatusCheck(Container.DataItem("LastPing"),Container.DataItem("TimeOut")) %>'></asp:Label>
                                            </Template>
                                        </obout:GridTemplate>
                                    </Templates>
                                </obout:Grid>
                            </div>
                        </center>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr style="font-size: 10pt; font-family: Verdana">
                    <td colspan="3" style="text-align: center">
                        <span style="color: #006699">&nbsp; </span>
                        <asp:Button ID="btnUpdate" Style="display: none;" runat="server" Text="Button" />
                    </td>
                </tr>
                <tr style="font-family: Verdana">
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
            </table>
        </center>
    </div>
    </form>
    <script runat="server">
           
        Function ParseLastPing(ByVal LastCheckDate As String) As String
            Try
                If CDate(LastCheckDate) < CDate("1910-01-01") Then
                    Return ""
                Else
                    Return CDate(LastCheckDate).ToString("dd-MMM-yyyy HH:mm")
                End If
            Catch ex As Exception
                Return ""
            End Try
            Return ""
        End Function
        
        Function ChangeColorOnDeviceStatusCheck(ByVal LastCheckDate As String, ByVal TimeOut As String) As System.Drawing.Color
            Try
                If TimeOut = "" Then
                    TimeOut = 300
                End If
            
                If DateDiff(DateInterval.Second, CDate(LastCheckDate), CDate(Now.ToString("dd-MMM-yyyy HH:mm:ss"))) > TimeOut Then
                    Return Drawing.Color.Red
                Else
                    Return Drawing.Color.Green
                End If
                Return Drawing.Color.Red
            Catch ex As Exception
                Return Drawing.Color.Red
            End Try
        End Function
        
        Function DeviceStatus(ByVal LastCheckDate As String, ByVal TimeOut As String)
            Try
                If TimeOut = "" Then
                    TimeOut = 300
                End If
            
                If DateDiff(DateInterval.Second, CDate(LastCheckDate), CDate(Now.ToString("dd-MMM-yyyy HH:mm:ss"))) > TimeOut Then
                    Return "offline"
                Else
                    Return "online"
                End If
                Return "offline"
            Catch ex As Exception
                Return "online"
            End Try
        End Function
           
           
    </script>
</body>
</html>
