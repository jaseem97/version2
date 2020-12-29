<%@ page language="VB" autoeventwireup="false" inherits="MyProfile, App_Web_llxrsx5o" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table  cellpadding="0" cellspacing="0" style="border-right: gray 1px solid; border-top: gray 1px solid;
            border-left: gray 1px solid; border-bottom: gray 1px solid;">
            <tr style="font-weight: bold; font-size: 14px; background-color: lightsteelblue;
                padding-left: 5px; padding-top: 3px; padding-bottom: 3px; color: white;">
                <td>
                    My Profile
                </td>
            </tr>
            <tr style="background-color: lightsteelblue;">
                <td colspan="2">
                    <hr />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 500px; vertical-align: top; background-color: aliceblue;">
                    <table cellspacing="15" cellpadding="0">
                        <tr>
                            <td>
                                Profile Pic
                            </td>
                            <td>
                                <asp:Image ID="EmployeePhoto" runat="server" Height="142px" Width="131px" BackColor="#666666" ImageUrl="~/Images/noPhoto.jpg" />
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Employee Code
                            </td>
                            <td>
                                <asp:TextBox ID="txt_EmployeeCode" ReadOnly="true" runat="server" Width="247px"></asp:TextBox>
                            </td>
                            <td>
                                Employee Name
                            </td>
                            <td>
                                <asp:TextBox ID="txt_EmployeeName" ReadOnly="true" runat="server" Width="234px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Company Name
                            </td>
                            <td>
                                <asp:TextBox ID="txt_Company" ReadOnly="true" runat="server" Width="247px"></asp:TextBox>
                            </td>
                            <td>
                                Department Name
                            </td>
                            <td>
                                <asp:TextBox ID="txt_Department" ReadOnly="true" runat="server" Width="234px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Designation
                            </td>
                            <td>
                                <asp:TextBox ID="txt_Designation" ReadOnly="true" runat="server" Width="247px"></asp:TextBox>
                            </td>
                            <td>
                                Device Code
                            </td>
                            <td>
                                <asp:TextBox ID="txt_DeviceCode" ReadOnly="true" runat="server" Width="234px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                DOJ
                            </td>
                            <td>
                                <asp:TextBox ID="txt_DOJ" ReadOnly="true" runat="server" Width="247px"></asp:TextBox>
                            </td>
                            <td>
                                Email
                            </td>
                            <td>
                                <asp:TextBox ID="txt_Email" ReadOnly="true" runat="server" Width="234px"></asp:TextBox>
                            </td>
                        </tr>
                          <tr>
                            <td>
                                Contact No
                            </td>
                            <td>
                                <asp:TextBox ID="txt_ContactNo" ReadOnly="true" runat="server" Width="247px"></asp:TextBox>
                            </td>
                            <td>
                                DOB
                            </td>
                            <td>
                                <asp:TextBox ID="txt_DOB" ReadOnly="true" runat="server" Width="234px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Father's Name
                            </td>
                            <td>
                                <asp:TextBox ID="txt_FatherName" ReadOnly="true" runat="server" Width="247px"></asp:TextBox>
                            </td>
                            <td>
                                Mother's Name
                            </td>
                            <td>
                                <asp:TextBox ID="txt_MotherName" ReadOnly="true" runat="server" Width="234px"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                Residential Address 
                            </td>
                            <td>
                                <asp:TextBox ID="txt_ResidentAddress" TextMode="MultiLine"  ReadOnly="true" runat="server" 
                                    Width="247px" Height="130px"></asp:TextBox>
                            </td>
                            <td>
                                Permanent Address
                            </td>
                            <td style="vertical-align: text-top">
                                <asp:TextBox ID="txt_PermanentAddress" TextMode="MultiLine" ReadOnly="true" runat="server" 
                                    Width="234px" Height="130px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
