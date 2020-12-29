<%@ page language="VB" autoeventwireup="false" inherits="Default2, App_Web_llxrsx5o" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Chart ID="Chart1" runat="server" Height="297px" Width="780px" 
            BorderlineWidth="0" TextAntiAliasingQuality="Normal">
            <Series>
                <asp:Series Name="Series1" YValueType="Int32" YValuesPerPoint="2">
                    <Points>
                    </Points>
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1" BorderColor="Gray">
                    <AxisX MaximumAutoSize="100">
                    </AxisX>
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
    </div>
    </form>
</body>
</html>
