<%@ page language="VB" autoeventwireup="false" inherits="MyEntries_ShiftCalendarShedular, App_Web_fzgtou2n" enableeventvalidation="false" %>

<%@ Register TagPrefix="obout" Namespace="Obout.Grid" Assembly="obout_Grid_NET" %>
<%@ Register TagPrefix="obout" Namespace="OboutInc.Flyout2" Assembly="obout_Flyout2_NET" %>
<%@ Register Assembly="obout_Window_NET" Namespace="OboutInc.Window" TagPrefix="owd" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
		               
<body  onload="LoadShiftOrShiftCalndar();">
    <form id="form1" runat="server">
        <div>
            <table cellpadding="0" cellspacing="0" style="border-right: gray 1px solid; border-top: gray 1px solid;
                border-left: gray 1px solid; border-bottom: gray 1px solid;">
                <tr style=" background-image: url(../styles/grid/styles/style_12/record_group_header.gif); padding-left: 5px; padding-top: 3px; padding-bottom: 3px; color: white; background-repeat:repeat-x;">
                    <td style="height: 26px" >
                        &nbsp;&nbsp;<b>Employee Name:</b>&nbsp;&nbsp;<asp:DropDownList
                            ID="drp_Employees" runat="server" AutoPostBack="True">
                        </asp:DropDownList></td>
                    <td align="right" runat="server" id="td_DeviceCommand" style="height: 26px" >
                        <asp:Label ID="Label2" runat="server" Text="Month"></asp:Label>&nbsp;<asp:DropDownList
                            ID="drp_Month" runat="server">
                        </asp:DropDownList>&nbsp;&nbsp;Year&nbsp;<asp:DropDownList ID="drp_Year" runat="server" />
                        &nbsp;&nbsp;&nbsp;<asp:Button ID="btn_OK" runat="server" Text="OK" />&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2" width="100%">
                        <asp:PlaceHolder ID="plchld_shiftCalender" runat="server"></asp:PlaceHolder>
                    </td>
                </tr>
            </table>
            
            <owd:Window ID="wnd_Shift" runat="server" ShowCloseButton="true" VisibleOnLoad="false"
                Left="400" Top="200" Height="170" Width="300" StyleFolder="~/Styles/mainwindow/blue"
                Title="Assign Shift" IsModal="False" ShowStatusBar="False" MinHeight="125" MinWidth="200">
                <table class="rowEditTable" width="100%"  style="border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;">
                    <tr>
                        <td>
                            <fieldset>
                                <legend>Shift</legend>
                                <table width="100%"  class="Table" style="border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;">
                                
                                 <tr>
                                        <td>
                                            Shift Type</td>
                                        <td>
                                             <asp:RadioButtonList ID="rbtnlst_ShiftType" EnableViewState="true" RepeatDirection="Horizontal"
                                                runat="server">
                                                <asp:ListItem Selected="True" onclick="LoadShiftOrShiftCalndar();">Shift</asp:ListItem>
                                                <asp:ListItem onclick="LoadShiftOrShiftCalndar();">Shift Calender</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    
                                    
                                    <tr>
                                        <td>
                                            Shift Name</td>
                                        <td>
                                            <asp:DropDownList ID="drp_Shift" runat="server"  CssClass="WebControls" >
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Date</td>
                                        <td>
                                            <asp:DropDownList ID="drp_Shiftday" Enabled="False" runat="server"  CssClass="WebControls" >
                                            </asp:DropDownList>&nbsp;&nbsp;<asp:DropDownList ID="drp_Shiftmonth" runat="server"
                                                Enabled="False"  CssClass="WebControls" >
                                            </asp:DropDownList>&nbsp;&nbsp;<asp:DropDownList ID="drp_ShiftYear" runat="server"
                                                Enabled="False"  CssClass="WebControls" >
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </fieldset>
                        </td>
                    </tr>
                    
                   
                    <tr>
                        <td align="right" >
                            <input id="btn_ShiftOk" runat="server" onserverclick="btn_ShiftOk_onserverclick" type="button" value="OK" onclick="ShiftOk_Onclick();"   class="WebControls" />&nbsp;&nbsp;&nbsp;&nbsp;<input
                                id="btn_ShiftCancel" type="button" value="Close" onclick="javascript:closeShiftWindow();"   class="WebControls" />
                        </td>
                    </tr>
                    
                     <tr>
                    <td>
                        <asp:Label ID="lbl_Msg" runat="server" Text="&nbsp;"> </asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <asp:HiddenField ID="Hdn_ShiftIds" runat="server" />
                            <asp:HiddenField ID="Hdn_ShiftDates" runat="server" />
                            <asp:HiddenField ID="HDN_IsUpdateMade" runat="server" />
                            <asp:HiddenField ID="Hdn_CompanyDepartmentShiftId" runat="server" />
                            <asp:HiddenField ID="hdn_ShifttsIds" runat="server" />
                            <asp:HiddenField ID="hdn_Shiftts" runat="server" />
                            <asp:HiddenField ID="hdn_ShifttCalendarIds" runat="server" />
                            <asp:HiddenField ID="hdn_ShifttCalendar" runat="server" />
                            <asp:HiddenField ID="Hdn_ShiftDate" runat="server" />
                            <asp:HiddenField ID="Hdn_ShiftId" runat="server" />
                        </td>
                    </tr>
                </table>
            </owd:Window>
        </div>
    </form>

    <script type="text/javascript">
        var IsChangesMade=false;
        var objTableCell;
        function closeShiftWindow()
		     {
		         try
		         {
		            wnd_Shift.Close();
		         }
		         catch(ex)
		         {
		            alert(ex.message);
		         }
		    }
		    
		       
		    function ShowAddWindow() {	
		        try {
		           wnd_Shift.Open();
                } catch(ex){
					alert(ex);
				}
		    }

		
		      function MonthCell_OnClick(objTD,ShiftDate)
		        {
		                document.getElementById("<%=lbl_Msg.ClientID %>").innerHTML='&nbsp;'
		               var Day=ShiftDate.split('-')[2];
		               var Month=ShiftDate.split('-')[1];
		               var Year=ShiftDate.split('-')[0];
		               var ShiftId=objTD.id.split("_")[0];
		               var ShiftName=objTD.innerText;
		               document.getElementById("<%=drp_Shiftday.ClientID %>").value=Day;
                       document.getElementById("<%=drp_Shiftmonth.ClientID %>").value=Month;
                       document.getElementById("<%=drp_ShiftYear.ClientID %>").value=Year;
                       if(ShiftId!='')
                       document.getElementById("<%=drp_Shift.ClientID %>").value=ShiftId;
                       else
                       document.getElementById("<%=drp_Shift.ClientID %>").value=0;
                       
		               document.getElementById("<%=Hdn_ShiftDate.ClientID %>").value=Year+'-'+Month+'-'+Day;
                       ShowAddWindow();
		               objTableCell=objTD;
		        }
		        

		            function ShiftOk_Onclick()
		                {
		                    document.getElementById("<%=Hdn_ShiftId.ClientID %>").value=document.getElementById("<%=drp_Shift.ClientID %>").value;
		                }

		                
            function LoadShiftOrShiftCalndar()
                {
                    var ShiftIds=document.getElementById("<%=hdn_ShifttsIds.ClientID %>").value;
                    var Shift=document.getElementById("<%=hdn_Shiftts.ClientID %>").value;
                    var ShiftCalendarIds=document.getElementById("<%=hdn_ShifttCalendarIds.ClientID %>").value;
                    var ShiftCalendars=document.getElementById("<%=hdn_ShifttCalendar.ClientID %>").value;
                    if(document.getElementById("wnd_Shift_rbtnlst_ShiftType_0").checked)
                      LoadShifts(ShiftIds,Shift)
                    else
                      LoadShiftCalendar(ShiftCalendarIds,ShiftCalendars)
                }
		    
		    function LoadShifts(ShiftIds,Shifts)
		    {
		        document.getElementById("<%=drp_Shift.ClientID %>").options.length = 0;
		        var Options1=document.createElement("OPTION");
	            Options1.text = 'None';
                Options1.value = 0;
                document.getElementById("<%=drp_Shift.ClientID %>").options.add(Options1);
		        var ShiftId=new Array();
		        ShiftId=ShiftIds.split(',');
		        var Shift=new Array();
		        Shift=Shifts.split(',');
		        for(var i=0;i<ShiftId.length-1;i++)
		        {
		            var Options=document.createElement("OPTION");
		            Options.text = Shift[i];
                    Options.value = ShiftId[i];
                    document.getElementById("<%=drp_Shift.ClientID %>").options.add(Options);
		        }
		    }
		    
		    function LoadShiftCalendar(ShiftCalendarIds,ShiftCalendars)
		    {
                document.getElementById("<%=drp_Shift.ClientID %>").options.length = 0;
		        var Options1=document.createElement("OPTION");
	            Options1.text = 'None';
                Options1.value = 0;
                document.getElementById("<%=drp_Shift.ClientID %>").options.add(Options1);
		        var ShiftCalendarId=new Array();
		        ShiftCalendarId=ShiftCalendarIds.split(',');
		        var ShiftCalendar=new Array();
		        ShiftCalendar=ShiftCalendars.split(',');
		        for(var i=0;i<ShiftCalendarId.length-1;i++)
		        {
		            var Options=document.createElement("OPTION");
		            Options.text = ShiftCalendar[i];
                    Options.value = ShiftCalendarId[i];
                    document.getElementById("<%=drp_Shift.ClientID %>").options.add(Options);
		        }
		    }
		        
    </script>

</body>
</html>
