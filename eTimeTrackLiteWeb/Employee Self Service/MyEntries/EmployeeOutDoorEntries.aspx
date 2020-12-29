<%@ page language="VB" autoeventwireup="false" inherits="Manage_EmployeeOutDoorEntries, App_Web_bgemufol" %>

<%@ Register TagPrefix="obout" Namespace="Obout.Grid" Assembly="obout_Grid_NET" %>
<%@ Register TagPrefix="obout" Namespace="OboutInc.Flyout2" Assembly="obout_Flyout2_NET" %>
<script type="text/javascript">
    // Client-Side Events for Delete

    function OnBeforeDelete(oLink) {
        var record = new Object();
        var iRecordIndex = oLink.id.toString().replace("grid_link_", "")
        record.SpecialEntryId = Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[0].Value;
        record.Error = '';
        document.getElementById("<%=hdn_EmployeeOutDoorEntryId.ClientID %>").value = record.SpecialEntryId;
        document.getElementById("<%=hdn_EmployeeCode.ClientID %>").value = Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[6].Value;
        document.getElementById("<%=hdn_FromDate.ClientID %>").value = Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[1].Value;
        document.getElementById("<%=hdn_ToDate.ClientID %>").value = Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[2].Value;
        document.getElementById("<%=hdn_BeginTime.ClientID %>").value = Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[4].Value;
        document.getElementById("<%=hdn_EndTime.ClientID %>").value = Dg_EmployeeOutDoorEntries.Rows[iRecordIndex].Cells[5].Value;
        if (confirm("Are you sure you want to delete? "))
            Dg_EmployeeOutDoorEntries.executeDelete(record);
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
                                <asp:DropDownList AutoPostBack="false" onchange="Dg_EmployeeOutDoorEntries.refresh();"
                                    ID="drp_ApprovedStatus" runat="server">
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
                                <obout:Grid ID="Dg_EmployeeOutDoorEntries" runat="server" CallbackMode="true" EnableRecordHover="true"
                                    KeepSelectedRecords="true" Serialize="true" AutoGenerateColumns="false" FolderStyle="~/styles/grid/styles/premiere_blue"
                                    AllowAddingRecords="true" ShowLoadingMessage="false" OnRebind="RebindGrid" OnInsertCommand="InsertRecord"
                                    AllowFiltering="true" OnDeleteCommand="DeleteRecord">
                                    <ClientSideEvents OnClientInsert="OnInsert" OnBeforeClientDelete="OnBeforeDelete"
                                        OnClientDelete="OnDelete" />
                                    <TemplateSettings NewRecord_TemplateId="tplAddBtn" />
                                    <Columns>
                                        <obout:Column ID="Column0" DataField="SpecialEntryId" Visible="false" Width="100"
                                            HeaderText="SpecialEntryId" runat="server" />
                                        <obout:Column ID="Column1" DataField="FromDate" DataFormatString="{0:dd MMM yyyy}"
                                            Visible="true" Width="90" HeaderText="From Date" runat="server" />
                                        <obout:Column ID="Column2" DataField="Todate" DataFormatString="{0:dd MMM yyyy}"
                                            Visible="true" Width="90" HeaderText="To Date" runat="server" />
                                        <obout:Column ID="Column3" DataField="Duration" Visible="true" Width="80" HeaderText="Duration"
                                            runat="server" />
                                        <obout:Column ID="Column4" DataField="BeginTime" Visible="true" Width="65" HeaderText="Begin"
                                            runat="server" />
                                        <obout:Column ID="Column5" DataField="EndTime" Visible="true" Width="60" HeaderText="End"
                                            runat="server" />
                                        <obout:Column ID="Column6" DataField="EmployeeCode" Visible="true" Width="90" HeaderText="Emp Code"
                                            runat="server" />
                                        <obout:Column ID="Column7" DataField="EmployeeName" Visible="true" Width="105" HeaderText="Emp Name"
                                            runat="server" />
                                        <obout:Column ID="Column8" DataField="CompanySName" Visible="true" Width="105" HeaderText="Company"
                                            runat="server" />
                                        <obout:Column ID="Column9" DataField="DepartmentSName" Visible="true" Width="115"
                                            HeaderText="Department" runat="server" />
                                        <obout:Column ID="Column10" DataField="Designation" Visible="false" Width="110" HeaderText="Designation"
                                            runat="server" />
                                        <obout:Column ID="Column11" DataField="CategorySName" Visible="false" Width="100"
                                            HeaderText="Category" runat="server" />
                                        <obout:Column ID="Column12" DataField="EmployeesStatus" Visible="false" Width="100"
                                            HeaderText="Status" runat="server" />
                                        <obout:Column ID="Column13" DataField="EmployementType" Visible="false" Width="100"
                                            HeaderText="Emp Type" runat="server" />
                                        <obout:Column ID="Column14" DataField="IsApproved" Visible="true" Width="125" SortOrder="Desc"
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
                                        <obout:Column Width="85" AllowEdit="True" AllowDelete="True" ConvertEmptyStringToNull="False"
                                            Index="20" TemplateId="tplEditeEntriesBtn">
                                            <TemplateSettings TemplateId="tplEditeEntriesBtn" />
                                        </obout:Column>
                                        <obout:Column Width="70" HeaderText="" AllowEdit="false" AllowDelete="true" Visible="true">
                                            <TemplateSettings TemplateId="tplDeleteLeaveEntriesBtn" />
                                        </obout:Column>
                                        <obout:Column ID="Column22" DataField="CreatedDate" DataFormatString="{0:dd-MMM-yyyy HH:mm:ss}"
                                            Width="90" Visible="false" HeaderText="Created Date" ConvertEmptyStringToNull="False"
                                            DataFormatString_GroupHeader="{0:dd-MMM-yyyy HH:mm:ss}" />
                                        <obout:Column ID="Column23" DataField="LastModifiedDate" DataFormatString="{0:dd-MMM-yyyy HH:mm:ss}"
                                            Width="90" Visible="false" HeaderText="Modified Date" ConvertEmptyStringToNull="False"
                                            DataFormatString_GroupHeader="{0:dd-MMM-yyyy HH:mm:ss}" />
                                    </Columns>
                                    <Templates>
                                        <obout:GridTemplate runat="server" ID="tplDeleteLeaveEntriesBtn">
                                            <Template>
                                                <a href="javascript: //" id="grid_link_<%# Container.PageRecordIndex %>" class="ob_gAL"
                                                    onclick="OnBeforeDelete(this);">
                                                    <%#CheckForDelete(Container.DataItem.Item("IsApproved"))%></a>
                                            </Template>
                                        </obout:GridTemplate>
                                        <obout:GridTemplate runat="server" ID="tplEditBtn">
                                            <Template>
                                                <a href="javascript: //" id="grid_link_<%# Container.PageRecordIndex %>" onclick="attachFlyoutToLink(this,'Update')"
                                                    class="ob_gAL">
                                                    <%#CheckForEdit(Container.DataItem.Item("IsApproved"))%></a>
                                            </Template>
                                        </obout:GridTemplate>
                                        <obout:GridTemplate runat="server" ID="tplAddBtn">
                                            <Template>
                                                <a href="javascript: //" id="grid_link_" onclick="attachFlyoutToLink(this,'Add')"
                                                    class="ob_gAL"></a>
                                            </Template>
                                        </obout:GridTemplate>
                                        <obout:GridTemplate runat="server" ID="tplApprovalStatus">
                                            <Template>
                                                <%#ParseApprovalStatus(Container.DataItem.Item("IsApproved"),Container.DataItem.Item("ApprovedBy"))%>
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
                                        <obout:GridTemplate runat="server" ID="tplEditeEntriesBtn" ControlID="" ControlPropertyName="">
                                            <Template>
                                                <a href="javascript: //" id="grid_link_<%# Container.PageRecordIndex %>" onclick="attachFlyoutToLink(this,'Update')"
                                                    class="ob_gAL">View Details</a>
                                            </Template>
                                        </obout:GridTemplate>
			    
                                    </Templates>
                                </obout:Grid>
                            </td>
                        </tr>
                    </table>
                   <obout:Flyout runat="server" ID="Flyout1" Align="left" Position="BOTTOM_left" CloseEvent="NONE" OpenEvent="NONE" DelayTime="500">
                        <table class="rowEditTable">
                            <tr>
                                <td>
                                    <fieldset>
                                        <legend>Employee Out Door Entries</legend>
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
                                                    <asp:CheckBox ID="chk_IsApproved" runat="server" Text="Is Approved" Enabled="false"
                                                        onclick="IsApproved_CheckedChange();" />
                                                </td>
                                                <td>
                                                    &nbsp;Approved By&nbsp;<asp:TextBox ID="txt_ApprovedBy" runat="server" Enabled="false"
                                                        Width="250px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    Remarks
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_Remarks" runat="server" TextMode="MultiLine" Width="90%"></asp:TextBox>
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
                                    <input id="btn_Cancel" type="button" value="Close" onclick="javascript:closeFlyout();" />
                                    <asp:HiddenField ID="hdn_EmployeeOutDoorEntryId" runat="server" />
                                    <asp:HiddenField ID="hdn_EmployeeId" runat="server" />
                                    <asp:HiddenField ID="hdn_EmployeeName" runat="server" />
                                    <asp:HiddenField ID="hdn_IsDepartmentHead" runat="server" />
                                    <asp:HiddenField ID="hdn_DepartmentHeadId" runat="server" />
                                    <asp:HiddenField ID="hdn_EmployeeCode" runat="server" />
                                    <asp:HiddenField ID="hdn_FromDate" runat="server" />
                                    <asp:HiddenField ID="hdn_ToDate" runat="server" />
                                    <asp:HiddenField ID="hdn_BeginTime" runat="server" />
                                    <asp:HiddenField ID="hdn_EndTime" runat="server" />
                                </td>
                            </tr>
                        </table>
                   </obout:Flyout>
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
        
        Function CheckForDelete(ByVal IsApproved As String)
            If IsApproved = "-1" Then
                Return ""
            Else
                Return "Delete"
            End If
        End Function
        
        Function CheckForEdit(ByVal IsApproved As String)
            If IsApproved = "-1" Then
                Return ""
            Else
                Return "Edit"
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
                
		         try 
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
                catch(ex){}
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
                    document.getElementById( "<%=chk_IsApproved.ClientID %>").checked=true;
                else
                    document.getElementById( "<%=chk_IsApproved.ClientID %>").checked=false;
                document.getElementById( "<%=txt_ApprovedBy.ClientID %>").value=ApprovedBy;
                document.getElementById( "<%=txt_Remarks.ClientID %>").value=Remarks;

                  if(CreatedDate.includes('1900'))
                  {
                   document.getElementById( "<%=txt_CreatedDate.ClientID %>").value='';
                  }
                  else
                  {
                   document.getElementById( "<%=txt_CreatedDate.ClientID %>").value=CreatedDate;
                  }

                   if(CreatedDate.includes('1900'))
                  {
                   document.getElementById( "<%=txt_ModifiedDate.ClientID %>").value='';
                  }
                  else
                  {
                   document.getElementById( "<%=txt_ModifiedDate.ClientID %>").value=ModifiedDate;
                  }
		    }
		    
		     function EnableDisableControls()
		        {
		                if(ControlAction=='Update')
		                    {
                                document.getElementById('<%=chk_IsApproved.ClientID %>').disabled=true;
                                document.getElementById('<%=txt_ApprovedBy.ClientID %>').disabled=true;
                                if (document.getElementById('<%=hdn_IsDepartmentHead.ClientID %>').value=='true')
                                {
                                    if (document.getElementById('<%=hdn_DepartmentHeadId.ClientID %>').value!=document.getElementById('<%=hdn_EmployeeId.ClientID %>').value)
                                        {
                                            document.getElementById('<%=chk_IsApproved.ClientID %>').disabled=false;
                                            document.getElementById('<%=txt_ApprovedBy.ClientID %>').disabled=false;
                                            IsApproved_CheckedChange();
                                        }
                                }
		                    }
		                  else
		                    {
                                document.getElementById('<%=chk_IsApproved.ClientID %>').disabled=true;
                                document.getElementById('<%=txt_ApprovedBy.ClientID %>').disabled=true;
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
		    
            
		     
		    
    </script>
</body>
</html>
