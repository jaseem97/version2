<%@ page language="VB" autoeventwireup="false" inherits="Manage_PublicHolidays, App_Web_bgemufol" enableeventvalidation="false" %>
<%@ Register TagPrefix="obout" Namespace="Obout.Grid" Assembly="obout_Grid_NET" %>
<%@ Register TagPrefix="obout" Namespace="OboutInc.Flyout2" Assembly="obout_Flyout2_NET"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
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
                    <td>
                        Holiday List
                    </td>
                </tr>
                
                  <tr style=" background-color: lightsteelblue;">
                <td colspan="2">
                <hr />
                </td>
                </tr>
                
                <tr>
                    <td colspan="2" >
            <obout:Grid id="Dg_Holiday" runat="server" CallbackMode="true" EnableRecordHover="true" AllowFiltering="true" KeepSelectedRecords="true"  Serialize="true" AutoGenerateColumns="false" FolderStyle="~/styles/grid/styles/premiere_blue" AllowAddingRecords="false" ShowLoadingMessage="false" >
			<Columns>
			    <obout:Column DataField="HolidayId" Visible="false" ReadOnly="true" HeaderText="HolidayId " />
			    <obout:Column ID="Column1" DataField="HolidayName" Visible="true"  SortOrder="Asc"  Width="200" HeaderText="Holiday Name" runat="server" />
			    <obout:Column ID="Column2" DataField="CompanySName" Visible="true" Width="250" HeaderText="Company Name" runat="server" />
			    <obout:Column ID="Column3" DataField="HolidayDate" DataFormatString="{0:dd MMM yyyy}"  Visible="true" Width="150" HeaderText="Holiday Date" runat="server" />
                <obout:Column ID="Column4" DataField="Description" Visible="false" Width="200" HeaderText="Description" runat="server" />
                <obout:Column ID="Column5" DataField="CompanyId" Visible="false" Width="200" HeaderText="Description" runat="server" />
			</Columns>					
		</obout:Grid>
		</td>
   </tr>
 </table>	
		
 
</div>
</form>
<script runat="server">
    
    Function ParseHolidayGroups(ByVal HolidayGroups As String) As String
        If Not Session.Item("LoginUser") Is Nothing Then
            If HolidayGroups <> "" Then
                Dim ParseHoliday As String = ""
                For Each HolidayGroup As String In HolidayGroups.Split(",")
                    ParseHoliday = ParseHoliday + "Holiday Group " + CStr(CInt(HolidayGroup) + 1) + ","
                Next
                Return ParseHoliday.Remove(ParseHoliday.LastIndexOf(","))
            End If
        End If
        Return ""
    End Function
        
    </script>
    
</body>
</html>


