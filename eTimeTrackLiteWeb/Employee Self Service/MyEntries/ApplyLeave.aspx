<%@ page language="VB" autoeventwireup="false" inherits="ApplyLeave, App_Web_bgemufol" enableeventvalidation="false" %>

<%@ Register Assembly="obout_Window_NET" Namespace="OboutInc.Window" TagPrefix="owd" %>
<%@ Register TagPrefix="obout" Namespace="Obout.Grid" Assembly="obout_Grid_NET" %>
<%@ Register TagPrefix="obout" Namespace="OboutInc.Flyout2" Assembly="obout_Flyout2_NET" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
    <title>Untitled Page</title>
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
 
</head>
<body style=" background-repeat: no-repeat;
    background-position-x: right; background-position-y: top;" onload="AssignLeaveDays_onClick();">
    <form id="form1" runat="server">
        <table cellpadding="2">
            <tr>
                <td style="height: 381px">
                    <div>
                        <owd:Window ID="wnd_ApplyLeave" runat="server" Height="400" StyleFolder="~/Styles/mainwindow/blue"
                            Title="Leave Request Form" Width="550" IsResizable="true" ShowStatusBar="false"
                            Left="200" Top="80">
                            <table class="rowEditTable" width="100%" height="100%" style="border: none;">
                                <tr>
                                    <td>
                                        <fieldset>
                                            <legend>Leave Request Form</legend>
                                            <table>
                                                <tr>
                                                    <td align="right">
                                                        Employee Name
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txt_EmployeeName" Enabled="False" runat="server" Width="208px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        Leave Type
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="drp_LeaveType" runat="server" Width="210px" onchange="drp_Leave_OnChange();">
                                                        </asp:DropDownList> &nbsp; 
                                                        <asp:Label ID="Label2" runat="server" Text="Leave Balance:"></asp:Label>&nbsp; <asp:Label ID="lblBalance" runat="server" Text="0"></asp:Label>
                                                        
                                                    </td>
                                                    
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <asp:RadioButtonList ID="rbtn_LeaveDays" runat="server" RepeatDirection="Horizontal">
                                                            <asp:ListItem Value="FullDay" Selected="True">Full Day</asp:ListItem>
                                                            <asp:ListItem Value="3/4Day">3/4 Day</asp:ListItem>
                                                            <asp:ListItem Value="HalfDay">1/2 Day</asp:ListItem>
                                                            <asp:ListItem Value="QuarterDay">1/4 Day</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        From Date
                                                    </td>
                                                    <td>
                                                        <select id="drp_FromDateday" runat="server" width="46px">
                                                        </select>
                                                        &nbsp;&nbsp;<select id="drp_FromDatemonth" runat="server" width="48px">
                                                        </select>&nbsp;&nbsp;<select id="drp_FromDateYear" runat="server" width="69px">
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        To Date
                                                    </td>
                                                    <td>
                                                        <select id="drp_ToDateday" runat="server" width="46px">
                                                        </select>
                                                        &nbsp;&nbsp;<select id="drp_ToDatemonth" runat="server" width="48px">
                                                        </select>&nbsp;&nbsp;<select id="drp_ToDateYear" runat="server" width="69px">
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        Remarks
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txt_Remarks" runat="server" TextMode="MultiLine" Width="415px" Height="100px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        Send Mail To
                                                    </td>
                                                    <td>
                                                        <asp:ListBox ID="drp_Departments" SelectionMode="Multiple" runat="server" Width="228px">
                                                        </asp:ListBox>
                                                    </td>
                                                </tr>
                                            </table>
                                        </fieldset>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Label runat="server" ForeColor="Red" EnableViewState="False" ID="Lbl_InvalidError"></asp:Label>
                                        <asp:Button ID="btn_Save" runat="server" Text="Apply"></asp:Button>&nbsp;&nbsp;
                                        <input id="btn_Cancel" type="button" value="Close" onclick="wnd_ApplyLeave.Close();" />
                                    </td>
                                </tr>
                               
                             
                            </table>
                            
                        </owd:Window>
                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    </div>
                </td>
            </tr>
            
        </table>
        <br />
        
        <br />
        <br />
        <asp:Panel ID="Panel1"  runat="server" style="display: none">
        <asp:GridView ID="gvrLeaves" runat="server" AutoGenerateColumns="False" CellPadding="4"
            ForeColor="#333333" GridLines="None">
            <Columns>
                <asp:BoundField DataField="LeaveTypeId" HeaderText="LeaveTypeId" />
                <asp:BoundField DataField="LeaveTypeSName" HeaderText="LeaveTypeSName" />
                <asp:BoundField DataField="LeaveBalance" HeaderText="LeaveBalance" />
            </Columns>
            <RowStyle BackColor="#E3EAEB" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        </asp:Panel>
        
        
                        
         
        <asp:HiddenField ID="hdn_EmployeeLeaveEntryId" runat="server" />
        <asp:HiddenField ID="hdn_EmployeeId" runat="server" />
        <asp:HiddenField ID="hdn_EmployeeName" runat="server" />
        <asp:HiddenField ID="hdn_IsDepartmentHead" runat="server" />
        <asp:HiddenField ID="hdn_DepartmentHeadId" runat="server" />
        <asp:HiddenField ID="hdn_LastApprovedStatus" runat="server" />
        <asp:HiddenField ID="hdn_DepartmentHeadIds" runat="server" />
    </form>
</body>
</html>

<script type="text/javascript">

 function drp_Leave_OnChange()
		    {
                                    
        		document.getElementById('Panel1').style.display = "block";
		        var grid = document.getElementById("<%=gvrLeaves.ClientID %>");
                var row = grid.rows.length;
                

                for (var i = 1; i < row; i++) 
                {
                     var LeaveType=document.getElementById("<%=drp_LeaveType.ClientId %>").value;
                     var currentRowValue = grid.rows[i].cells[0].innerText;
                     var BalanceValue = grid.rows[i].cells[2].innerText;
                   
                     if(LeaveType==currentRowValue)
                     {
                       document.getElementById("<%=lblBalance.ClientId %>").innerHTML=BalanceValue;
                     }
                    
                }
		        document.getElementById('Panel1').style.display = "none";    
		    }
    
        function AssignLeaveDays_onClick()
            {
                 if(document.getElementById("wnd_ApplyLeave_rbtn_LeaveDays_0").checked)
                   {
                       document.getElementById('<%=drp_ToDateday.ClientID %>').disabled=false;
                       document.getElementById('<%=drp_ToDatemonth.ClientID %>').disabled=false;
                       document.getElementById('<%=drp_ToDateYear.ClientID %>').disabled=false;
                   }
                   
                   else if(document.getElementById("wnd_ApplyLeave_rbtn_LeaveDays_1").checked || document.getElementById("wnd_ApplyLeave_rbtn_LeaveDays_2").checked || document.getElementById("wnd_ApplyLeave_rbtn_LeaveDays_3").checked)
                   {
                       document.getElementById('<%=drp_ToDateday.ClientID %>').disabled=true;
                       document.getElementById('<%=drp_ToDatemonth.ClientID %>').disabled=true;
                       document.getElementById('<%=drp_ToDateYear.ClientID %>').disabled=true;
                   }
            }
		    
		     function SetValueInDropDown(ddobject,mmobject,yyobject,value)
		            {
		                var myDate = new Date(value);
		                var Day=myDate.getDate();
		                var Month=myDate.getMonth()+1;
		                var Year=myDate.getFullYear();
		                ddobject.value='';
		                mmobject.value='';
		                yyobject.value='';
		                ddobject.value=Day;
		                mmobject.value=Month;
		                yyobject.value=Year;
		            }
                
                function popup(url) 
                    {
                     var width  = 620;
                     var height = 400;
                     var left   = (screen.width  - width)/2;
                     var top    = (screen.height - height)/2;
                     var params = 'width='+width+', height='+height;
                     params += ', top='+top+', left='+left;
                     params += ', directories=no';
                     params += ', location=no';
                     params += ', menubar=no';
                     params += ', resizable=no';
                     params += ', scrollbars=no';
                     params += ', status=no';
                     params += ', toolbar=no';
                     newwin=window.open(url,'windowname5', params);
                     if (window.focus) {newwin.focus()}
                     return false;
                    }

		
</script>

