<%@ page language="VB" autoeventwireup="false" inherits="Manage_DeviceLogList1, eTimeTrackWeb_deploy" enableeventvalidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;<table style="width: 1064px; height: 280px">
            <tr>
                <td colspan="5" style="font-weight: bold; text-align: left">
                    Device Logs:</td>
            </tr>
            <tr>
                <td colspan="5" style="text-align: right">
                  Select Device
                    <asp:DropDownList ID="drp_Devices" runat="server" Width="96px">
                    </asp:DropDownList>
                    Month
                    <asp:DropDownList ID="ddlMonth" runat="server" Width="48px">
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
                    </asp:DropDownList>&nbsp; Year
                    <asp:TextBox ID="txtYear" runat="server" Width="128px"></asp:TextBox>&nbsp;
                    <asp:Button ID="btnGo" runat="server" Text="Filter" />
                </td>
            </tr>
            <tr>
                <td colspan="5">
                       <div style="height: 390px; overflow: auto;">
                        <asp:GridView ID="Dg_DeviceLogs" runat="server" AutoGenerateColumns="False" CssClass="normalBlack" Width="100%"
                            CellPadding="4" ForeColor="#333333" GridLines="None" CellSpacing="2" EmptyDataText="No Data Found">
                            <Columns>
                                <asp:BoundField DataField="DeviceLogId" HeaderText="DeviceLogId" Visible="False" />
                                <asp:BoundField DataField="DownloadDate" HeaderText="DownloadDate"  DataFormatString="{0: yyyy-MM-dd hh:mm:ss tt}"/>
                                <asp:BoundField DataField="UserId" HeaderText="UserId" />
                                <asp:BoundField DataField="LogDate" HeaderText="LogDate"  DataFormatString="{0: yyyy-MM-dd hh:mm:ss tt}"  />
                                <asp:BoundField DataField="DeviceSName" HeaderText="DeviceSName" />
                                <asp:BoundField DataField="SerialNumber" HeaderText="DeviceSNo" />
                            </Columns>
                            <RowStyle BackColor="#E6F2F2" ForeColor="DimGray" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="White" Font-Bold="True" ForeColor="#333333" />
                            <HeaderStyle BackColor="#373F42" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                            <EditRowStyle BackColor="#999999" />
                            <AlternatingRowStyle BackColor="#F6FAFB" ForeColor="#284775" />
                        </asp:GridView>
                    </div>
                    <div style="height: 30px; background-color: #f5f5f5; width: 100%; text-align: right;
                        padding-top: 0px; padding-right: 10px;" class="normalBlack">
                        
                        <table style="background-color: #f5f5f5; width: 100%; text-align: right; padding-top: 0px;
                            padding-right: 10px;" runat="server" id="tblbottom">
                            <tr class="normalBlack">
                                <td style="text-align: left;width:20%;">
                                    Page&nbsp;Size&nbsp;<asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="True">
                                        <asp:ListItem>50</asp:ListItem>
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>300</asp:ListItem>
                                        <asp:ListItem>500</asp:ListItem>
                                        <asp:ListItem>700</asp:ListItem>
                                        <asp:ListItem>1000</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td style="width:80%">
                                    <asp:Repeater ID="repPaging" runat="server" >
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkPage" runat="server" CommandArgument='<%# Eval("Value") %>'
                                                Enabled='<%# Eval("Enabled") %>' OnClick="PageNumber_Changing" Text='<%#Eval("Text") %>'>
                                            </asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </td>
                            </tr>
                        </table>
                       
                    </div>
                    
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
