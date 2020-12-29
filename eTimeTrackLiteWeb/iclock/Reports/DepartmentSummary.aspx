<%@ page language="VB" autoeventwireup="false" inherits="Reports_Department, eTimeTrackWeb_deploy" enableeventvalidation="false" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<%@ Register TagPrefix="oem" Namespace="OboutInc.EasyMenu_Pro" Assembly="obout_EasyMenu_Pro" %>
<%@ Register TagPrefix="uctrl" Src="~/Header.ascx" TagName="header" %>
<%@ Register Assembly="obout_Window_NET" Namespace="OboutInc.Window" TagPrefix="owd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body onload="chk_CompanySelectDeselectAll_Changed();chk_DepartmentSelectDeselectAll_Changed();">
    <form id="form1" runat="server">
        <div>
            <uctrl:header ID="MyHeader" runat="server" />
            <owd:Window ID="ReportProtoType" runat="server" IsModal="true" Height="375" Width="518"
                StyleFolder="~/Styles/mainwindow/blue" Title="Department Summary" VisibleOnLoad="true"
                ShowCloseButton="true" Left="80" Top="45" ShowStatusBar="False">
                <table width="100%" cellpadding="1" class="Table" style="border-top-style: none;
                    border-right-style: none; border-left-style: none; border-bottom-style: none;">
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;From Date&nbsp;&nbsp;</td>
                        <td style="width: 173px">
                            <asp:DropDownList ID="Drp_FromDateDD" runat="server" CssClass="WebControls">
                            </asp:DropDownList>
                            <asp:DropDownList ID="Drp_FromDateMM" runat="server" CssClass="WebControls">
                            </asp:DropDownList>
                            <asp:DropDownList ID="Drp_FromDateYYYY" runat="server" CssClass="WebControls">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;To Date&nbsp;&nbsp;</td>
                        <td>
                            <asp:DropDownList ID="Drp_ToDateDD" runat="server" CssClass="WebControls">
                            </asp:DropDownList>
                            <asp:DropDownList ID="Drp_ToDateMM" runat="server" CssClass="WebControls">
                            </asp:DropDownList>
                            <asp:DropDownList ID="Drp_ToDateYYYY" runat="server" CssClass="WebControls">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;Select Company&nbsp;&nbsp;</td>
                        <td colspan="2" align="left">
                            &nbsp;Select Departments&nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:ListBox ID="Lst_Company" runat="server" Height="135px" Width="145px" CssClass="WebControls"
                                BorderStyle="Solid" BorderWidth="1px" SelectionMode="Multiple"></asp:ListBox>
                        </td>
                        <td colspan="2" align="left">
                            <asp:ListBox ID="Lst_Department" runat="server" Height="135px" Width="145px" CssClass="WebControls"
                                BorderStyle="Solid" BorderWidth="1px" SelectionMode="Multiple"></asp:ListBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;
                            <asp:RadioButton ID="rdo_SelectAllCompany" Checked="true" Text="Select All" onClick="javascript:chk_CompanySelectDeselectAll_Changed();"
                                GroupName="a" runat="server" />&nbsp;&nbsp;
                            <asp:RadioButton ID="rdo_DeselectAllCompany" Text="Deselect All" GroupName="a" runat="server"
                                onClick="javascript:chk_CompanySelectDeselectAll_Changed();" />
                        </td>
                        <td colspan="2" align="left">
                            &nbsp;
                            <asp:RadioButton ID="rdo_SelectAllDepartment" Checked="true" Text="Select All" onClick="javascript:chk_DepartmentSelectDeselectAll_Changed();"
                                GroupName="b" runat="server" />&nbsp;&nbsp;
                            <asp:RadioButton ID="rdo_DeselectAllDepartment" Text="Deselect All" GroupName="b"
                                runat="server" onClick="javascript:chk_DepartmentSelectDeselectAll_Changed();" />
                        </td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <fieldset>
                                <legend>
                                    <asp:Label ID="Label1" runat="server" Text="Export File Format" CssClass="WebControls"></asp:Label></legend>
                                <table>
                                    <tr>
                                        <td>
                                            Export File Format&nbsp;&nbsp;</td>
                                        <td>
                                            <asp:RadioButtonList ID="rbtn_FileFormat" RepeatDirection="Horizontal" runat="server">
                                                <asp:ListItem>Excel</asp:ListItem>
                                                <asp:ListItem Selected="True">PDF</asp:ListItem>
                                            </asp:RadioButtonList></td>
                                    </tr>
                                </table>
                            </fieldset>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" align="right">
                            <asp:Button ID="btn_Calculate" runat="server" CssClass="WebControls" Text="Generate Report"
                                OnClientClick="javascript:document.getElementById('ReportProtoType_lblStatus').innerHTML='';" />&nbsp;&nbsp;<input
                                    id="Button1" type="button" value="Close" onclick="ReportProtoType.Close();" class="WebControls" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <hr />
                            <asp:Label ID="lblStatus" runat="server" CssClass="WebControls" ForeColor="Red" Height="20px"></asp:Label>
                        </td>
                    </tr>
                </table>
            </owd:Window>
            <rsweb:ReportViewer ID="ReportViewer1" runat="server">
            </rsweb:ReportViewer>
            <asp:LinkButton Visible="false" ID="Lnk_SelectAllCompany" runat="server" OnClientClick="return SelectAllComany();">Select All</asp:LinkButton>
            &nbsp;&nbsp;
            <asp:LinkButton Visible="false" ID="Lnk_DeSelectAllCompany" runat="server" OnClientClick="return DeSelectAllComany();">DeSelect All</asp:LinkButton>
            &nbsp;<asp:LinkButton Visible="false" ID="Lnk_SelectAllDepartment" runat="server"
                OnClientClick="return SelectAllDepartment();">Select All</asp:LinkButton>&nbsp;&nbsp;
            <asp:LinkButton Visible="false" ID="Lnk_DeSelectAllDepartment" runat="server" OnClientClick="return DeSelectAllDepartment();">DeSelect All</asp:LinkButton>
        </div>
    </form>
</body>
</html>
<script type="text/javascript">

   // SELECT ALL 
   
     function SelectAllComany()
        {
                 
	            var ListViewObject=document.getElementById("<%=Lst_Company.ClientID %>");
		         for(var j=0;j<ListViewObject.options.length;j++)
		                {
		                        ListViewObject.options[j].selected=true;
		                }
		               return false;
	                    }
	                    
	                    
	   function SelectAllDepartment()
            {
            
	           var ListViewObject=document.getElementById("<%=Lst_Department.ClientID %>");
		         for(var j=0;j<ListViewObject.options.length;j++)
		                {
		                        ListViewObject.options[j].selected=true;
		                }
		            return false;    
	            }
	            
	            // DESELECT ALL
	            
	          function DeSelectAllComany()
                 {
                 
	            var ListViewObject=document.getElementById("<%=Lst_Company.ClientID %>");
		         for(var j=0;j<ListViewObject.options.length;j++)
		                {
		                        ListViewObject.options[j].selected=false;
		                }
		                        return false;
	                    }
        
              function DeSelectAllDepartment()
                 {
	            var ListViewObject=document.getElementById("<%=Lst_Department.ClientID %>");
		         for(var j=0;j<ListViewObject.options.length;j++)
		                {
		                        ListViewObject.options[j].selected=false;
		                }
		                        return false;
	                    }
	                    
	                    
	                    
	                    
	                     function chk_CompanySelectDeselectAll_Changed() 
        {
              var checkStatus=document.getElementById("<%=rdo_SelectAllCompany.ClientId %>").checked;
              if (checkStatus)
              {
              
                    var ListViewObject=document.getElementById("<%=Lst_Company.ClientID %>");
		            for(var j=0;j<ListViewObject.options.length;j++)
		                {
		                        ListViewObject.options[j].selected=true;
		                }
                    document.getElementById("<%=Lst_Company.ClientId %>").disabled=true;
//                    document.getElementById("<%=rdo_SelectAllCompany.ClientId %>").disabled=true;
//                    document.getElementById("<%=rdo_DeselectAllCompany.ClientId %>").disabled=false;


              }
              else
              {
        
                    document.getElementById("<%=Lst_Company.ClientId %>").disabled=false;
//                    document.getElementById("<%=rdo_SelectAllCompany.ClientId %>").disabled=false;
//                    document.getElementById("<%=rdo_DeselectAllCompany.ClientId %>").disabled=true;
                    var ListViewObject=document.getElementById("<%=Lst_Company.ClientID %>");
		            for(var j=0;j<ListViewObject.options.length;j++)
		                {
		                        ListViewObject.options[j].selected=false;
		                }
               }
        }
        
        
       
        
        function chk_DepartmentSelectDeselectAll_Changed() 
        {
                var checkStatus=document.getElementById("<%=rdo_SelectAllDepartment.ClientId %>").checked;
                if (checkStatus)
                {
                         var ListViewObject=document.getElementById("<%=Lst_Department.ClientID %>");
		                 for(var j=0;j<ListViewObject.options.length;j++)
		                 {
		                      ListViewObject.options[j].selected=true;
		                 }
                        document.getElementById("<%=Lst_Department.ClientId %>").disabled=true;
//                        document.getElementById("<%=rdo_SelectAllDepartment.ClientId %>").disabled=true;
//                        document.getElementById("<%=rdo_DeselectAllDepartment.ClientId %>").disabled=false;

                }
                else
                {
        
                        document.getElementById("<%=Lst_Department.ClientId %>").disabled=false;
//                        document.getElementById("<%=rdo_SelectAllDepartment.ClientId %>").disabled=false;
//                        document.getElementById("<%=rdo_DeselectAllDepartment.ClientId %>").disabled=true;
                        var ListViewObject=document.getElementById("<%=Lst_Department.ClientID %>");
		                for(var j=0;j<ListViewObject.options.length;j++)
		                {
		                        ListViewObject.options[j].selected=false;
		                }
                }
        }
        

</script>

