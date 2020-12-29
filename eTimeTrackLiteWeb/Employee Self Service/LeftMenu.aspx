<%@ page language="VB" autoeventwireup="false" inherits="LeftMenu1, App_Web_llxrsx5o" %>

<%@ Register TagPrefix="osm" Namespace="OboutInc.SlideMenu" Assembly="obout_SlideMenu3_Pro_Net" %>
<%@ Register TagPrefix="oajax" Namespace="OboutInc" Assembly="obout_AJAXPage" %>
<%@ Register TagPrefix="osm" Namespace="OboutInc.SlideMenu" Assembly="obout_SlideMenu3_Pro_Net" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body style="padding-right: 0px; background-color:#f3f6f9; padding-left: 0px; padding-bottom: 0px; margin: 0px;
    padding-top: 0px;">
    <form id="frm_LeftMenu" runat="server">
    <table cellpadding="0" cellspacing="0">
        <tr>
            <td style="width: 100%;" valign="top" align="left">
                <table>
                    <tr>
                        <td>
                            &nbsp;<img alt="" src="Images/dashboard.jpg" />
                        </td>
                        <td style="font-family: Cambria;font-style: oblique; font-weight: normal; font-size: inherit;">
                            &nbsp;<a 
                                style="text-decoration: none; color: #006699;" href="javascript:;" 
                                onclick="LoadMainPageWithQueryString('Workerpage.aspx')">DASHBOARD</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 100%;" valign="top" align="left">
                <osm:SlideMenu ID="outlook" runat="server" StyleFolder="styles/slide_Menu/xp_mcenter"
                    AllExpanded="true" Height="260" SelectedId="a">
                    <MenuItems>
                        <osm:Parent ID="a">
                            My Entries</osm:Parent>
                        <osm:Child ID="a_a" OnClientClick="LoadMainPageWithQueryString('MyEntries/ApplyLeave.aspx')">
                            <img src="styles/tree2/icons/leave.gif" class="SMChildImage">
                            Apply Leave
                        </osm:Child>
                        <osm:Child ID="a_b" OnClientClick="LoadMainPageWithQueryString('MyEntries/EmployeeLeaveRecords.aspx')">
                            <img src="styles/tree2/icons/leave.gif" class="SMChildImage">
                            Leave History
                        </osm:Child>
                        <osm:Child ID="a_c" OnClientClick="LoadMainPageWithQueryString('MyEntries/EmployeeLeaves.aspx')">
                            <img src="styles/tree2/icons/leave.gif" class="SMChildImage">
                            Leave Summary
                        </osm:Child>
                        <osm:Child ID="a_d" OnClientClick="LoadMainPageWithQueryString('MyEntries/ApplyOD.aspx')">
                            <img src="styles/tree2/icons/b_f.gif" class="SMChildImage">
                            Apply OD
                        </osm:Child>
                        <osm:Child ID="a_e" OnClientClick="LoadMainPageWithQueryString('MyEntries/EmployeeOutDoorEntries.aspx')">
                            <img src="styles/tree2/icons/b_f.gif" class="SMChildImage">
                            OD History
                        </osm:Child>
                        <osm:Child ID="Child5" OnClientClick="LoadMainPageWithQueryString('MyEntries/EmployeeAttendanceRecords.aspx')">
                            <img src="styles/tree2/icons/c_c.gif" class="SMChildImage">
                            Attendance Records
                        </osm:Child>
                        <osm:Child ID="Child1" OnClientClick="LoadMainPageWithQueryString('MyEntries/EmployeeShiftCalendarShedular.aspx')">
                            <img src="styles/tree2/icons/oJornal.gif" class="SMChildImage">
                            Shift Table
                        </osm:Child>
                         <osm:Child ID="Child7" OnClientClick="LoadMainPageWithQueryString('MyEntries/ApplyManualEntry.aspx')">
                            <img src="styles/tree2/icons/logs.gif" class="SMChildImage">
                            Apply Manual Entry
                        </osm:Child>
                        <osm:Child ID="Child2" OnClientClick="LoadMainPageWithQueryString('MyEntries/EmployeePunchRecords.aspx')">
                            <img src="styles/tree2/icons/logs.gif" class="SMChildImage">
                            Punch Records
                        </osm:Child>
                        <osm:Child ID="Child3" OnClientClick="LoadMainPageWithQueryString('MyEntries/PublicHolidays.aspx')">
                            <img src="styles/tree2/icons/logs.gif" class="SMChildImage">
                            Public Holidays
                        </osm:Child>
                        <osm:Child ID="Child4" OnClientClick="LoadMainPageWithQueryString('EmployeePaySlip.aspx?IsEmpLogin=true')">
                            <img src="styles/tree2/icons/logs.gif" class="SMChildImage">
                            Generate Payslip
                        </osm:Child>
                        <osm:Child ID="Child6" OnClientClick="LoadMainPageWithQueryString('ChangePassword.aspx')">
                            <img src="styles/tree2/icons/logs.gif" class="SMChildImage">
                            Change Password
                        </osm:Child>
                        <%--<osm:Child id="Child4"    OnClientClick="window.parent.location.href='Default.aspx';" >
						<img src="styles/tree2/icons/pwd.gif" class="SMChildImage">
						Log Off
					</osm:Child>--%>
                    </MenuItems>
                </osm:SlideMenu>
            </td>
        </tr>
    </table>
    </form>
    <script type="text/javascript">
        function LoadMainPage(cId) {
            window.parent.splMain.loadPage('RightContent', cId + '.aspx');
        }

        function LoadMainPageWithQueryString(cId) {
            window.parent.splMain.loadPage('RightContent', cId);
        }
    </script>
</body>
</html>
