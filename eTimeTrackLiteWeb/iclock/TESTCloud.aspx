<%@ page language="VB" autoeventwireup="false" inherits="TESTCloud, eTimeTrackWeb_deploy" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript">
        function ValidatorUpdateDisplay() {

            if (document.getElementById("txt_Name").value == "") {

                document.getElementById("txt_Name").style.border = '1px solid #ff0000';
                return false;

            }
            else {

                document.getElementById("txt_Name").style.border = '#5CB3FF';
                return true;
            }

            return true;
            
           
        }
</script>

    <style type="text/css">
        .style1
        {
            width: 43%;
        }
        
        .namebox1
        {
            width: 258px;
            height: 40px;
            border-radius: 5px 5px 5px 5px;
            background: white;
            padding: 10px;
            font-size: 18px;
            margin-top: 8px;
            border-width: 1px;
            border-style: solid;
            border-color: #5CB3FF;
        }
        
        .namebox
        {
            width: 239px;
            height: 15px;
            border-radius: 5px 5px 5px 5px;
            background: white;
            padding: 10px;
            font-size: 18px;
            margin-top: 8px;
            border-width: 1px;
            border-style: solid;
            border-color: #5CB3FF;
            font-weight: normal;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="style1">
            <tr>
                <td colspan="2" style="border-bottom: thin solid #808080; text-align: left; font-weight: bold;color:#273746;
                    font-size: x-large;">
                    Cloud Registration Form
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: left; color: #515A5A;">
                    Products Interested in: &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: left">
                    <asp:DropDownList ID="drp_ProductType" runat="server" class="namebox1">
                        <asp:ListItem>eTimetracklite</asp:ListItem>
                        <asp:ListItem>Bioserver</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: left">
                    <asp:TextBox ID="txt_CompanyName" Style="width: 239px;" class="namebox" placeholder="Company Name"
                        runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:TextBox ID="txt_Name" runat="server" placeholder="Name" class="namebox"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="txt_MobileNumber" placeholder="Mobile Number" runat="server" class="namebox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:TextBox ID="txt_EmailId" runat="server" placeholder="Email Id" class="namebox"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="txt_Location" runat="server" placeholder="Location" class="namebox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:TextBox ID="txt_NumberOfDevice" placeholder="No. Of Devices" runat="server"
                        class="namebox"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="txt_NumberOfUsers" runat="server" placeholder="No. Of Users" class="namebox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: left;color: #515A5A;">
                    Are you dealer or End User? &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: left">
                    <asp:DropDownList ID="drp_Type" runat="server" class="namebox1">
                        <asp:ListItem>Dealer</asp:ListItem>
                        <asp:ListItem>End User</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                </td>
                <td style="text-align: left">
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    &nbsp;</td>
                <td style="text-align: left">
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClientClick="javascript:return ValidatorUpdateDisplay();" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                    <asp:Label ID="lbl_Captcha" runat="server" Text="" class="namebox1"></asp:Label>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
