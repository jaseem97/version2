<%@ page language="VB" autoeventwireup="false" inherits="Manage_AttendenceLog, App_Web_bgemufol" %>

<%@ Register TagPrefix="obout" Namespace="Obout.Grid" Assembly="obout_Grid_NET" %>
<%@ Register TagPrefix="obout" Namespace="OboutInc.Flyout2" Assembly="obout_Flyout2_NET" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table cellpadding="0" cellspacing="0" style="border-right: gray 1px solid; border-top: gray 1px solid;
            border-left: gray 1px solid; border-bottom: gray 1px solid;" id="TABLE1" onclick="return TABLE1_onclick()">
            <tr style="font-weight: bold; font-size: 14px; background-color: lightsteelblue;
                padding-left: 5px; padding-top: 3px; padding-bottom: 3px; color: white;">
                <td colspan="2" style="width: 944px">
                    Attendence Logs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    From Date&nbsp;<asp:DropDownList runat="server" ID="drp_FromddDate" onchange="javascript:RefreshDataGrid();"
                        AutoPostBack="false">
                    </asp:DropDownList>
                    &nbsp;
                    <asp:DropDownList runat="server" ID="drp_FromMMDate" onchange="javascript:RefreshDataGrid();"
                        AutoPostBack="false">
                    </asp:DropDownList>
                    &nbsp;
                    <asp:DropDownList runat="server" ID="drp_FromYYYYDate" onchange="javascript:RefreshDataGrid();"
                        AutoPostBack="false">
                    </asp:DropDownList>
                    &nbsp;To Date&nbsp;<asp:DropDownList runat="server" onchange="javascript:RefreshDataGrid();"
                        ID="drp_ToddDate" AutoPostBack="false">
                    </asp:DropDownList>
                    &nbsp;
                    <asp:DropDownList runat="server" ID="drp_ToMMDate" onchange="javascript:RefreshDataGrid();"
                        AutoPostBack="false">
                    </asp:DropDownList>
                    &nbsp;
                    <asp:DropDownList runat="server" ID="drp_ToYYYYDate" onchange="javascript:RefreshDataGrid();"
                        AutoPostBack="false">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr style="background-color: lightsteelblue;">
                <td colspan="2" style="width: 944px; text-align: right">
                    <hr />
                    <asp:Button ID="btnExportToPDf" runat="server" Text="Export To PDF" />&nbsp;
                    <asp:Button ID="btnExport" runat="server" Text="Export To Excel" />&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Desc</asp:ListItem>
                        <asp:ListItem>Asc</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 944px">
                    <obout:Grid ID="dg_EmployeeAttendeanceLogs" runat="server" AllowFiltering="true"
                        CallbackMode="true" EnableRecordHover="true" KeepSelectedRecords="true" Serialize="true"
                        AutoGenerateColumns="false" FolderStyle="~/styles/grid/styles/premiere_blue"
                        AllowAddingRecords="false" ShowLoadingMessage="false" OnRebind="RebindGrid">
                        <Columns>
                            <obout:Column ID="Column0" DataField="AttendanceLogId" Visible="false" HeaderText="AttendanceLogId"
                                runat="server" />
                            <obout:Column ID="Column1" DataField="AttendanceDate" Visible="true" DataFormatString="{0:dd MMM yyyy}"
                                Width="125" HeaderText="Attendance Date" runat="server" />
                            <obout:Column ID="Column2" DataField="EmployeeCode" Visible="true" Width="105" HeaderText="Emp Code"
                                runat="server" />
                            <obout:Column ID="Column3" DataField="EmployeeName" Visible="true" Width="120" HeaderText="Emp Name"
                                runat="server" />
                            <obout:Column ID="Column5" DataField="InTime" Visible="true" Width="90" HeaderText="InTime"
                                runat="server" />
                            <obout:Column ID="Column6" DataField="OutTime" Visible="true" Width="100" HeaderText="OutTime"
                                runat="server" />
                            <obout:Column ID="Column7" DataField="ShiftSName" Visible="true" Width="90" HeaderText="Shift"
                                runat="server" />
                            <obout:Column ID="Column12" Width="90" HeaderText="Duration" DataField="Duration"
                                ConvertEmptyStringToNull="False" TemplateId="Duration_Template">
                                <TemplateSettings TemplateId="Duration_Template" />
                            </obout:Column>
                            <obout:Column ID="Column8" Width="90" HeaderText="OverTime" DataField="OverTime"
                                ConvertEmptyStringToNull="False" TemplateId="OverTime_Template">
                                <TemplateSettings TemplateId="OverTime_Template" />
                            </obout:Column>
                            <obout:Column ID="Column16" Width="90" HeaderText="LateBy" DataField="LateBy" ConvertEmptyStringToNull="False"
                                TemplateId="LateBy_Template">
                                <TemplateSettings TemplateId="LateBy_Template" />
                            </obout:Column>
                            <obout:Column ID="Column17" Width="90" HeaderText="EarlyBy" DataField="EarlyBy" ConvertEmptyStringToNull="False"
                                TemplateId="EarlyBy_Template">
                                <TemplateSettings TemplateId="EarlyBy_Template" />
                            </obout:Column>
                            <obout:Column ID="Column13" DataField="IsOnLeave" Visible="false" Width="90" HeaderText="OnLeave"
                                runat="server" />
                            <obout:Column ID="Column14" DataField="IsonSpecialOff" Visible="false" Width="78"
                                HeaderText="OnOD" runat="server" />
                            <obout:Column ID="Column15" DataField="PunchRecords" Visible="false" Width="160"
                                HeaderText="PunchRecords" runat="server" />
                            <obout:Column ID="Column4" DataField="StatusCode" Visible="true" Width="105" HeaderText="Status"
                                runat="server" />
                        </Columns>
                        <Templates>
                            <obout:GridTemplate runat="server" ID="Duration_Template" ControlID="" ControlPropertyName="">
                                <Template>
                                    <%#ConvertMinutesToHours(Container.DataItem.Item("Duration"))%>
                                </Template>
                            </obout:GridTemplate>
                            <obout:GridTemplate runat="server" ID="OverTime_Template" ControlID="" ControlPropertyName="">
                                <Template>
                                    <%#ConvertMinutesToHours(Container.DataItem.Item("OverTime"))%>
                                </Template>
                            </obout:GridTemplate>
                            <obout:GridTemplate runat="server" ID="LateBy_Template" ControlID="" ControlPropertyName="">
                                <Template>
                                    <%#ConvertMinutesToHours(Container.DataItem.Item("LateBy"))%>
                                </Template>
                            </obout:GridTemplate>
                            <obout:GridTemplate runat="server" ID="EarlyBy_Template" ControlID="" ControlPropertyName="">
                                <Template>
                                    <%#ConvertMinutesToHours(Container.DataItem.Item("EarlyBy"))%>
                                </Template>
                            </obout:GridTemplate>
                        </Templates>
                    </obout:Grid>
                </td>
            </tr>
        </table>
        <obout:Flyout runat="server" ID="Flyout1" Align="left" Position="BOTTOM_left" CloseEvent="NONE"
            OpenEvent="NONE" DelayTime="500">
            <table class="rowEditTable">
                <tr>
                    <td>
                        <fieldset>
                            <legend>Update Over Time</legend>
                            <table>
                                <tr>
                                    <td>
                                        Over Time
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_OverTime" runat="server" Width="310px"></asp:TextBox>&nbsp;mins
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:CheckBox ID="chk_PreservedOverTime" runat="server" Text="Preserved OverTime Value while Attendance Recalculation" />
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="2">
                        <asp:Label runat="server" ForeColor="red" EnableViewState="false" ID="Lbl_InvalidError"></asp:Label><input
                            id="btn_Save" type="button" value="Save" onclick="javascript:btn_Save_onclick();" />&nbsp;<input
                                id="btn_Cancel" type="button" value="Close" onclick="javascript:closeFlyout();" /><asp:HiddenField
                                    ID="hdn_AttendanceLogId" runat="server" />
                    </td>
                </tr>
            </table>
        </obout:Flyout>
        <asp:GridView ID="GridView1" runat="server" Visible="False" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="AttendanceDate" HeaderText="AttendanceDate" />
                <asp:BoundField DataField="EmployeeCode" HeaderText="EmployeeCode" />
                <asp:BoundField DataField="EmployeeName" HeaderText="EmployeeName">
                    <ItemStyle Width="200px" />
                </asp:BoundField>
                <asp:BoundField DataField="InTime" HeaderText="InTime" />
                <asp:BoundField DataField="OutTime" HeaderText="OutTime" />
                <asp:BoundField DataField="ShiftSName" HeaderText="ShiftSName" />
                <asp:BoundField DataField="Duration" HeaderText="Duration" />
                <asp:BoundField DataField="OverTime" HeaderText="OverTime" />
                <asp:BoundField DataField="LateBy" HeaderText="LateBy" />
                <asp:BoundField DataField="EarlyBy" HeaderText="EarlyBy" />
                <asp:BoundField DataField="StatusCode" HeaderText="StatusCode" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
    <script runat="server">
        Function CheckPermissions(ByVal Action As String) As String
            If Not Session.Item("LoginEmployee") Is Nothing Then
                If CType(Session.Item("LoginEmployee"), eTimeTrackLiteLibrary.Data.Master.Employee).EmployeeDepartmentList.Count > 0 Then
                    Return Action
                End If
            End If
            Return ""
        End Function
      
        Function ConvertMinutesToHours(ByVal DurationInMinutes As String) As String
          
            Dim ts As New TimeSpan(0, DurationInMinutes, 0)
            If DurationInMinutes >= 1440 Then
                Return String.Format("{0}:{1}", 24 + ts.Hours, ts.Minutes)
            Else
                Return String.Format("{0}:{1}", ts.Hours, ts.Minutes)
            End If
          
            Return "0"
        End Function
      
      
    </script>
    <script type="text/javascript">
    
   
		    function RefreshDataGrid()
            {
                dg_EmployeeAttendeanceLogs.refresh();
               
            }
		    
		function closeFlyout() 
		    {
		        <%=Flyout1.getClientID()%>.Close();
		    }
		    
		    function populateEditControls(iRecordIndex) 
		    {	
		        document.getElementById("<%=txt_OverTime.ClientID %>").value = dg_EmployeeAttendeanceLogs.Rows[iRecordIndex].Cells[9].Value;
	            document.getElementById("<%=hdn_AttendanceLogId.ClientID %>").value = dg_EmployeeAttendeanceLogs.Rows[iRecordIndex].Cells[0].Value;
		    }
		   
		      
		     function btn_Save_onclick()
		     {
		        var oRecord = new Object();
		        oRecord.actualleave =document.getElementById("<%=txt_OverTime.ClientID %>").value ;
		        oRecord.Error='';
		        dg_EmployeeAttendeanceLogs.executeInsert(oRecord);
		     }
		    
            function clearFlyout() 
            {
                document.getElementById("<%=chk_PreservedOverTime.ClientID %>").checked=false;
                document.getElementById("<%=txt_OverTime.ClientID %>").value = '';
	            document.getElementById("<%=hdn_AttendanceLogId.ClientID %>").value = '0';
                document.getElementById("<%=Lbl_InvalidError.ClientID %>").innerHTML ='';
		    }
		


    </script>
</body>
</html>
