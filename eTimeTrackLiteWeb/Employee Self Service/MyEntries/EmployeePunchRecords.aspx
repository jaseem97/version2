<%@ page language="VB" autoeventwireup="false" enableeventvalidation="false" inherits="Manage_EmployeeDeviceLogs, App_Web_bgemufol" %>

<%@ Register TagPrefix="obout" Namespace="Obout.Grid" Assembly="obout_Grid_NET" %>
<%@ Register TagPrefix="obout" Namespace="OboutInc.Flyout2" Assembly="obout_Flyout2_NET" %>
<script type="text/javascript">
    // Client-Side Events for Delete

    function OnBeforeDelete(oLink) {
        var record = new Object();
        var iRecordIndex = oLink.id.toString().replace("grid_link_", "")
        record.DeviceLogId = Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[0].Value;
        record.Error = '';
        document.getElementById("<%=hdn_EmployeeManualEntryId.ClientID %>").value = record.DeviceLogId;
        document.getElementById("<%=hdn_EmployeeCode.ClientID %>").value = Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[6].Value;
        document.getElementById("<%=hdn_LogDateTime.ClientID %>").value = Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[1].Value;
        if (confirm("Are you sure you want to delete? "))
            Dg_EmployeeLogRecords.executeDelete(record);
        else
            return false;
    }

    function OnDelete(record) {
        alert(record.Error);
    }

  
	
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">

        var popUpObj;

        function showModalPopUp(DeviceLogId, TableName) {

            popUpObj = window.open("../ViewAttendancePhoto.aspx?Id=" + DeviceLogId + "&TableName=" + TableName + "",

    "ModalPopUp",

    "toolbar=no," +

    "scrollbars=no," +

    "location=no," +

    "statusbar=no," +

    "menubar=no," +

    "resizable=0," +

    "width=300," +

    "height=300," +

    "left = 490," +

    "top=300"

    );

            popUpObj.focus();

            LoadModalDiv();

        }


        function LoadModalDiv() {

            var bcgDiv = document.getElementById("divBackground");

            bcgDiv.style.display = "block";

        }

        function HideModalDiv() {

            var bcgDiv = document.getElementById("divBackground");

            bcgDiv.style.display = "none";

        }

      

    </script>
</head>
<body>
    <form id="form1" runat="server">
     <div id="divBackground" style="position: fixed; z-index: 999; height: 100%; width: 100%;
        top: 0; left: 0; background-color: Black; filter: alpha(opacity=60); opacity: 0.6;
        -moz-opacity: 0.8; display: none">
    </div>

    <div>
        <table cellpadding="0" cellspacing="0" style="border-right: gray 1px solid; border-top: gray 1px solid;
            border-left: gray 1px solid; border-bottom: gray 1px solid;">
            <tr style="font-weight: bold; font-size: 14px; background-color: lightsteelblue;
                padding-left: 5px; padding-top: 3px; padding-bottom: 3px; color: white;">
                <td style="font-weight: bold;">
                    Employee Log Records
                </td>
                <td align="right">
                    Device&nbsp;<asp:DropDownList ID="drp_FilterDevice" onchange="Dg_EmployeeLogRecords.refresh();"
                        AutoPostBack="false" runat="server">
                    </asp:DropDownList>
                    &nbsp;&nbsp; Month
                    <asp:DropDownList ID="drp_SelectMonth" runat="server" Width="48px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp; Year
                    <asp:TextBox ID="txt_Year" runat="server" Width="128px"></asp:TextBox>&nbsp; Approval
                    Status&nbsp;
                    <asp:DropDownList ID="drp_ApprovedStatus" runat="server">
                        <asp:ListItem Selected="True">All</asp:ListItem>
                        <asp:ListItem>Approved</asp:ListItem>
                        <asp:ListItem>Not Approved</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                    <%--<asp:Button ID="btn_Go" OnClientClick="Dg_EmployeeLogRecords.refresh();" runat="server" Text="Filter" />--%>
                    <input id="btn_Go" type="button" value="Go" onclick="Dg_EmployeeLogRecords.refresh();" />
                </td>
            </tr>
            <tr style="background-color: lightsteelblue;">
                <td colspan="2">
                    <hr />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <obout:Grid ID="Dg_EmployeeLogRecords" AllowAddingRecords="false" runat="server"
                        EnableRecordHover="true" KeepSelectedRecords="true" AutoGenerateColumns="false"
                        FolderStyle="~/styles/grid/styles/premiere_blue" ShowLoadingMessage="false" OnRebind="RebindGrid"
                        OnDeleteCommand="DeleteRecord">
                        <ClientSideEvents OnBeforeClientDelete="OnBeforeDelete" OnClientDelete="OnDelete" />
                        <Columns>
                            <obout:Column ID="Column2" DataField="DeviceLogId" Visible="false" Width="100" HeaderText="DeviceLogId"
                                runat="server" />
                            <obout:Column ID="Column1" DataField="LogDate" SortOrder="Desc" DataFormatString="{0:dd MMM yyyy HH:mm:ss}"
                                Visible="true" Width="155" HeaderText="Log Date" runat="server" />
                            <obout:Column ID="Column7" DataField="DeviceSName" Visible="true" Width="100" HeaderText="Device"
                                runat="server" />
                            <obout:Column ID="Column4" DataField="DeviceId" Visible="false" Width="80" HeaderText="DeviceId"
                                runat="server" />
                            <obout:Column ID="Column5" DataField="Direction" Visible="true" Width="95" HeaderText="Direction"
                                runat="server" />
                            <obout:Column ID="Column14" DataField="WorkCode" Visible="false" Width="105" HeaderText="Work Code"
                                runat="server" />
                            <obout:Column ID="Column6" DataField="EmployeeCode" Visible="true" Width="105" HeaderText="Emp Code"
                                runat="server" />
                            <obout:Column ID="Column3" DataField="EmployeeName" Visible="true" Width="130" HeaderText="Emp Name"
                                runat="server" />
                            <obout:Column ID="Column8" DataField="CompanySName" Visible="true" Width="130" HeaderText="Company"
                                runat="server" />
                            <obout:Column ID="Column9" DataField="DepartmentSName" Visible="true" Width="130"
                                HeaderText="Department" runat="server" />
                            <obout:Column ID="Column10" DataField="Designation" Visible="false" Width="100" HeaderText="Designation"
                                runat="server" />
                            <obout:Column ID="Column11" DataField="CategorySName" Visible="false" Width="100"
                                HeaderText="Category" runat="server" />
                            <obout:Column ID="Column12" DataField="EmployeesStatus" Visible="false" Width="80"
                                HeaderText="Status" runat="server" />
                            <obout:Column ID="Column13" DataField="EmployementType" Visible="false" Width="85"
                                HeaderText="Emp Type" runat="server" />
                            <obout:Column ID="Column16" DataField="IsApproved" Visible="true" Width="125" SortOrder="Desc"
                                HeaderText="Approval Status" runat="server">
                                <TemplateSettings TemplateId="tplApprovalStatus" />
                            </obout:Column>
                            <obout:Column ID="Column15" DataField="C2" Visible="false" Width="100" HeaderText="C2"
                                runat="server" />
                            <obout:Column ID="Column17" DataField="C3" Visible="false" Width="100" HeaderText="C3"
                                runat="server" />
                            <obout:Column ID="Column18" DataField="EmployeeId" Visible="false" Width="100" HeaderText="EmployeeId"
                                runat="server" />
                            <obout:Column ID="Column19" Visible="false" Width="90" HeaderText="From Date" runat="server">
                                <TemplateSettings TemplateId="TP_FromDateFormat" />
                            </obout:Column>
                            <obout:Column ID="Column20" Visible="false" Width="90" HeaderText="From Time" runat="server">
                                <TemplateSettings TemplateId="TP_FromTimeFormat" />
                            </obout:Column>
                            <obout:Column HeaderText="Edit" Width="80" AllowEdit="true" AllowDelete="true">
                                <TemplateSettings TemplateId="tplEditBtn" />
                            </obout:Column>
                            <obout:Column Width="80" HeaderText="Delete" AllowEdit="false" AllowDelete="true" Visible="true">
                                <TemplateSettings TemplateId="tplDeleteLeaveEntriesBtn" />
                            </obout:Column>
                            <obout:Column ID="Column24" DataField="CreatedDate" DataFormatString="{0:dd-MMM-yyyy HH:mm:ss}"
                                Width="90" Visible="false" HeaderText="Created Date" ConvertEmptyStringToNull="False"
                                DataFormatString_GroupHeader="{0:dd-MMM-yyyy HH:mm:ss}" />
                            <obout:Column ID="Column25" DataField="LastModifiedDate" DataFormatString="{0:dd-MMM-yyyy HH:mm:ss}"
                                Width="90" Visible="false" HeaderText="Modified Date" ConvertEmptyStringToNull="False"
                                DataFormatString_GroupHeader="{0:dd-MMM-yyyy HH:mm:ss}" />
                            <obout:Column Width="82" HeaderText="Att Photo" ConvertEmptyStringToNull="False"
                                 TemplateId="tplViewPhoto">
                                <TemplateSettings TemplateId="tplViewPhoto" />
                            </obout:Column>
                            <obout:Column ConvertEmptyStringToNull="False" DataField="FileName" HeaderText="FileName"
                                Visible="False">
                            </obout:Column>
                            <obout:Column ConvertEmptyStringToNull="False" DataField="TableName" HeaderText="TableName"
                                Visible="False" >
                            </obout:Column>
                        </Columns>
                        <Templates>
                            <obout:GridTemplate runat="server" ID="tplViewPhoto">
                                <Template>
                                    <a href="Javascript:void(0);" onclick="showModalPopUp('<%#Container.DataItem.Item("DeviceLogId")%>','<%#Container.DataItem.Item("TableName")%>')">
                                        <%#ShowPhotoColumn(Container.DataItem.Item("FileName"))%>
                                    </a>
                                </Template>
                            </obout:GridTemplate>
                            <obout:GridTemplate runat="server" ID="tplDeleteLeaveEntriesBtn">
                                <Template>
                                    <a href="javascript: //" id="grid_link_<%# Container.PageRecordIndex %>" class="ob_gAL"
                                        onclick="OnBeforeDelete(this);">
                                        <%#CheckForDelete(Container.Value, Container.DataItem.Item("IsApproved"))%></a>
                                </Template>
                            </obout:GridTemplate>
                            <obout:GridTemplate runat="server" ID="tplApprovalStatus">
                                <Template>
                                    <%#ParseApprovalStatus(Container.Value, Container.DataItem.Item("C2"), Container.DataItem.Item("DeviceId"))%>
                                </Template>
                            </obout:GridTemplate>
                            <obout:GridTemplate runat="server" ID="tplEditBtn">
                                <Template>
                                    <a href="javascript: //" id="grid_link_<%# Container.PageRecordIndex %>" onclick="attachFlyoutToLink(this,'Update')"
                                        class="ob_gAL">View Details</a>
                                </Template>
                            </obout:GridTemplate>
                            <obout:GridTemplate runat="server" ID="TP_FromDateFormat">
                                <Template>
                                    <%#ParseDateTime(Container.DataItem.Item("LogDate"))%>
                                </Template>
                            </obout:GridTemplate>
                            <obout:GridTemplate runat="server" ID="TP_FromTimeFormat">
                                <Template>
                                    <%#ParseDateTime1(Container.DataItem.Item("LogDate"))%>
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
                            <legend>Update Employee Manual Entries</legend>
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
                                        Log Date Time
                                    </td>
                                    <td align="left">
                                        <select runat="server" id="drp_ddFromDate">
                                        </select>
                                        &nbsp;<select runat="server" id="drp_mmFromDate"></select>&nbsp;<select runat="server"
                                            id="drp_yyyyFromDate"></select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList runat="server"
                                                ID="drp_HHBeginTime" onchange="SetDuration();">
                                            </asp:DropDownList>
                                        &nbsp;:&nbsp;<asp:DropDownList runat="server" onchange="SetDuration();" ID="drp_mmBeginTime">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        Direction
                                    </td>
                                    <td>
                                        <select id="drp_Direcion" runat="server" width="69px" enableviewstate="true">
                                            <option selected="selected" value="in">In</option>
                                            <option value="out">Out</option>
                                            <option value="breakin">Break In</option>
                                            <option value="breakout">Break out</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        Device Name
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="drp_DeviceName" runat="server" Width="140px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        Work Code
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="drp_WorkCode" runat="server">
                                            <asp:ListItem>999</asp:ListItem>
                                        </asp:DropDownList>
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
                                                    <asp:TextBox ID="txt_CreatedDate" ReadOnly="true" Width="145px" runat="server"></asp:TextBox>
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
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                        <asp:HiddenField ID="hdn_EmployeeId" runat="server" />
                        <asp:HiddenField ID="hdn_EmployeeName" runat="server" />
                        <asp:HiddenField ID="hdn_IsDepartmentHead" runat="server" />
                        <asp:HiddenField ID="hdn_DepartmentHeadId" runat="server" />
                        <asp:HiddenField ID="hdn_LoginEmpName" runat="server" />
                        <asp:HiddenField ID="hdn_LogTableName" runat="server" />
                        <asp:HiddenField ID="hdn_EmployeeCodeInDevice" runat="server" />
                    </td>
                </tr>
            </table>
        </obout:Flyout>
    </div>
    <asp:HiddenField ID="hdn_EmployeeManualEntryId" runat="server" />
    <asp:HiddenField ID="hdn_EmployeeCode" runat="server" />
    <asp:HiddenField ID="hdn_LogDateTime" runat="server" />
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
        
        Function ParseApprovalStatus(ByVal IsApproved As String, ByVal ApprovedBy As String, ByVal DeviceId As String)
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
        
        Function CheckForDelete(ByVal strApprovedValue As Integer, ByVal DeviceId As String)
            If DeviceId = 0 Then
                Return "Delete"
            ElseIf DeviceId = -1 Then
                Return ""
            End If
            
        End Function
        
        Function ShowPhotoColumn(ByVal FileName As String)
            Try
                If Not String.IsNullOrEmpty(FileName) Then
                    Return "View"
                Else
                    Return ""
                End If
              
            Catch ex As Exception
                Return ""
            End Try
            
        End Function
        
       
        
        Function ParseDateTime(ByVal DateValue As Date) As String
            Return DateValue.ToString("yyyy-MM-dd")
        End Function
        Function ParseDateTime1(ByVal DateValue As Date) As String
            Return DateValue.ToString("HH:mm:ss")
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
                    document.getElementById("<%=hdn_EmployeeManualEntryId.ClientID %>").value = '0';
                    document.getElementById("<%=hdn_LogTableName.ClientID %>").value = '';
                    document.getElementById("<%=hdn_EmployeeCodeInDevice.ClientID %>").value = '';
                    document.getElementById("<%=hdn_EmployeeId.ClientID %>").value = '0';
                    document.getElementById('<%=txt_EmployeeName.ClientID %>').value='';
		        SetValueInDropDownForDateForTime(document.getElementById("<%=drp_HHBeginTime.ClientID%>"),document.getElementById("<%=drp_mmBeginTime.ClientID%>"),"00:00");
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
		            
		        
		    }

            function populateEditControls(iRecordIndex) 
		    {	
                
		        var FromDate=Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[18].Value;
		        var BeginTime=Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[19].Value;
		        var EmployeeCode=Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[6].Value;
		        var EmployeeName=Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[7].Value;
		        var CompanySName=Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[8].Value;
		        var DepartmentSName=Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[9].Value;
		        var Designation=Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[10].Value;
		        var CategorySName=Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[11].Value;
		        var EmployeesStatus=Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[12].Value;
		        var EmployementType=Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[13].Value;
		        var IsApproved=Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[14].Value;
		        var ApprovedBy=Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[15].Value;
		        var Remarks=Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[16].Value.replace(/<BR>/gi,'\n');
                var DeviceId=Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[3].Value;
                var Direction=Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[4].Value;
                var CreatedDate=Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[22].Value;
                var ModifiedDate=Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[23].Value;
                
	            document.getElementById("<%=hdn_EmployeeId.ClientID %>").value = Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[17].Value;
                document.getElementById("<%=hdn_EmployeeManualEntryId.ClientID %>").value = Dg_EmployeeLogRecords.Rows[iRecordIndex].Cells[0].Value;
                
                SetValueInDropDownForDate(document.getElementById("<%=drp_ddFromDate.ClientID %>"),document.getElementById("<%=drp_mmFromDate.ClientID %>"),document.getElementById("<%=drp_yyyyFromDate.ClientID %>"),FromDate);
                SetValueInDropDownForDateForTime(document.getElementById("<%=drp_HHBeginTime.ClientID%>"),document.getElementById("<%=drp_mmBeginTime.ClientID%>"),BeginTime);
                
                document.getElementById( "<%=txt_EmployeeName.ClientID %>").value =EmployeeName;
                
                if(IsApproved=='-1')
                    document.getElementById( "<%=chk_IsApproved.ClientID %>").checked=true;
                else
                    document.getElementById( "<%=chk_IsApproved.ClientID %>").checked=false;
                document.getElementById( "<%=txt_ApprovedBy.ClientID %>").value=ApprovedBy;
                document.getElementById( "<%=txt_Remarks.ClientID %>").value=Remarks;
                document.getElementById("<%=drp_DeviceName.ClientID %>").value =DeviceId;
                document.getElementById("<%=drp_Direcion.ClientID %>").value =Direction.toLowerCase();
                
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

		            HHobject.value=Hours.trim();
		            mmobject.value=Minutes.trim();
                     
                     
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
