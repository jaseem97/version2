<%@ page language="VB" autoeventwireup="false" inherits="Manage_EmployeeOutDoorEntries, App_Web_fzgtou2n" %>

<%@ Register TagPrefix="obout" Namespace="Obout.Grid" Assembly="obout_Grid_NET" %>
<%@ Register TagPrefix="obout" Namespace="OboutInc.Flyout2" Assembly="obout_Flyout2_NET" %>
<%@ Register TagPrefix="oem" Namespace="OboutInc.EasyMenu_Pro" Assembly="obout_EasyMenu_Pro" %>
<%@ Register Assembly="obout_Window_NET" Namespace="OboutInc.Window" TagPrefix="owd" %>
<script type="text/javascript">
    // Client-Side Events for Delete
    function OnBeforeDelete(record) {
        record.Error = '';
        document.getElementById("<%=hdn_EmployeeOutDoorEntryId.ClientID %>").value = record.SpecialEntryId;
        document.getElementById("<%=hdn_EmployeeCode.ClientID %>").value = record.EmployeeCode;
        document.getElementById("<%=hdn_FromDate.ClientID %>").value = record.FromDate;
        document.getElementById("<%=hdn_ToDate.ClientID %>").value = record.Todate;
        document.getElementById("<%=hdn_BeginTime.ClientID %>").value = record.BeginTime;
        document.getElementById("<%=hdn_EndTime.ClientID %>").value = record.EndTime;
        if (confirm("Are you sure you want to delete? "))
            return true;
        else
            return false;
    }

    function OnDelete(record) {
        alert(record.Error);
    }

    function OnInsert(record) {
        document.getElementById("<%=Lbl_InvalidError.ClientID %>").innerHTML = record.Error;
    }
	
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body onload="SetDuration();">
    <form id="form1" runat="server">
    <table cellpadding="2">
        <tr>
            <td>
                <div>
                    <table cellpadding="0" cellspacing="0" style="border-right: gray 1px solid; border-top: gray 1px solid;
                        border-left: gray 1px solid; border-bottom: gray 1px solid;">
                        <tr style="font-weight: bold; font-size: 14px; background-color: lightsteelblue;
                            padding-left: 5px; padding-top: 3px; padding-bottom: 3px; color: white;">
                            <td style="font-weight: bold; font-size: 14px; background-color: lightsteelblue;
                                padding: 5px; color: white;">
                                Employee Out Door Entries
                            </td>
                            <td align="right">
                                Approval Status&nbsp;&nbsp;
                                <asp:DropDownList AutoPostBack="false" ID="drp_ApprovedStatus" runat="server" onchange="Dg_EmployeeOutDoorEntries.refresh();">
                                    <asp:ListItem Selected="True">All</asp:ListItem>
                                    <asp:ListItem>Approved</asp:ListItem>
                                    <asp:ListItem>Not Approved</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr style="background-color: lightsteelblue;">
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                             <div id="div_Employees">
                                <obout:Grid ID="Dg_EmployeeOutDoorEntries" runat="server" CallbackMode="true" EnableRecordHover="true"
                                    KeepSelectedRecords="true" Serialize="true" AutoGenerateColumns="false" FolderStyle="~/styles/grid/styles/premiere_blue"
                                    AllowAddingRecords="false" ShowLoadingMessage="false" OnRebind="RebindGrid" OnInsertCommand="InsertRecord"
                                    AllowFiltering="true" OnDeleteCommand="DeleteRecord">
                                    <ClientSideEvents OnClientInsert="OnInsert" OnBeforeClientDelete="OnBeforeDelete"
                                        OnClientDelete="OnDelete" />
                                    <Columns>
                                        <obout:Column ID="Column0" DataField="SpecialEntryId" Visible="false" Width="100"
                                            HeaderText="SpecialEntryId" runat="server" />
                                        <obout:Column ID="Column1" DataField="FromDate" DataFormatString="{0:dd MMM yyyy}"
                                            Visible="true" Width="110" HeaderText="From Date" runat="server" />
                                        <obout:Column ID="Column2" DataField="Todate" DataFormatString="{0:dd MMM yyyy}"
                                            Visible="true" Width="110" HeaderText="To Date" runat="server" />
                                        <obout:Column ID="Column3" DataField="Duration" Visible="true" Width="100" HeaderText="Duration"
                                            runat="server" />
                                        <obout:Column ID="Column4" DataField="BeginTime" Visible="true" Width="85" HeaderText="Begin"
                                            runat="server" />
                                        <obout:Column ID="Column5" DataField="EndTime" Visible="true" Width="85" HeaderText="End"
                                            runat="server" />
                                        <obout:Column ID="Column6" DataField="EmployeeCode" Visible="true" Width="110" HeaderText="Emp Code"
                                            runat="server" />
                                        <obout:Column ID="Column7" DataField="EmployeeName" Visible="true" Width="120" HeaderText="Emp Name"
                                            runat="server" />
                                        <obout:Column ID="Column8" DataField="CompanySName" Visible="true" Width="110" HeaderText="Company"
                                            runat="server" />
                                        <obout:Column ID="Column9" DataField="DepartmentSName" Visible="true" Width="120"
                                            HeaderText="Department" runat="server" />
                                        <obout:Column ID="Column10" DataField="Designation" Visible="false" Width="110" HeaderText="Designation"
                                            runat="server" />
                                        <obout:Column ID="Column11" DataField="CategorySName" Visible="false" Width="100"
                                            HeaderText="Category" runat="server" />
                                        <obout:Column ID="Column12" DataField="EmployeesStatus" Visible="false" Width="100"
                                            HeaderText="Status" runat="server" />
                                        <obout:Column ID="Column13" DataField="EmployementType" Visible="false" Width="100"
                                            HeaderText="Emp Type" runat="server" />
                                        <obout:Column ID="Column14" DataField="IsApproved" Visible="true" Width="135" SortOrder="Desc"
                                            HeaderText="Approval Status" runat="server">
                                            <TemplateSettings TemplateId="tplApprovalStatus" />
                                        </obout:Column>
                                        <obout:Column ID="Column15" DataField="ApprovedBy" Visible="false" Width="100" HeaderText="ApprovedBy"
                                            runat="server" />
                                        <obout:Column ID="Column16" DataField="Remarks" Visible="false" Width="100" HeaderText="Remarks"
                                            runat="server" />
                                        <obout:Column ID="Column17" DataField="EmployeeId" Visible="false" Width="80" HeaderText="EmployeeId"
                                            runat="server" />
                                        <obout:Column ID="Column18" Visible="false" Width="90" HeaderText="From Date" runat="server">
                                            <TemplateSettings TemplateId="TP_FromDateFormat" />
                                        </obout:Column>
                                        <obout:Column ID="Column19" Visible="false" Width="90" HeaderText="To Date" runat="server">
                                            <TemplateSettings TemplateId="TP_ToDateFormat" />
                                        </obout:Column>
                                        <obout:Column HeaderText="Edit" Width="65" AllowEdit="true" AllowDelete="true">
                                            <TemplateSettings TemplateId="tplEditBtn" />
                                        </obout:Column>
                                        <obout:Column HeaderText="Delete" Width="65" AllowEdit="false" AllowDelete="true"
                                            Visible="true" />
                                        <obout:Column ID="Column22" DataField="CreatedDate" DataFormatString="{0:dd-MMM-yyyy HH:mm:ss}"
                                            Width="90" Visible="false" HeaderText="Created Date" ConvertEmptyStringToNull="False"
                                            DataFormatString_GroupHeader="{0:dd-MMM-yyyy HH:mm:ss}" />
                                        <obout:Column ID="Column23" DataField="LastModifiedDate" DataFormatString="{0:dd-MMM-yyyy HH:mm:ss}"
                                            Width="90" Visible="false" HeaderText="Modified Date" ConvertEmptyStringToNull="False"
                                            DataFormatString_GroupHeader="{0:dd-MMM-yyyy HH:mm:ss}" />
                                    </Columns>
                                    <Templates>
                                        <obout:GridTemplate runat="server" ID="tplEditBtn">
                                            <Template>
                                                <a href="javascript: //" id="grid_link_<%# Container.PageRecordIndex %>" onclick="attachFlyoutToLink(this,'Update')"
                                                    class="ob_gAL">Edit</a>
                                            </Template>
                                        </obout:GridTemplate>
                                        <obout:GridTemplate runat="server" ID="tplAddBtn">
                                            <Template>
                                                <a href="javascript: //" id="grid_link_" onclick="attachFlyoutToLink(this,'Add')"
                                                    class="ob_gAL">Add OD Entry</a>
                                            </Template>
                                        </obout:GridTemplate>
                                        <obout:GridTemplate runat="server" ID="tplApprovalStatus">
                                            <Template>
                                                <%#ParseApprovalStatus(Container.DataItem.Item("IsApproved"), Container.DataItem.Item("ApprovedBy"))%>
                                            </Template>
                                        </obout:GridTemplate>
                                        <obout:GridTemplate runat="server" ID="TP_FromDateFormat">
                                            <Template>
                                                <%#ParseDateTime(Container.DataItem.Item("FromDate"))%>
                                            </Template>
                                        </obout:GridTemplate>
                                        <obout:GridTemplate runat="server" ID="TP_ToDateFormat">
                                            <Template>
                                                <%#ParseDateTime(Container.DataItem.Item("ToDate"))%>
                                            </Template>
                                        </obout:GridTemplate>
                                    </Templates>
                                </obout:Grid>
                                </div> 
                            </td>
                        </tr>
                    </table>
                    <obout:Flyout runat="server" ID="Flyout1" Align="left" Position="BOTTOM_left" CloseEvent="NONE"
                        OpenEvent="NONE" DelayTime="500">
                        <table class="rowEditTable">
                            <tr>
                                <td>
                                    <fieldset>
                                        <legend>Update Employee Out Door Entries</legend>
                                        <table>
                                            <tr>
                                                <td>
                                                    Employee Name
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_EmployeeName" runat="server" Width="390px" Enabled="false"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    From Date
                                                </td>
                                                <td align="left">
                                                    <select runat="server" id="drp_ddFromDate">
                                                    </select>
                                                    &nbsp;<select runat="server" id="drp_mmFromDate"></select>&nbsp;<select runat="server"
                                                        id="drp_yyyyFromDate"></select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;To Date&nbsp;<select
                                                            runat="server" id="drp_ddToDate"></select>&nbsp;<select runat="server" id="drp_mmToDate"></select>&nbsp;<select
                                                                runat="server" id="drp_yyyyToDate"></select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    Duration
                                                </td>
                                                <td align="left">
                                                    <asp:TextBox ID="txt_Duration" Enabled="false" runat="server" Width="50px"></asp:TextBox>&nbsp;Mins&nbsp;&nbsp;
                                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Begin
                                                    Time&nbsp;<asp:DropDownList runat="server" ID="drp_HHBeginTime" onchange="SetDuration();">
                                                    </asp:DropDownList>
                                                    &nbsp;:&nbsp;<asp:DropDownList runat="server" onchange="SetDuration();" ID="drp_mmBeginTime">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                                <td align="right">
                                                    &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                                                    End Time&nbsp;<asp:DropDownList runat="server" ID="drp_HHEndTime" onchange="SetDuration();"
                                                        Width="40">
                                                    </asp:DropDownList>
                                                    &nbsp;:&nbsp;<asp:DropDownList runat="server" onchange="SetDuration();" ID="drp_mmEndTime">
                                                    </asp:DropDownList>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:CheckBox ID="chk_IsApproved" runat="server" Text="Is Approved" onclick="IsApproved_CheckedChange();" />
                                                </td>
                                                <td>
                                                    &nbsp;Approved By&nbsp;<asp:TextBox ID="txt_ApprovedBy" Enabled="false" runat="server"
                                                        Width="250px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                Remarks&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txt_Remarks" runat="server" TextMode="MultiLine" Width="395px" Height="100px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                Created Date&nbsp;&nbsp;&nbsp;&nbsp;
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txt_CreatedDate" ReadOnly="true" Width="145px"
                                                                    runat="server"></asp:TextBox>
                                                                &nbsp;Last Modified Date&nbsp;
                                                                <asp:TextBox ID="txt_ModifiedDate" ReadOnly="true" Width="145px" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </fieldset>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Label runat="server" ForeColor="red" EnableViewState="false" ID="Lbl_InvalidError"></asp:Label>
                                    <input id="btn_Save" type="button" value="Save" onclick="javascript:btn_Save_onclick();" />&nbsp;&nbsp;<input
                                        id="btn_Cancel" type="button" value="Close" onclick="javascript:closeFlyout();" />
                                    <asp:HiddenField ID="hdn_EmployeeOutDoorEntryId" runat="server" />
                                    <asp:HiddenField ID="hdn_EmployeeId" runat="server" />
                                    <asp:HiddenField ID="hdn_EmployeeName" runat="server" />
                                    <asp:HiddenField ID="hdn_IsDepartmentHead" runat="server" />
                                    <asp:HiddenField ID="hdn_DepartmentHeadId" runat="server" />
                                    <asp:HiddenField ID="hdn_LoginEmpName" runat="server" />
                                     <asp:HiddenField ID="hdn_LastApprovedStatus" runat="server" />
                                      <asp:HiddenField ID="hdn_DepartmentHeadIds" runat="server" />
                                         <asp:HiddenField ID="hdn_CreateDate" runat="server" />
                                               <asp:HiddenField ID="hdn_EmployeeCode" runat="server" />
                                    <asp:HiddenField ID="hdn_FromDate" runat="server" />
                                    <asp:HiddenField ID="hdn_ToDate" runat="server" />
                                    <asp:HiddenField ID="hdn_BeginTime" runat="server" />
                                    <asp:HiddenField ID="hdn_EndTime" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </obout:Flyout>

                    <oem:EasyMenu ID="EasyMenu1" runat="server" StyleFolder="~/styles/EasyMenu/Styles/vsnet"
                        IconsFolder="MenuIcons" Width="210" UseIcons="true" AttachTo="div_Employees"
                        ShowEvent="ContextMenu" Align="Cursor">
                        <Components>
                            <oem:MenuItem ID="menuItem1" InnerHtml="Update OutDoor Entry Status" OnClientClick="LoadWindow()">
                            </oem:MenuItem>
                            <oem:MenuSeparator ID="menuSeparator1" InnerHtml="&amp;nbsp;" AllowsIcon="true">
                            </oem:MenuSeparator>
                        </Components>
                    </oem:EasyMenu>
        <owd:window id="Wnd_UpdateWhcichEmpDetails" runat="server" ismodal="true" height="200"
            width="440" stylefolder="~/Styles/mainwindow/blue" title="Update Employee Details"
            visibleonload="false" showclosebutton="false" showstatusbar="False" left="350"
            top="155">
            <table class="rowEditTable" width="100%">
                <tr>
                    <td>
                        <fieldset>
                            <legend id="UpdateEmpDetails">Update Entry Status</legend>
                            <table>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="chk_IsApproved_Bulk" runat="server" Text="Is Approved" onclick="IsApprovedBulk_CheckedChange();" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        Approved&nbsp;By<br />
                                        <asp:TextBox ID="txt_ApprovedBy_Bulk" ReadOnly="true" runat="server" Width="150px" CssClass="aspNetDisabled aspNetDisabled aspNetDisabled aspNetDisabled aspNetDisabled aspNetDisabled aspNetDisabled aspNetDisabled"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        Remarks<br />
                                        <asp:TextBox ID="txt_Remarks_Bulk" runat="server" TextMode="MultiLine" Width="400px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:HiddenField ID="hdn_BulkActionValue" runat="server" />
                         <asp:HiddenField ID="hdn_Remarks" runat="server" />
                        <asp:HiddenField ID="hdn_ApprovedBy" runat="server" />
                        <asp:Label runat="server" ForeColor="Red" EnableViewState="False" ID="lbl_UpdateEmpDetailsError"></asp:Label>
                        <asp:Button ID="btn_UpdateSave1" runat="server" CssClass="WebControl" Text="Update"
                            OnClientClick="btn_UpdateSave();" />
                        &nbsp;<input id="btn_UpdateClose1" type="button" class="WebControl" value="Close"
                            onclick="Wnd_UpdateWhcichEmpDetails.Close();" />
                    </td>
                </tr>
            </table>
        </owd:window>


                </div>
            </td>
        </tr>
    </table>
    </form>
    <script runat="server">
        Function CheckPermissions(ByVal Action As String) As String
            If Not Session.Item("LoginUser") Is Nothing Then
            
                If CType(Session("LoginUser"), eTimeTrackLiteLibrary.Data.Admin.User).PermissionNameList.Contains("AddOutDoorEntries") Then
                    Return Action
                End If
                Return ""
            End If
            Return ""
        End Function
        
        Function CheckPermissionsEdit(ByVal Action As String) As String
            If Not Session.Item("LoginUser") Is Nothing Then
                If CType(Session("LoginUser"), eTimeTrackLiteLibrary.Data.Admin.User).PermissionNameList.Contains("EditOutDoorEntries") Then
                    Return Action
                End If
                Return ""
            End If
            Return ""
        End Function
        
        Function ParseApprovalStatus(ByVal IsApproved As String, ByVal ApprovedBy As String)
            If IsApproved = "-1" Then
                If Trim(ApprovedBy) <> "" Then
                    Return "Approved(" + ApprovedBy + ")"
                Else
                    Return "Approved"
                End If
            Else
                Return "Not Approved"
            End If
        End Function
        
        Function ParseDateTime(ByVal DateValue As Date) As String
            Return DateValue.ToString("yyyy-MM-dd")
        End Function
        
    </script>
    <script type="text/javascript">
        var ControlAction;
		    function attachFlyoutToLink(oLink,Action)
		     {	
		            ControlAction=Action;
		            ClearFlyout();
		            <%=Flyout1.getClientID()%>.AttachTo(oLink.id);		            		            
		            <%=Flyout1.getClientID()%>.Open();
		            if(Action=='Update')
	                    {
		                    populateEditControls(oLink.id.toString().replace("grid_link_", ""));
		                }   
		            EnableDisableControls();
		    }
		    
              
           function ClearFlyout()
	            {
	                document.getElementById("<%=Lbl_InvalidError.ClientID %>").innerHTML = '';
                    document.getElementById("<%=hdn_EmployeeOutDoorEntryId.ClientID %>").value = '0';
                    document.getElementById("<%=hdn_EmployeeId.ClientID %>").value = '0';
                    document.getElementById('<%=txt_EmployeeName.ClientID %>').value='';
		        SetValueInDropDownForDateForTime(document.getElementById("<%=drp_HHBeginTime.ClientID%>"),document.getElementById("<%=drp_mmBeginTime.ClientID%>"),"00:00");
		        SetValueInDropDownForDateForTime(document.getElementById("<%=drp_HHEndTime.ClientID%>"),document.getElementById("<%=drp_mmEndTime.ClientID%>"),"00:00");
                document.getElementById( "<%=txt_EmployeeName.ClientID %>").value ='';
                document.getElementById( "<%=txt_ApprovedBy.ClientID %>").value ='';
                document.getElementById( "<%=txt_Remarks.ClientID %>").value ='';
                 document.getElementById("<%=hdn_CreateDate.ClientID %>").value ='';

                  document.getElementById("<%=hdn_EmployeeCode.ClientID %>").value = '';
        document.getElementById("<%=hdn_FromDate.ClientID %>").value ='';
        document.getElementById("<%=hdn_ToDate.ClientID %>").value = '';
        document.getElementById("<%=hdn_BeginTime.ClientID %>").value = '';
        document.getElementById("<%=hdn_EndTime.ClientID %>").value = '';
                
                
	            }
		    
		    
		function closeFlyout() 
		    {
		        <%=Flyout1.getClientID()%>.Close();
		    }
		    
		    function SetDuration()
		    {
		    
		        var HHBeginTime=parseInt(document.getElementById("<%=drp_HHBeginTime.ClientID%>").value);
		        if(document.getElementById("<%=drp_HHBeginTime.ClientID%>").value=='08')
		            HHBeginTime=8;
		        else if(document.getElementById("<%=drp_HHBeginTime.ClientID%>").value=='09')
		            HHBeginTime=9;
		            
		        var mmBeginTime=parseInt(document.getElementById("<%=drp_mmBeginTime.ClientID%>").value);
		        if(document.getElementById("<%=drp_mmBeginTime.ClientID%>").value=='08')
		            mmBeginTime=8;
		        else if(document.getElementById("<%=drp_mmBeginTime.ClientID%>").value=='09')
		            mmBeginTime=9;
		            
		        var HHEndTime=parseInt(document.getElementById("<%=drp_HHEndTime.ClientID%>").value);
		         if(document.getElementById("<%=drp_HHEndTime.ClientID%>").value=='08')
		            HHEndTime=8;
		        else if(document.getElementById("<%=drp_HHEndTime.ClientID%>").value=='09')
		            HHEndTime=9;
		            
		        var mmEndTime=parseInt(document.getElementById("<%=drp_mmEndTime.ClientID%>").value);
		        if(document.getElementById("<%=drp_HHEndTime.ClientID%>").value=='08')
		            HHEndTime=8;
		        else if(document.getElementById("<%=drp_HHEndTime.ClientID%>").value=='09')
		            HHEndTime=9;
		            
		        var Hours;
		        if(HHEndTime<HHBeginTime)
		        HHEndTime=HHEndTime+24;
		        else if(HHEndTime==HHBeginTime &&  mmBeginTime>mmEndTime)
		        HHEndTime=HHEndTime+24;
		        
		        Hours=(HHEndTime-HHBeginTime)*60;
		        var Minuts=mmEndTime-mmBeginTime;
		        var TotalDuration=Hours+Minuts;
		        document.getElementById( "<%=txt_Duration.ClientID %>").value =TotalDuration;
		    }
		    
		    function populateEditControls(iRecordIndex) 
		    {	
		        var FromDate=Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[18].Value;
		        var ToDate=Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[19].Value;
		        var Duration=Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[3].Value;
		        var BeginTime=Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[4].Value;
		        var EndTime=Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[5].Value;
		        var EmployeeCode=Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[6].Value;
		        var EmployeeName=Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[7].Value;
		        var CompanySName=Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[8].Value;
		        var DepartmentSName=Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[9].Value;
		        var Designation=Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[10].Value;
		        var CategorySName=Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[11].Value;
		        var EmployeesStatus=Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[12].Value;
		        var EmployementType=Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[13].Value;
		        var IsApproved=Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[14].Value;
		        var ApprovedBy=Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[15].Value;
		        var Remarks=Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[16].Value.replace(/<BR>/gi,'\n');
                var CreatedDate=Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[22].Value;
                var ModifiedDate=Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[23].Value;

	            document.getElementById("<%=hdn_EmployeeId.ClientID %>").value = Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[17].Value;
                document.getElementById("<%=hdn_EmployeeOutDoorEntryId.ClientID %>").value = Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[0].Value;
	            SetValueInDropDownForDate(document.getElementById("<%=drp_ddFromDate.ClientID %>"),document.getElementById("<%=drp_mmFromDate.ClientID %>"),document.getElementById("<%=drp_yyyyFromDate.ClientID %>"),FromDate);
	            SetValueInDropDownForDate(document.getElementById("<%=drp_ddToDate.ClientID %>"),document.getElementById("<%=drp_mmToDate.ClientID %>"),document.getElementById("<%=drp_yyyyToDate.ClientID %>"),ToDate);
		        SetValueInDropDownForDateForTime(document.getElementById("<%=drp_HHBeginTime.ClientID%>"),document.getElementById("<%=drp_mmBeginTime.ClientID%>"),BeginTime);
		        SetValueInDropDownForDateForTime(document.getElementById("<%=drp_HHEndTime.ClientID%>"),document.getElementById("<%=drp_mmEndTime.ClientID%>"),EndTime);
                document.getElementById( "<%=txt_EmployeeName.ClientID %>").value =EmployeeName;
                document.getElementById( "<%=txt_Duration.ClientID %>").value =Duration;
                if(IsApproved=='-1')
                {
                    document.getElementById( "<%=chk_IsApproved.ClientID %>").checked=true;
                    document.getElementById("<%=hdn_LastApprovedStatus.ClientID %>").value = "true";
                }
                else
                {
                    document.getElementById( "<%=chk_IsApproved.ClientID %>").checked=false;
                    document.getElementById("<%=hdn_LastApprovedStatus.ClientID %>").value = "false";
                }

                document.getElementById( "<%=txt_ApprovedBy.ClientID %>").value=ApprovedBy;
                document.getElementById( "<%=txt_Remarks.ClientID %>").value=Remarks;

                  if(CreatedDate.includes('1900'))
                  {
                   document.getElementById( "<%=txt_CreatedDate.ClientID %>").value='';
                    document.getElementById("<%=hdn_CreateDate.ClientID %>").value ='';
                  }
                  else
                  {
                   document.getElementById( "<%=txt_CreatedDate.ClientID %>").value=CreatedDate;
                    document.getElementById("<%=hdn_CreateDate.ClientID %>").value =CreatedDate;
                  }

                   if(CreatedDate.includes('1900'))
                  {
                   document.getElementById( "<%=txt_ModifiedDate.ClientID %>").value='';
                  }
                  else
                  {
                   document.getElementById( "<%=txt_ModifiedDate.ClientID %>").value=ModifiedDate;
                  }

                   document.getElementById("<%=hdn_EmployeeCode.ClientID %>").value = Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[6].Value;
               document.getElementById("<%=hdn_FromDate.ClientID %>").value = Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[1].Value;
        document.getElementById("<%=hdn_ToDate.ClientID %>").value = Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[2].Value;
        document.getElementById("<%=hdn_BeginTime.ClientID %>").value = Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[4].Value;
        document.getElementById("<%=hdn_EndTime.ClientID %>").value = Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[5].Value;


                //IsApproved_CheckedChange();
		    }
		    
		     function EnableDisableControls()
		        {
		                if(ControlAction=='Update')
		                    {
                                document.getElementById('<%=chk_IsApproved.ClientID %>').disabled=true;
                                //document.getElementById('<%=txt_ApprovedBy.ClientID %>').disabled=true;
                                if (document.getElementById('<%=hdn_IsDepartmentHead.ClientID %>').value=='true')
                                {
                                    if (document.getElementById('<%=hdn_DepartmentHeadId.ClientID %>').value!=document.getElementById('<%=hdn_EmployeeId.ClientID %>').value)
                                        {
                                            document.getElementById('<%=chk_IsApproved.ClientID %>').disabled=false;
                                            //document.getElementById('<%=txt_ApprovedBy.ClientID %>').disabled=false;
                                            //IsApproved_CheckedChange();
                                        }
                                }
		                    }
		                  else
		                    {
                               
                                document.getElementById('<%=chk_IsApproved.ClientID %>').disabled=true;
                                //document.getElementById('<%=txt_ApprovedBy.ClientID %>').disabled=true;
                                document.getElementById('<%=chk_IsApproved.ClientID %>').checked=false;
		                    }  

		        }
		    
		    
		    
		        function SetValueInDropDownForDateForTime(HHobject,mmobject,Value)
		        {
		            var Hours=Value.split(':')[0];
		            var Minutes=Value.split(':')[1];
		            HHobject.value=Hours;
		            mmobject.value=Minutes;
		        }
		    
		         function SetValueInDropDownForDate(ddobject,mmobject,yyobject,value)
		    {
		        var Day=value.split('-')[2].replace(/^\s+|\s+$/g,"");
                var Month=value.split('-')[1].replace(/^\s+|\s+$/g,"");
                var Year=value.split('-')[0].replace(/^\s+|\s+$/g,"");
                ddobject.value=Day;
                mmobject.value=Month;
                yyobject.value=Year;
		    }
		    
		   
		      
		     function btn_Save_onclick()
		     {
		          var oRecord = new Object();
		          oRecord.EmployeeOutDoorEntryId=document.getElementById("<%=hdn_EmployeeOutDoorEntryId.ClientID %>").value;
		          Dg_EmployeeOutDoorEntries.executeInsert(oRecord);
		     }
		     
		      function IsApproved_CheckedChange()
                {
                    var object=document.getElementById('<%=chk_IsApproved.ClientID %>');
                    if(object.checked)
                        document.getElementById('<%=txt_ApprovedBy.ClientID %>').value=document.getElementById("<%=hdn_LoginEmpName.ClientID %>").value;
                    else
                        document.getElementById('<%=txt_ApprovedBy.ClientID %>').value='';
                }
		     
		     
		       function IsApprovedBulk_CheckedChange()
                {
                    var object=document.getElementById('<%=chk_IsApproved_Bulk.ClientID %>');
                    if(object.checked)
                        document.getElementById('<%=txt_ApprovedBy_Bulk.ClientID %>').value=document.getElementById("<%=hdn_LoginEmpName.ClientID %>").value;
                    else
                        document.getElementById('<%=txt_ApprovedBy_Bulk.ClientID %>').value='';
                }
		
            
		
    </script>

    <script type="text/javascript">

        function btn_UpdateSave() {

            document.getElementById("<%=hdn_Remarks.ClientID %>").value = document.getElementById("<%=txt_Remarks_Bulk.ClientID %>").value;
            document.getElementById("<%=hdn_ApprovedBy.ClientID %>").value = document.getElementById("<%=txt_ApprovedBy_Bulk.ClientID %>").value;


            if (document.getElementById("<%=txt_ApprovedBy_Bulk.ClientID %>").value = '') {
                alert("Enter Approved By");
                return false;
            }
            if (document.getElementById("<%=txt_Remarks_Bulk.ClientID %>").value = '') {
                alert("Enter Remarks");
                return false;
            }

            return true;
        }

        function LoadWindow() {

            if (Dg_EmployeeOutDoorEntries.SelectedRecords.length > 0) {
                var SelectedStatus = "";
                for (var i = 0; i < Dg_EmployeeOutDoorEntries.SelectedRecords.length; i++) {
                    var record = Dg_EmployeeOutDoorEntries.SelectedRecords[i];
                    SelectedStatus = SelectedStatus + "," + record.IsApproved;
                }

                if (SelectedStatus.includes("0")) {
                    if (SelectedStatus.includes("-1")) {
                        alert("Select similar out door entry status to update bulk data at one time.");
                        return false;
                    }
                }

                if (SelectedStatus.includes("0")) {
                    document.getElementById("<%=chk_IsApproved_Bulk.ClientID %>").checked = false;
                }
                else if (SelectedStatus.includes("-1")) {
                    document.getElementById("<%=chk_IsApproved_Bulk.ClientID %>").checked = true;
                }
                IsApprovedBulk_CheckedChange();
                document.getElementById("<%=hdn_BulkActionValue.ClientID %>").value = "OD";
                Wnd_UpdateWhcichEmpDetails.Open();
            }
            else {

                alert("Select rows to update status.Use control keyword to select multiple rows.");

            }
        }


    </script>
</body>
</html>
