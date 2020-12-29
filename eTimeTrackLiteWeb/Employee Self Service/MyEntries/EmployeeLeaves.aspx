<%@ page language="VB" autoeventwireup="false" inherits="Manage_EmployeeLeaves, App_Web_bgemufol" %>
<%@ Register TagPrefix="obout" Namespace="Obout.Grid" Assembly="obout_Grid_NET" %>
<%@ Register TagPrefix="obout" Namespace="OboutInc.Flyout2" Assembly="obout_Flyout2_NET"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script type="text/javascript">	
	// Client-Side Events for Delete
	
	
	function OnInsert(record) 
	{
	}
	
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <table cellpadding="0" cellspacing="0" style="border-right: gray 1px solid; border-top: gray 1px solid;
                border-left: gray 1px solid; border-bottom: gray 1px solid;">
                <tr style="font-weight: bold; font-size: 14px; background-color: lightsteelblue;
                    padding-left: 5px; padding-top: 3px; padding-bottom: 3px; color: white;">
                    <td style="font-weight: bold;">
                        Employee Leaves&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label runat="server" ID="lbl_EmpName" style="font-family:Verdana; font-size: 13px; color: #0c416f; font-weight:normal;"></asp:Label>
                    </td>
                    <td align="right">
                    Year&nbsp;&nbsp;<asp:DropDownList ID="drp_Year" runat="server" AutoPostBack="false" onchange="Dg_EmployeeLeaves.refresh();">
                    </asp:DropDownList>&nbsp;&nbsp;
                    </td>
                </tr>
                
                <tr style="padding-right: 5px; padding-left: 1px; padding-bottom: 1px; padding-top: 1px; background-color: lightsteelblue;">
                    <td colspan="2" >
                    <hr />
                        <obout:Grid ID="Dg_EmployeeLeaves" runat="server" CallbackMode="true" EnableRecordHover="true" 
                            KeepSelectedRecords="true" Serialize="true" AutoGenerateColumns="false" FolderStyle="~/styles/grid/styles/premiere_blue"
                            AllowAddingRecords="true" ShowLoadingMessage="false" OnRebind="RebindGrid" OnInsertCommand="InsertRecord"
                            AllowFiltering="true">
                            <ClientSideEvents OnClientInsert="OnInsert" />
                            <TemplateSettings NewRecord_TemplateId="tplAddBtn" />
                            <Columns>
                                <obout:Column ID="Column0" DataField="LeaveTypeId" Visible="False" Width="300" HeaderText="LeaveTypeId"
                                    ConvertEmptyStringToNull="False" Index="0" />
                                <obout:Column ID="Column1" DataField="LeaveTypeSName" SortOrder="Asc" Width="135"
                                    HeaderText="LeaveType" ConvertEmptyStringToNull="False" Index="1" />
                                <obout:Column ID="Column2" DataField="Year" Width="80" HeaderText="Year" ConvertEmptyStringToNull="False"
                                    Index="2" />
                                <obout:Column ID="Column3" DataField="YearlyLimit" Width="165" HeaderText="Allowed Leaves(Std.)"
                                    ConvertEmptyStringToNull="False" Index="3" />
                                <obout:Column ID="Column4" DataField="ActualLeaves" Width="180" HeaderText="Allowed Leaves(Actual)"
                                    ConvertEmptyStringToNull="False" Index="4" />
                                <obout:Column ID="Column5" DataField="LeaveTaken" Width="120" HeaderText="Leave Taken"
                                    ConvertEmptyStringToNull="False" Index="5" />
                                <obout:Column ConvertEmptyStringToNull="False" DataField="LeaveBalance" HeaderText="Leave Balance" Index="6">
                                </obout:Column>
                                <obout:Column ID="Column6" DataField="MarkedAs" SortOrder="Asc" Width="130"
                                    HeaderText="Considered As" ConvertEmptyStringToNull="False" Index="7" />
                            </Columns>
                        </obout:Grid>
	
	</td>
                </tr>
            </table>	
            
            
			
    </div>
    </form>
</body>
</html>
