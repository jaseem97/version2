<%@ page language="VB" autoeventwireup="false" inherits="EmployeeLeaveRecords, App_Web_bgemufol" enableeventvalidation="false" %>
<%@ Register TagPrefix="obout" Namespace="Obout.Grid" Assembly="obout_Grid_NET" %>
<%@ Register TagPrefix="obout" Namespace="OboutInc.Flyout2" Assembly="obout_Flyout2_NET"%>
<%@ Register Assembly="obout_Window_NET" Namespace="OboutInc.Window" TagPrefix="owd" %>

<script type="text/javascript">	
	// Client-Side Events for Delete
	function OnBeforeDelete(oLink) 
	    {
	        var record = new Object();
	        var iRecordIndex=oLink.id.toString().replace("grid_link_", "")
	        record.LeaveEntryId=Dg_EmployeeLeaveEntries.Rows[iRecordIndex].Cells[0].Value;
	        document.getElementById("<%=hdn_EmployeeLeaveEntryId.ClientID %>").value = record.LeaveEntryId;
	        document.getElementById("<%=hdn_EmployeeCode.ClientID %>").value = Dg_EmployeeLeaveEntries.Rows[iRecordIndex].Cells[3].Value;
	        document.getElementById("<%=hdn_FromDate.ClientID %>").value = Dg_EmployeeLeaveEntries.Rows[iRecordIndex].Cells[1].Value;
	        document.getElementById("<%=hdn_ToDate.ClientID %>").value = Dg_EmployeeLeaveEntries.Rows[iRecordIndex].Cells[2].Value;
	        document.getElementById("<%=hdn_LeaveCode.ClientID %>").value =Dg_EmployeeLeaveEntries.Rows[iRecordIndex].Cells[5].Value;

	        record.Error='';
	        if(confirm("Are you sure you want to delete? "))
		          Dg_EmployeeLeaveEntries.executeDelete(record);
	        else
	            return false;
	    }
	
	function OnDelete(record) 
	{
	    alert(record.Error);
	}
	
	
	
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1">
    <title>Untitled Page</title>
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body onload="IsApproved_CheckedChange();EnableDisableControls();">
    <form id="form1" runat="server">
    <table cellpadding="2">
    <tr>
    <td>
    <div>
    
            <table cellpadding="0" cellspacing="0" style="border-right: gray 1px solid; border-top: gray 1px solid;
                border-left: gray 1px solid; border-bottom: gray 1px solid;">
                <tr style="font-weight: bold; font-size: 14px; background-color: lightsteelblue;
                    padding-left: 5px; padding-top: 3px; padding-bottom: 3px; color: white;">
                    <td  style="font-weight: bold; font-size: 14px; background-color: lightsteelblue;padding:5px; color: white;">
                        Employees Leave Entries
                    </td>
                    
                    <td align="right">
                    Approval Status&nbsp;&nbsp;
                    <asp:DropDownList AutoPostBack="false" ID="drp_ApprovedStatus" onchange="Dg_EmployeeLeaveEntries.refresh();" runat="server">
                    <asp:ListItem Selected="True">All</asp:ListItem>
                    <asp:ListItem>Approved</asp:ListItem>
                    <asp:ListItem>Not Approved</asp:ListItem>
                    </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;
                        
                    </td>
                    
                </tr>
                
                <tr style=" background-color: lightsteelblue;">
                <td colspan="2">
                <hr />
                </td>
                </tr>
                
                
                <tr>
                    <td colspan="2" >
    <obout:Grid id="Dg_EmployeeLeaveEntries" runat="server" CallbackMode="true" EnableRecordHover="true" AllowAddingRecords="false" AllowFiltering="true" KeepSelectedRecords="true"  Serialize="true" AutoGenerateColumns="false" FolderStyle="~/styles/grid/styles/premiere_blue" 
                 OnRebind="RebindGrid" OnInsertCommand="InsertRecord"  OnDeleteCommand="DeleteRecord">
                            <ClientSideEvents OnBeforeClientDelete="OnBeforeDelete" OnClientDelete="OnDelete"/>
                            
			
			<Columns>
				<obout:Column ID="Column0" DataField="LeaveEntryId" Visible="False" Width="100" HeaderText="LeaveEntryId" ConvertEmptyStringToNull="False" Index="0" />
				<obout:Column ID="Column1" DataField="FromDate"  DataFormatString="{0:dd MMM yyyy}" Width="90" HeaderText="From Date" ConvertEmptyStringToNull="False" DataFormatString_GroupHeader="{0:dd MMM yyyy}" Index="1" />
                <obout:Column ID="Column2" DataField="Todate" DataFormatString="{0:dd MMM yyyy}" Width="90" HeaderText="To Date" ConvertEmptyStringToNull="False" DataFormatString_GroupHeader="{0:dd MMM yyyy}" Index="2" />
                <obout:Column ID="Column3" DataField="EmployeeCode" Width="90" HeaderText="Emp Code" ConvertEmptyStringToNull="False" Index="3" />
                <obout:Column ID="Column4" DataField="EmployeeName" Width="95" HeaderText="Emp Name" ConvertEmptyStringToNull="False" Index="4" />
                <obout:Column ID="Column5" DataField="LeaveTypeSName" Width="75" HeaderText="Type" ConvertEmptyStringToNull="False" Index="5" />
                <obout:Column ID="Column6" DataField="LeaveStatus" Width="105" HeaderText="Leave Status" ConvertEmptyStringToNull="False" Index="6" />
                <obout:Column ID="Column7" DataField="CompanySName" Width="95" HeaderText="Company" ConvertEmptyStringToNull="False" Index="7" />
                <obout:Column ID="Column8" DataField="DepartmentSName" Width="100" HeaderText="Department" ConvertEmptyStringToNull="False" Index="8" />
                <obout:Column ID="Column9" DataField="IsApproved" Width="125" SortOrder="Desc" HeaderText="Approval Status" ConvertEmptyStringToNull="False" Index="9" TemplateId="tplApprovalStatus" ><TemplateSettings TemplateId="tplApprovalStatus" /></obout:Column>
                <obout:Column ID="Column10" DataField="LeaveTypeId" Visible="False" Width="80" HeaderText="LeaveTypeId" ConvertEmptyStringToNull="False" Index="10" />
                <obout:Column ID="Column11" DataField="EmployeeId" Visible="False" Width="80" HeaderText="Emp Type" ConvertEmptyStringToNull="False" Index="11" />
                <obout:Column ID="Column12" DataField="ApprovedBy" Visible="False" Width="80" HeaderText="ApprovedBy" ConvertEmptyStringToNull="False" Index="12" />
                <obout:Column ID="Column13" DataField="Remarks" Visible="False" Width="80" HeaderText="Remarks" ConvertEmptyStringToNull="False" Index="13" />
                 <obout:Column ID="Column14" Visible ="false" Width="125" SortOrder="Desc" HeaderText="Approval Status" ConvertEmptyStringToNull="False" Index="14" TemplateId="tplApprovalStatus" ><TemplateSettings TemplateId="tplApprovalStatus" /></obout:Column>
                <obout:Column ID="Column15" DataField="LastModifiedBy" HeaderText="Modified By" Width="98" ConvertEmptyStringToNull="False" Index="15" />
                <obout:Column ID="Column16" Visible="False"  Width="90" HeaderText="From Date" ConvertEmptyStringToNull="False" Index="16" TemplateId="TP_FromDateFormat"> <TemplateSettings TemplateId="TP_FromDateFormat" /></obout:Column>
                <obout:Column ID="Column17" Visible="False" Width="90" HeaderText="To Date" ConvertEmptyStringToNull="False"
                    Index="17" TemplateId="TP_ToDateFormat">
                    <TemplateSettings TemplateId="TP_ToDateFormat" />
                </obout:Column>
                <obout:Column ID="Column22" DataField="CreatedDate" DataFormatString="{0:dd-MMM-yyyy HH:mm:ss}"
                    Width="90" Visible="false" HeaderText="Created Date" ConvertEmptyStringToNull="False"
                    DataFormatString_GroupHeader="{0:dd-MMM-yyyy HH:mm:ss}" Index="18" />
                <obout:Column ID="Column23" DataField="LastModifiedDate" DataFormatString="{0:dd-MMM-yyyy HH:mm:ss}"
                    Width="90" Visible="false" HeaderText="Modified Date" ConvertEmptyStringToNull="False"
                    DataFormatString_GroupHeader="{0:dd-MMM-yyyy HH:mm:ss}" Index="19" />
                <obout:Column Width="85" AllowEdit="True" AllowDelete="True" ConvertEmptyStringToNull="False"
                    Index="20" TemplateId="tplEditeLeaveEntriesBtn">
                    <TemplateSettings TemplateId="tplEditeLeaveEntriesBtn" />
                </obout:Column>
                <obout:Column Width="70" AllowDelete="True" ConvertEmptyStringToNull="False" Index="21"
                    TemplateId="tplDeleteLeaveEntriesBtn">
                    <TemplateSettings TemplateId="tplDeleteLeaveEntriesBtn" />
                </obout:Column>
            </Columns>
        <Templates>
			
			 <obout:GridTemplate runat="server" ID="tplEditeLeaveEntriesBtn" ControlID="" ControlPropertyName="">
			        <Template>
			            <a href="javascript: //" id="grid_link_<%# Container.PageRecordIndex %>" onclick="attachFlyoutToLink(this,'Update')" class="ob_gAL">View Details</a>
			        </Template>
			    </obout:GridTemplate>
			    
			    
			    <obout:GridTemplate runat="server" ID="tplDeleteLeaveEntriesBtn" ControlID="" ControlPropertyName="">
			        <Template>
			            <a href="javascript: //" id="grid_link_<%# Container.PageRecordIndex %>"  class="ob_gAL" onclick="OnBeforeDelete(this);"><%#DeleteLeave(Container.DataItem.Item("IsApproved"))%></a>
			        </Template>
			    </obout:GridTemplate>
			    
			   
                
                  <obout:GridTemplate runat="server" ID="tplApprovalStatus" ControlID="" ControlPropertyName="" >
                    <Template>
                        <%#ParseApprovalStatus(Container.DataItem.Item("IsApproved"),Container.DataItem.Item("ApprovedBy"))%>
                    </Template>
                </obout:GridTemplate>
                
                <obout:GridTemplate runat="server" ID="TP_FromDateFormat" ControlID="" ControlPropertyName="">
			                    <Template>
			                        <%#ParseDateTime(Container.DataItem.Item("FromDate"))%>
			                    </Template>
			                </obout:GridTemplate>
			                
			                 <obout:GridTemplate runat="server" ID="TP_ToDateFormat" ControlID="" ControlPropertyName="">
			                    <Template>
			                        <%#ParseDateTime(Container.DataItem.Item("ToDate"))%>
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
                        <td >
                            <fieldset>
                                <legend>Employee Leave Entries</legend>
                                <table>
                                    <tr>
                                        <td style="width: 528px">
                                            Employee Name&nbsp;
                                            <asp:TextBox ID="txt_EmployeeName" runat="server" Width="422px" Enabled="false"  ></asp:TextBox>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                    <td>
                    <table>
                    <tr>
                    <td>
                    <asp:RadioButtonList ID="rbtn_LeaveDays" runat="server" RepeatDirection="Horizontal" Enabled="false"  >
                        <asp:ListItem Value="FullDay" Selected="True" onclick="AssignLeaveDays_onClick();">Full Day</asp:ListItem>
                        <asp:ListItem Value="3/4Day"  onclick="AssignLeaveDays_onClick();">3/4 Day</asp:ListItem>
                        <asp:ListItem Value="HalfDay"  onclick="AssignLeaveDays_onClick();">1/2 Day</asp:ListItem>
                        <asp:ListItem Value="QuarterDay"  onclick="AssignLeaveDays_onClick();">1/4 Day</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                     <asp:CheckBox ID="chk_IsApproved" runat="server" Text="Is Approved" Enabled="false"       onclick="IsApproved_CheckedChange();" />
                    </td>
                    </tr>
                    </table>
                    
                    </td>
                    </tr>
                                     <tr>
                                     <td style="width: 528px">
                                            From Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <select ID="drp_FromDateday"  runat="server" disabled="disabled"  Width="46px">
                                            </select>&nbsp;&nbsp;<select ID="drp_FromDatemonth" disabled="disabled"  runat="server" 
                                                EnableViewState="true" Width="48px">
                                            </select>&nbsp;&nbsp;<select ID="drp_FromDateYear" disabled="disabled"  runat="server" 
                                                EnableViewState="true" Width="69px">
                                            </select>&nbsp;Approved By&nbsp;<asp:TextBox ID="txt_ApprovedBy" Enabled="false"  runat="server" Width="150px"    ></asp:TextBox>
                                            
                                        </td>
                                    </tr>
                                     <tr>
                                        <td style="width: 528px">
                                            To Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <select ID="drp_ToDateday" disabled="disabled"    runat="server"  Width="46px">
                                            </select>&nbsp;&nbsp;<select ID="drp_ToDatemonth" disabled="disabled"  runat="server" 
                                                EnableViewState="true" Width="48px" >
                                            </select>&nbsp;&nbsp;<select ID="drp_ToDateYear"  disabled="disabled" runat="server" 
                                                EnableViewState="true" Width="69px"  >
                                            </select>&nbsp;Leave Type&nbsp;&nbsp;&nbsp;<select ID="drp_LeaveType" disabled="disabled"  runat="server" 
                                                 style="width: 150px">
                                            </select>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td style="width: 528px;height:60px;">
                                        <table>
                                        <tr>
                                        <td>
                                        Remarks&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td>
                                        <asp:TextBox ID="txt_Remarks" runat="server" TextMode="MultiLine" Enabled="false"   Width="395px" Height="100px"></asp:TextBox>
                                        </td>
                                        </tr>
                                        </table>
                                            <asp:HiddenField ID="hdn_EmployeeLeaveEntryId" runat="server" />
                                            <asp:HiddenField ID="hdn_EmployeeCode" runat="server" />
                                            <asp:HiddenField ID="hdn_FromDate" runat="server" />
                                            <asp:HiddenField ID="hdn_ToDate" runat="server" />
                                            <asp:HiddenField ID="hdn_LeaveCode" runat="server" />
                                        </td>
                                     </tr>
                                    <tr>
                                        <td style="width: 528px">
                                            Created Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:TextBox ID="txt_CreatedDate" ReadOnly="true" Width="145px" runat="server"></asp:TextBox>
                                            &nbsp;Last Modified Date&nbsp;
                                            <asp:TextBox ID="txt_ModifiedDate" ReadOnly="true" Width="145px" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </fieldset>
                        </td>
                    </tr>
                <tr>
                    <td align="right">
                                    <input id="btn_close" type="button" value="Close" onclick="closeFlyout();" />
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
         Function CheckPermissionsEdit(ByVal Action As String) As String
             If Not Session.Item("LoginEmployee") Is Nothing Then
                 If CType(Session("LoginEmployee"), eTimeTrackLiteLibrary.Data.Master.Employee).EmployeeDepartmentList.Count > 0 Then
                     Return Action
                 End If
             End If
             Return ""
         End Function
         
         Function ParseApprovalStatus(ByVal IsApproved As String,ApprovedBy as String)
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
         
         Function DeleteLeave(ByVal IsApproved As String)
             If IsApproved = "-1" Then
                 Return ""
             Else
                 Return "Delete"
             End If
         End Function
         
         Function ParseDateTime(ByVal DateValue As Date) As String
             Return DateValue.ToString("yyyy-MM-dd")
         End Function
    </script>
    
    <script type="text/javascript">
    
        var ControlAction;
        function AssignLeaveDays_onClick()
            {
                 
            }
            
           
            
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
	            document.getElementById("<%=hdn_EmployeeLeaveEntryId.ClientID %>").value = '0';
		    }
		    
		    function EnableDisableControls()
		        {
		                
		        }
		        
		        
		        
		    
		    
		function closeFlyout() 
		    {
		        <%=Flyout1.getClientID()%>.Close();
		    }
		    
		    function populateEditControls(iRecordIndex) 
		    {	
		            var FromDate=Dg_EmployeeLeaveEntries.Rows[iRecordIndex].Cells[16].Value;
		            var ToDate=Dg_EmployeeLeaveEntries.Rows[iRecordIndex].Cells[17].Value;
		            
		            var EmployeeName=Dg_EmployeeLeaveEntries.Rows[iRecordIndex].Cells[4].Value;
		            var LeaveTypeId=Dg_EmployeeLeaveEntries.Rows[iRecordIndex].Cells[10].Value;
        		    var ApprovedBy=Dg_EmployeeLeaveEntries.Rows[iRecordIndex].Cells[12].Value;
		            var IsApproved=Dg_EmployeeLeaveEntries.Rows[iRecordIndex].Cells[9].Value;
		            var Remarks=Dg_EmployeeLeaveEntries.Rows[iRecordIndex].Cells[13].Value.replace(/<BR>/gi,'\n');
		            var LeaveStatus=Dg_EmployeeLeaveEntries.Rows[iRecordIndex].Cells[6].Value;

                    var CreatedDate=Dg_EmployeeLeaveEntries.Rows[iRecordIndex].Cells[18].Value;
                    var ModifiedDate=Dg_EmployeeLeaveEntries.Rows[iRecordIndex].Cells[19].Value;


	                SetValueInDropDown(document.getElementById("<%=drp_ToDateday.ClientID %>"),document.getElementById("<%=drp_ToDatemonth.ClientID %>"),document.getElementById("<%=drp_ToDateYear.ClientID %>"),ToDate);
	                SetValueInDropDown(document.getElementById("<%=drp_FromDateday.ClientID %>"),document.getElementById("<%=drp_FromDatemonth.ClientID %>"),document.getElementById("<%=drp_FromDateYear.ClientID %>"),FromDate);
                    document.getElementById( "<%=txt_EmployeeName.ClientID %>").value =EmployeeName;
                    if(IsApproved=='-1')
                     {
                        document.getElementById( "<%=chk_IsApproved.ClientID %>").checked=true;
                     }   
                    else
                    {
                        document.getElementById( "<%=chk_IsApproved.ClientID %>").checked=false;
                     }   
                     
                    document.getElementById( "<%=txt_ApprovedBy.ClientID %>").value=ApprovedBy;
                    document.getElementById( "<%=txt_Remarks.ClientID %>").value=Remarks;
                    document.getElementById( "<%=drp_LeaveType.ClientID %>").value=LeaveTypeId;
                
                  if(LeaveStatus=='FullDay')
                  document.getElementById("Flyout1_rbtn_LeaveDays_0").checked=true;
                  
                  else if(LeaveStatus=='3/4Day')
                  document.getElementById("Flyout1_rbtn_LeaveDays_1").checked=true;
                  
                  else if(LeaveStatus=='HalfDay')
                  document.getElementById("Flyout1_rbtn_LeaveDays_2").checked=true;
                  
                  else if(LeaveStatus=='QuarterDay')
                  document.getElementById("Flyout1_rbtn_LeaveDays_3").checked=true;

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
		    
		   
		    
		      function SetValueInDropDown(ddobject,mmobject,yyobject,value)
		    {
		        var Day=value.split('-')[2].replace(/^\s+|\s+$/g,"");
                var Month=value.split('-')[1].replace(/^\s+|\s+$/g,"");
                var Year=value.split('-')[0].replace(/^\s+|\s+$/g,"");
                ddobject.value=Day;
                mmobject.value=Month;
                yyobject.value=Year;
		    }
		    
		   
		      
		    
		     
		     function IsApproved_CheckedChange()
                {
                    var object=document.getElementById('<%=chk_IsApproved.ClientID %>');
                    if(object.checked)
                        document.getElementById('<%=txt_ApprovedBy.ClientID %>').disabled=false;
                    else
                        document.getElementById('<%=txt_ApprovedBy.ClientID %>').disabled=true;
                }
		
    </script>
</body>
</html>