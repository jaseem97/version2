<%@ page language="VB" autoeventwireup="false" inherits="Workerpage, App_Web_llxrsx5o" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <script type="text/javascript">
        function LoadMainPage(cId) {
            window.parent.splMain.loadPage('RightContent', cId + '.aspx');
        }

        function LoadMainPageWithQueryString(cId) {
            window.parent.splMain.loadPage('RightContent', cId);
        }
    </script>
    <style type="text/css">
        .style1
        {
            height: 33px;
        }
        .style2
        {
            height: 250px;
        }
        .style3
        {
            text-decoration: underline;
            font-style: normal;
            color: #0099CC;
        }
    </style>
</head>
<body topmargin="0" leftmargin="0" style="background-image: url('Images/bck1.gif');
    background-position-x: right; background-position-y: top; background-repeat: no-repeat;
    background-color: White;">
    <form id="form1" runat="server">
    <table cellpadding="0" cellspacing="0" style="width: 100%;">
        <tr>
            <td colspan="2" align="center" style="font-size: 20px; font-family: Trebuchet MS;
                font-style: oblique; color: #85929E; background-color: #9ecced;">
                <strong>My Dashboard</strong>
            </td>
        </tr>
        <tr>
            <td align="center" style="vertical-align: top;">
                <br />
                <table style="width: 350px; background-color: #FFFFFF; text-align: center;">
                    <tr>
                        <td>
                            <table cellspacing="0" cellpadding="5" style="border: thin solid #C0C0C0; width: 350px;
                                background-color: #FFFFFF;">
                                <tr>
                                    <td style="background-color: #b5e4f1; font-style: italic;">
                                        My Recent Logs
                                    </td>
                                </tr>
                                <tr style="padding-bottom: 7;">
                                    <td runat="server" style="vertical-align: top; height: 220px; font-size: small; font-family: Comic Sans MS;
                                        color: #566573; font-style: italic;" id="tdSwipes">
                                    </td>
                                </tr>
                                <tr>
                                    <td runat="server">
                                        <asp:Label ID="lbl_ViewMore" runat="server" Font-Size="10pt" ForeColor="#66CCFF"
                                            Text="View More..."></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
            <td rowspan="3" style="vertical-align: top;">
                <br />
                <table cellspacing="0" cellpadding="0" style="border: thin solid #C0C0C0; width: 600px;
                    background-color: #FFFFFF; text-align: center;">
                    <tr>
                        <td style="background-color: #b5e4f1; font-style: italic;">
                            My Attendance Summary
                        </td>
                    </tr>
                    <tr>
                        <td id="Td1" align="center" style="vertical-align: top; font-size: small; font-family: Comic Sans MS;
                            color: #566573; font-style: italic;" runat="server" class="style2">
                            <table style="width: 100%;">
                                <tr>
                                    <td>
                                        <table cellpadding="2" cellspacing="0">
                                            <tr>
                                                <td style="text-align: left">
                                                    From&nbsp;Date
                                                </td>
                                                <td style="text-align: left">
                                                    <asp:DropDownList ID="Drp_FromDateDD" runat="server" CssClass="WebControls">
                                                    </asp:DropDownList>
                                                    &nbsp;
                                                    <asp:DropDownList ID="Drp_FromDateMM" runat="server" CssClass="WebControls">
                                                    </asp:DropDownList>
                                                    &nbsp;
                                                    <asp:DropDownList ID="Drp_FromDateYYYY" runat="server" CssClass="WebControls">
                                                    </asp:DropDownList>
                                                    &nbsp;
                                                </td>
                                                <td style="text-align: left">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left">
                                                    To&nbsp;Date
                                                </td>
                                                <td style="text-align: left">
                                                    <asp:DropDownList ID="Drp_ToDateDD" runat="server" CssClass="WebControls">
                                                    </asp:DropDownList>
                                                    &nbsp;
                                                    <asp:DropDownList ID="Drp_ToDateMM" runat="server" CssClass="WebControls">
                                                    </asp:DropDownList>
                                                    &nbsp;
                                                    <asp:DropDownList ID="Drp_ToDateYYYY" runat="server" CssClass="WebControls">
                                                    </asp:DropDownList>
                                                    &nbsp;
                                                </td>
                                                <td style="text-align: left">
                                                    <asp:Button ID="btn_Refresh" runat="server" BackColor="#66CCFF" BorderStyle="None"
                                                        Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Text="Refresh" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: auto; text-align: center" colspan="3">
                                                    <asp:Label ID="lbl_Error" runat="server" ForeColor="#FF3300"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left">
                                                    &nbsp;
                                                </td>
                                                <td style="text-align: left" colspan="2">
                                                    <table style="border: thin solid #CCCCCC; width: 290px;">
                                                        <tr bgcolor="#669966">
                                                            <td>
                                                                Processed Days
                                                            </td>
                                                            <td style="font-style: normal">
                                                                <asp:Label ID="lbl_ProcessedDays" ForeColor="Blue" runat="server" Text="0"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr bgcolor="#c6dcad">
                                                            <td>
                                                                Working Days
                                                            </td>
                                                            <td style="font-style: normal">
                                                                <asp:Label ID="lbl_WorkingDays" ForeColor="Blue" runat="server" Text="0"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr bgcolor="#c6dcad">
                                                            <td>
                                                                Presents
                                                            </td>
                                                            <td style="font-style: normal">
                                                                <asp:Label ID="lbl_Presents" ForeColor="Blue" runat="server" Text="0"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr bgcolor="#fadec1">
                                                            <td>
                                                                Absents
                                                            </td>
                                                            <td style="font-style: normal">
                                                                <asp:Label ID="lbl_Absents" ForeColor="Blue" runat="server" Text="0"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr bgcolor="#fadec1">
                                                            <td>
                                                                Weekly Off
                                                            </td>
                                                            <td style="font-style: normal">
                                                                <asp:Label ID="lbl_WeeklyOff" ForeColor="Blue" runat="server" Text="0"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr bgcolor="#fadec1">
                                                            <td>
                                                                Holiday
                                                            </td>
                                                            <td style="font-style: normal">
                                                                <asp:Label ID="lbl_Holiday" ForeColor="Blue" runat="server" Text="0"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr bgcolor="#fadec1">
                                                            <td>
                                                                Leaves
                                                            </td>
                                                            <td style="font-style: normal">
                                                                <asp:Label ID="lbl_Leave" ForeColor="Blue" runat="server" Text="0"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr bgcolor="#f0d9f9">
                                                            <td>
                                                                Late By
                                                            </td>
                                                            <td style="font-style: normal">
                                                                <asp:Label ID="lbl_LateBy" ForeColor="Blue" runat="server" Text="0"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr bgcolor="#f0d9f9">
                                                            <td>
                                                                Early By
                                                            </td>
                                                            <td style="font-style: normal">
                                                                <asp:Label ID="lbl_EarlyBy" ForeColor="Blue" runat="server" Text="0"></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    &nbsp; <span class="style3">Attendance Graph</span>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                       
                                            <asp:Chart ID="Chart1" runat="server" height="250px" Width="780px" 
                                                BorderlineWidth="0" TextAntiAliasingQuality="Normal">
                                                <Series>
                                                    <asp:Series Name="Series1" ChartType="StackedColumn"  YValueType="Int32" YValuesPerPoint="2">
                                                        <Points>
                                                        </Points>
                                                    </asp:Series>
                                                </Series>
                                                <ChartAreas>
                                                    <asp:ChartArea Name="ChartArea1" BorderColor="Gray">
                                                    </asp:ChartArea>
                                                </ChartAreas>
                                            </asp:Chart>
                                       <%-- <div style="height: 250; width: 781px; overflow: auto;">
                                        </div>--%>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="height: 10px;">
            </td>
        </tr>
        <tr>
            <td align="center" style="vertical-align: top;">
                <table id="tblSubordinates" runat="server" style="width: 350px; background-color: #FFFFFF;
                    text-align: center;">
                    <tr>
                        <td>
                            <table cellspacing="0" cellpadding="0" style="border: thin solid #C0C0C0; width: 350px;
                                background-color: #FFFFFF;">
                                <tr>
                                    <td style="background-color: #b5e4f1; font-style: italic;">
                                        Subordinate Details
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" runat="server" style="vertical-align: top; height: 220px; font-size: small;
                                        font-family: Comic Sans MS; color: #566573; font-style: italic;" id="td2">
                                        <table cellpadding="7" cellspacing="0">
                                            <tr align="left">
                                                <td>
                                                    Departments&nbsp;
                                                </td>
                                                <td>
                                                    <asp:DropDownList Width="150px" ID="ddl_department" runat="server" AutoPostBack="True">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr align="left">
                                                <td class="style1">
                                                    Total&nbsp;Employees&nbsp;
                                                </td>
                                                <td class="style1">
                                                    <asp:Label ID="lbl_TotalEmployees" ForeColor="Blue" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr align="left">
                                                <td>
                                                    Presents&nbsp;
                                                </td>
                                                <td>
                                                    <asp:LinkButton ID="lnk_Presents" OnClientClick="LoadMainPageWithQueryString('DepartmentEntries/AttendanceRecords.aspx')"
                                                        runat="server">0</asp:LinkButton>
                                                </td>
                                            </tr>
                                            <tr align="left">
                                                <td>
                                                    Leave&nbsp;Requests&nbsp;
                                                </td>
                                                <td>
                                                    <asp:LinkButton ID="lnk_Leave" OnClientClick="LoadMainPageWithQueryString('DepartmentEntries/LeaveRecords.aspx')"
                                                        runat="server">0</asp:LinkButton>
                                                </td>
                                            </tr>
                                            <tr align="left">
                                                <td>
                                                    OD&nbsp;Requests&nbsp;
                                                </td>
                                                <td>
                                                    <asp:LinkButton ID="lnk_OD" OnClientClick="LoadMainPageWithQueryString('DepartmentEntries/OutDoorEntries.aspx')"
                                                        runat="server">0</asp:LinkButton>
                                                </td>
                                            </tr>
                                            <tr align="left">
                                                <td>
                                                    ManualEntry&nbsp;Requests.&nbsp;
                                                </td>
                                                <td>
                                                    <asp:LinkButton ID="lnk_ManualEntry" OnClientClick="LoadMainPageWithQueryString('DepartmentEntries/PunchRecords.aspx')"
                                                        runat="server">0</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td id="Td3" runat="server">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td align="center" style="text-align: left">
                &nbsp;
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
