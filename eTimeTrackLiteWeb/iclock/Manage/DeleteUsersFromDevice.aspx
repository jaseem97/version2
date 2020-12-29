<%@ page language="VB" autoeventwireup="false" inherits="Manage_DeleteUsersFromDevice, eTimeTrackWeb_deploy" enableEventValidation="false" %>
<%@ Register TagPrefix="obout" Namespace="Obout.Grid" Assembly="obout_Grid_NET" %>
<%@ Register TagPrefix="obout" Namespace="OboutInc.Flyout2" Assembly="obout_Flyout2_NET" %>
<%@ Register TagPrefix="uctrl" Src="~/Header.ascx" TagName="header" %>
<%@ Register TagPrefix="owd" Namespace="OboutInc.Window" Assembly="obout_Window_NET" %>
<%@ Register TagPrefix="oem" Namespace="OboutInc.EasyMenu_Pro" Assembly="obout_EasyMenu_Pro" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>

    <script type="text/javascript">
		    function selectRecordFromGrid() {
                var iIndex = document.getElementById("txtIndex").value;
                if(iIndex != "") {
                    Dg_Employees.selectRecord(iIndex);
                }
            }
            function deselectRecordFromGrid() {
                var iIndex = document.getElementById("txtIndex").value;
                if(iIndex != "") {
                    Dg_Employees.deselectRecord(iIndex);
                }
            }

            function SelectDeselect(oCheckbox) {
                var oElement = oCheckbox.parentNode;
                while(oElement != null && oElement.nodeName != "TR") {
                    oElement = oElement.parentNode;
                }

                if(oElement != null) {
                    // oElement represents the row where the clicked      
                            // checkbox reside
                    var oContainer = oElement.parentNode;
                    var iRecordIndex = -1;
                    for(var i=0; i<oContainer.childNodes.length; i++) {
                        if(oContainer.childNodes[i] == oElement) {
                            iRecordIndex = i;
                            break;
                        }
                    }
                   
                    if(iRecordIndex != -1) {
                        if(oCheckbox.checked == true) {
                            // select the record
                            Dg_Employees.selectRecord(iRecordIndex);
                        } else {
                            // deselect the record
                            Dg_Employees.deselectRecord(iRecordIndex);
                        }
                    }
                }
            }

            function stopEventPropagation(e) {
                if(!e){e=window.event;}
	            if(!e){return false;}
	            e.cancelBubble=true;
	            if(e.stopPropagation){e.stopPropagation();}
            }

            function assignEventsToCheckboxes() {
            
                // disable the record selection feature by clicking on the records
                var sRecordsIds = Dg_Employees.getRecordsIds();
                if (sRecordsIds != null && sRecordsIds.length > 0) {
                    var arrRecordsIds = sRecordsIds.split(",");
                    for (var i = 0; i < arrRecordsIds.length; i++) {
                        var oRecord = document.getElementById(arrRecordsIds[i]);
                        oRecord.onmousedown = function (e) { stopEventPropagation(e); };
                        oRecord.onclick = function (e) { stopEventPropagation(e); };
                    }

                    // populate the previously checked checkboxes
                    var arrPageSelectedRecords = Dg_Employees.PageSelectedRecords;

                    for (var i = 0; i < arrPageSelectedRecords.length; i++) {
                        var oCheckbox = document.getElementById("chk_grid_" + arrPageSelectedRecords[i].EmployeeId);
                        oCheckbox.checked = true;
                    }

                    // enable the record selection feature by selecting the checkboxes
                    var arrCheckboxes = document.getElementsByTagName("INPUT");
                    for (var i = 0; i < arrCheckboxes.length; i++) {
                        if (arrCheckboxes[i].type == "checkbox" && arrCheckboxes[i].id.indexOf("chk_grid_") == 0) {
                            arrCheckboxes[i].onmousedown = function (e) { stopEventPropagation(e); };
                            arrCheckboxes[i].onclick = function (e) { SelectDeselect(this); stopEventPropagation(e); };
                        }
                    }
                }
            }
            
            // check/uncheck all rows.
			function checkAll(){
			    var newState = document.getElementById("chk_all").checked;
			    
			    var inputArr = document.getElementsByTagName("INPUT");
			    for ( i=0; i< inputArr.length; i++){
			        var e = inputArr[i];
			        if ( e && e.type == "checkbox" && e.id != null && e.id.indexOf("chk_grid_") == 0 ){
			            e.checked = newState;
			            
			            var oElement = e.parentNode.parentNode.parentNode;
			            var oContainer = oElement.parentNode;
			            if ( oElement && oContainer){
                            var iRecordIndex = -1;
                            for(var j=0; j<oContainer.childNodes.length; j++) {
                                if(oContainer.childNodes[j] == oElement) {
                                    iRecordIndex = j;
                                    break;
                                }
                            }
                           
                            if(iRecordIndex != -1) {
			                    if(newState == true) {
                                    // select the record
                                    Dg_Employees.selectRecord(iRecordIndex);
                                } else {
                                    // deselect the record
                                    Dg_Employees.deselectRecord(iRecordIndex);
                                }
                            }
                        }
			        }
			    }
			}
          
    </script>

    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body background="../Images/bck1.gif" style="background-repeat: no-repeat; background-position-x: right;
    background-position-y: top;">
    <form id="form1" runat="server">
        <div>
            <uctrl:header ID="MyHeader" runat="server" />
            <table cellpadding="0" cellspacing="0" style="border-right: gray 1px solid; border-top: gray 1px solid;
                border-left: gray 1px solid; border-bottom: gray 1px solid;">
                <tr style="font-weight: bold; font-size: 14px; background-color: lightsteelblue;
                    padding-left: 5px; padding-top: 3px; padding-bottom: 3px; color: white;">
                    <td id="Td1" runat="server" colspan="2" style="font-weight: bold; font-size: 14px; background-color: lightsteelblue;
                        padding: 5px; color: white;">
                        Delete Users From <b>
                            <%=Request.QueryString("DeviceName")%>
                        </b>
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
                            <obout:Grid ID="Dg_Employees" runat="server" CallbackMode="true" Serialize="false"
                                AutoGenerateColumns="false" FolderStyle="~/styles/grid/styles/premiere_blue"
                                AllowMultiRecordDeleting="true" AllowAddingRecords="false" PageSize="10" AllowMultiRecordSelection="false"
                                GenerateRecordIds="true" AllowFiltering="true">
                                <ClientSideEvents OnClientCallback="assignEventsToCheckboxes" />
                                <Columns>
                                    <obout:Column ID="Column10" Width="50" HeaderText="Select" runat="server">
                                        <TemplateSettings TemplateId="CheckTemplate" HeaderTemplateId="CheckAllTemplate" />
                                    </obout:Column>
                                    <obout:Column ID="Column2" Align="left" DataField="EmployeeId" Visible="false" Width="100"
                                        HeaderText="ShiftId" runat="server" />
                                    <obout:Column ID="Column11" DataField="EmployeeCodeInDevice" Visible="true" Width="120"
                                        HeaderText="Device Code" runat="server" />
                                    <obout:Column ID="Column1" DataField="EmployeeCode" Visible="true" Width="110" HeaderText="Emp Code"
                                        runat="server" />
                                    <obout:Column ID="Column7" DataField="EmployeeName" Visible="true" Width="130" HeaderText="Emp Name"
                                        runat="server" />
                                    <obout:Column ID="Column3" DataField="CompanySName" Visible="true" Width="130" HeaderText="Company"
                                        runat="server" />
                                    <obout:Column ID="Column4" DataField="DepartmentSName" Visible="true" Width="120"
                                        HeaderText="Department" runat="server" />
                                    <obout:Column ID="Column39" DataField="Location" Visible="true" Width="130" HeaderText="Location"
                                        runat="server" />
                                    <obout:Column ID="Column5" DataField="EmployeeDeviceGroup" Visible="true" Width="100"
                                        HeaderText="Group Id" runat="server" />
                                    <obout:Column ID="Column6" DataField="EmployeeRFIDNumber" Visible="true" Width="120"
                                        HeaderText="Card Number" runat="server" />
                                    <obout:Column ID="Column8"  Visible="true" Width="120"
                                        HeaderText="Password" runat="server" >
                                          <TemplateSettings TemplateId="DevicePassword_Template" />
                                     </obout:Column>
                                    <obout:Column ID="Column9" DataField="FPCount" Visible="true" Width="100" HeaderText="FingerPrint"
                                        runat="server" />
                                    <obout:Column ID="Column12" DataField="DevicePassword" Visible="false" Width="120"
                                        HeaderText="Card Number" runat="server" />
                                    <obout:Column ID="Column14" DataField="PalmCount" Visible="true" Width="80" HeaderText="Palm"
                                        runat="server">
                                        <TemplateSettings TemplateId="PalmCount_Template" />
                                    </obout:Column>
                                    <obout:Column ID="Column15" DataField="FaceCount" Visible="true" Width="80" HeaderText="Face"
                                        runat="server">
                                        <TemplateSettings TemplateId="FaceCount_Template" />
                                    </obout:Column>
                                </Columns>
                                <Templates>
                                    <obout:GridTemplate runat="server" ID="CheckTemplate">
                                        <Template>
                                            <input type="checkbox" id="chk_grid_<%# Container.DataItem("EmployeeId") %>" />
                                        </Template>
                                    </obout:GridTemplate>
                                    <obout:GridTemplate runat="server" ID="CheckAllTemplate">
                                        <Template>
                                            <input type="checkbox" id="chk_all" onclick="checkAll();" />
                                        </Template>
                                    </obout:GridTemplate>
                                    
                                     <obout:GridTemplate runat="server" ID="DevicePassword_Template" ControlID="" ControlPropertyName="">
                                    <Template>
                                        <%#ParseEmployeeDevicePassword(Container.DataItem.Item("DevicePassword"))%>
                                    </Template>
                                </obout:GridTemplate>

                                 <obout:GridTemplate runat="server" ID="PalmCount_Template" ControlID="" ControlPropertyName="">
                                        <Template>
                                            <%#ParseEmployeePalmCount(Container.DataItem.Item("PalmCount"))%>
                                        </Template>
                                    </obout:GridTemplate>

                                     <obout:GridTemplate runat="server" ID="FaceCount_Template" ControlID="" ControlPropertyName="">
                                        <Template>
                                            <%#ParseEmployeeFaceCount(Container.DataItem.Item("FaceCount"))%>
                                        </Template>
                                    </obout:GridTemplate>
                                
                                
                                </Templates>
                            </obout:Grid>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td align="right"  colspan="2" style=" font-size: 12px; background-color: lightsteelblue;  height: 32px; text-align: center;">
                        &nbsp;
                        <asp:Button ID="btn_Delete" runat="server" Text="Delete" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

<script runat="server">
 Function ParseEmployeeDevicePassword(ByVal DevicePassword As String) as String
            Try
             If DevicePassword = "" Or DevicePassword = "0" Then
                        return "No"
                    Else
                        return "Yes"
                    End If
                
            Catch ex As Exception
                Return ""
            End Try
    End Function
    
    Function ParseEmployeePalmCount(ByVal PalmCount As String) As String
        Try
            If CInt(PalmCount) > 0 Then
                Return "1"
            Else
                Return "0"
            End If
                
        Catch ex As Exception
            Return "0"
        End Try
    End Function
    
    Function ParseEmployeeFaceCount(ByVal FaceCount As String) As String
        Try
            If CInt(FaceCount) > 0 Then
                Return "1"
            Else
                Return "0"
            End If
                
        Catch ex As Exception
            Return "0"
        End Try
    End Function
    
</script>

<script type="text/javascript">

var oldonload = window.onload;
if (typeof window.onload != 'function') {
    window.onload = assignEventsToCheckboxes;
} else {
    window.onload = function() {
    if (oldonload) {
        oldonload();
    }
    assignEventsToCheckboxes();
    }
}
</script>

