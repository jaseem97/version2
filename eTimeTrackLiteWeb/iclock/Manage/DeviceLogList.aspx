<%@ page language="VB" autoeventwireup="false" inherits="Manage_DeviceLogList, eTimeTrackWeb_deploy" enableeventvalidation="false" %>

<%@ Register Assembly="obout_Grid_NET" Namespace="Obout.Grid" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">

        var popUpObj;

        function showModalPopUp(DeviceLogId,TableName) {

            popUpObj = window.open("ViewAttendancePhoto.aspx?Id=" + DeviceLogId + "&TableName=" + TableName + "",

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
    <script type="text/javascript">

        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;

            return true;
        }

        function OpenLocationPopUpWindow(Longitude, Latitude) {

            var wide = '500';
            var high = '400';

            //this gets the total available width and height of the users screen
            screen_height = window.screen.availHeight;
            screen_width = window.screen.availWidth;

            //this gets the left and top point by saying total width of the screen divided by 2 (center), minus the width of your window divided by 2, which make its center point the middle of the screen. Same for the top
            left_point = parseInt(screen_width / 2) - (wide / 2);
            top_point = parseInt(screen_height / 2) - (high / 2);

            //just doing a simple popup window here, but plugging your info into it, and setting the top and left corners to be our calculated points that will center your window.
            win = window.open('ViewMobileLocationInMaps.aspx?Longitude=' + Longitude + '&Latitude=' + Latitude + '', 'myPopup', 'width=' + wide + ',height=' + high + ',left=' + left_point + ',top=' + top_point + ',toolbar=no,location=no,scrollbars=no,status=no,resizable=no,fullscreen=no');     //make sure your window is in the front 
            win.focus();
        }
	
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="divBackground" style="position: fixed; z-index: 999; height: 100%; width: 100%;
        top: 0; left: 0; background-color: Black; filter: alpha(opacity=60); opacity: 0.6;
        -moz-opacity: 0.8; display: none">
    </div>
    <table cellpadding="0" cellspacing="0" style="border-right: gray 1px solid; border-top: gray 1px solid;
        border-left: gray 1px solid; border-bottom: gray 1px solid;">
        <tr style="font-weight: bold; font-size: 14px; background-color: lightsteelblue;
            padding-left: 5px; padding-top: 3px; padding-bottom: 3px; color: white;">
            <td style="font-weight: bold; font-size: 14px; background-color: lightsteelblue;
                padding: 5px; color: white;">
                Device Logs List
            </td>
            <td align="right">
                <asp:Label ID="lblError" runat="server" Width="300px" ForeColor="Red"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr style="background-color: gainsboro;">
            <td colspan="2" style="text-align: right; padding: 5px;">
                <hr />
                Select Device
                <asp:DropDownList ID="drp_Devices" runat="server" Width="96px">
                </asp:DropDownList>
                Month
                <asp:DropDownList ID="ddlMonth" runat="server" Width="48px" AutoPostBack="True">
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
                <asp:TextBox ID="txtYear" runat="server" Width="128px" AutoPostBack="True"></asp:TextBox>&nbsp;From
                Date
                <asp:DropDownList ID="ddlFromDate" runat="server" Width="48px">
                </asp:DropDownList>
                &nbsp;To Date
                <asp:DropDownList ID="ddlToDate" runat="server" Width="48px">
                </asp:DropDownList>
                Sort By
                <asp:DropDownList ID="ddlSortBy" runat="server" Width="110">
                    <asp:ListItem>DownloadDate</asp:ListItem>
                    <asp:ListItem>SerialNumber</asp:ListItem>
                    <asp:ListItem>LogDate</asp:ListItem>
                    <asp:ListItem>UserId</asp:ListItem>
                    <asp:ListItem>DeviceSName</asp:ListItem>
                </asp:DropDownList>
                SortOrder
                <asp:DropDownList ID="ddlSortOrder" runat="server" Width="55px">
                    <asp:ListItem>Desc</asp:ListItem>
                    <asp:ListItem>Asc</asp:ListItem>
                </asp:DropDownList>
                Page Size
                <asp:TextBox ID="txtPageSize" Onkeypress="return isNumberKey(event)" runat="server"
                    Width="40" Text="100" />
                <asp:Button ID="btnGo" runat="server" Text="Filter" />
            </td>
        </tr>
        <tr>
            <td colspan="2" valign="top" style="padding: 5px;">
                <cc1:Grid ID="DG_DeviceLogRecords" AutoGenerateColumns="false" runat="server" ShowLoadingMessage="true"
                    EnableRecordHover="true" AllowFiltering="true" Serialize="false" KeepSelectedRecords="true"
                    AllowAddingRecords="false" AllowSorting="false" FolderStyle="~/styles/grid/styles/premiere_blue">
                    <Columns>
                        <cc1:Column ID="Id" DataField="DeviceLogId" Visible="False" Width="100" ReadOnly="True"
                            HeaderText="DeviceCommandId" ConvertEmptyStringToNull="False" Index="0" />
                        <cc1:Column ID="DownloadDate" DataField="DownloadDate" Width="100" HeaderText="Download Date"
                            DataFormatString="{0:dd MMM yyyy HH:mm:ss}" ConvertEmptyStringToNull="False"
                            DataFormatString_GroupHeader="{0:dd MMM yyyy HH:mm:ss}" Index="1" />
                        <cc1:Column ID="DeviceId" DataField="DeviceId" Visible="False" Width="200" HeaderText="Device Id"
                            ConvertEmptyStringToNull="False" Index="2" />
                        <cc1:Column ID="UserId" DataField="UserId" Width="150" HeaderText="User Id" ConvertEmptyStringToNull="False"
                            Index="3" />
                        <cc1:Column ID="LogDate" DataField="LogDate" Width="150" HeaderText="Log Date" DataFormatString="{0:dd MMM yyyy HH:mm:ss}"
                            ConvertEmptyStringToNull="False" DataFormatString_GroupHeader="{0:dd MMM yyyy HH:mm:ss}"
                            Index="4" />
                        <cc1:Column ID="DeviceSName" DataField="DeviceSName" Width="160" HeaderText="Device Name"
                            ConvertEmptyStringToNull="False" Index="5" />
                        <cc1:Column ID="DeviceSNo" DataField="SerialNumber" Width="160" HeaderText="Serial No"
                            ConvertEmptyStringToNull="False" Index="6" />
                        <cc1:Column ID="C4" DataField="C4" Width="120" HeaderText="Att State" ConvertEmptyStringToNull="False"
                            Index="7">
                        </cc1:Column>
                        <cc1:Column ID="C5" DataField="C5" Width="150" HeaderText="Verify Mode" ConvertEmptyStringToNull="False"
                            Index="8">
                        </cc1:Column>
                        <cc1:Column ConvertEmptyStringToNull="False" DataField="Longitude" HeaderText="Longitude"
                            Visible="False">
                        </cc1:Column>
                        <cc1:Column ConvertEmptyStringToNull="False" DataField="Latitude" HeaderText="Latitude"
                            Visible="False">
                        </cc1:Column>
                        <cc1:Column Width="80" HeaderText="GPS" ConvertEmptyStringToNull="False" Index="16"
                            TemplateId="tplViewMaps">
                            <TemplateSettings TemplateId="tplViewMaps" />
                        </cc1:Column>
                        <cc1:Column Width="80" HeaderText="Att Photo" ConvertEmptyStringToNull="False" Index="17"
                            TemplateId="tplViewPhoto">
                            <TemplateSettings TemplateId="tplViewPhoto" />
                        </cc1:Column>
                        <cc1:Column ConvertEmptyStringToNull="False" DataField="FileName" HeaderText="FileName"
                            Visible="False">
                        </cc1:Column>
                        <cc1:Column ConvertEmptyStringToNull="False" DataField="TableName" HeaderText="TableName"
                            Visible="False" Index="18">
                        </cc1:Column>
                    </Columns>
                    <Templates>
                        <cc1:GridTemplate runat="server" ID="tplViewMaps">
                            <Template>
                                <a href="Javascript:void(0);" onclick="OpenLocationPopUpWindow('<%#Container.DataItem.Item("Longitude")%>','<%#Container.DataItem.Item("Latitude")%>')">
                                    <%#ShowGPSColumn(Container.DataItem.Item("Longitude"),Container.DataItem.Item("Latitude"))%>
                                </a>
                            </Template>
                        </cc1:GridTemplate>
                        <cc1:GridTemplate runat="server" ID="tplViewPhoto">
                            <Template>
                                <a href="Javascript:void(0);" onclick="showModalPopUp('<%#Container.DataItem.Item("DeviceLogId")%>','<%#Container.DataItem.Item("TableName")%>')">
                                    <%#ShowPhotoColumn(Container.DataItem.Item("FileName"))%>
                                </a>
                            </Template>
                        </cc1:GridTemplate>
                    </Templates>
                </cc1:Grid>
            </td>
        </tr>
    </table>
    </form>
    <script runat="server">
        
        Function ParseExecutionDate(ByVal ExecutionDate As String)
            Try
                If CDate(ExecutionDate) < CDate("1910-01-01") Then
                    Return ""
                Else
                    Return CDate(ExecutionDate).ToString("dd-MMM-yyyy HH:mm")
                End If
            Catch ex As Exception
                Return ""
            End Try
            
        End Function
        
        Function ShowGPSColumn(ByVal Longitude As String, ByVal Latitude As String)
            Try
                If Not String.IsNullOrEmpty(Longitude) Then
                    If Not String.IsNullOrEmpty(Latitude) Then
                        If Not Longitude = 0 Then
                            If Not Latitude = 0 Then
                                Return "View"
                            End If
                        End If
                    End If
                End If
            Catch ex As Exception
                Return ""
            End Try
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
        
    </script>
</body>
</html>
