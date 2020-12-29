<%@ page language="VB" autoeventwireup="false" inherits="Reports_LoanOrReimbrusment, eTimeTrackWeb_deploy" enableeventvalidation="false" %>
<%@ Register TagPrefix="obout" Namespace="OboutInc.Combobox" Assembly="obout_Combobox_Net" %>
<%@ Register TagPrefix="oem" Namespace="OboutInc.EasyMenu_Pro" Assembly="obout_EasyMenu_Pro" %>
<%@ Register TagPrefix="uctrl" Src="~/Header.ascx" TagName="header" %>
<%@ Register Assembly="obout_Window_NET" Namespace="OboutInc.Window" TagPrefix="owd" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server" >
     <title>Untitled Page</title>
   <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body onload="chk_FilterEmployee_CheckedChanged();chk_FilterCompany_CheckChanged(); chk_FilterDepartment_CheckChanged();">
    <form id="form1" runat="server">
    <div>
      <uctrl:header ID="MyHeader" runat="server" />
    
      <owd:Window ID="ReportProtoType" runat="server" IsModal="true"  Height="435" Width="790"
            StyleFolder="~/Styles/mainwindow/blue" Title="Monthly Attendance Report"  
             VisibleOnLoad="true" ShowCloseButton="true"  Left="80"  Top="45" ShowStatusBar="False">     
             
             <table width="100%" cellpadding="1" class="Table" style="border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;">
             
             <tr></tr>
             <tr></tr>
             
              <tr></tr>
             <tr></tr>
              <tr></tr>
             <tr></tr>
             <tr runat="server" >
             
             <td>From Date</td>
             <td >
               <asp:DropDownList ID="Drp_FromDateDD" runat="server" CssClass="WebControls"> </asp:DropDownList>
                <asp:DropDownList ID="Drp_FromDateMM" runat="server" CssClass="WebControls"></asp:DropDownList>
                <asp:DropDownList ID="Drp_FromDateYYYY" runat="server" CssClass="WebControls"> </asp:DropDownList>
             </td>
             <td>To Date</td>
              <td>
              <asp:DropDownList ID="Drp_ToDateDD" runat="server" CssClass="WebControls"></asp:DropDownList>
              <asp:DropDownList ID="Drp_ToDateMM" runat="server" CssClass="WebControls"></asp:DropDownList>
              <asp:DropDownList ID="Drp_ToDateYYYY" runat="server" CssClass="WebControls"></asp:DropDownList> 
              </td>
              <td></td>
              <td>
                  </td>
              </tr>
              <tr></tr>
              
             <tr>
              <td colspan="2">
                <fieldset  >
                <legend>
                                <asp:CheckBox ID="chk_FilterEmployee"  Text="Filter Employee" runat="server"  CssClass="WebControls" OnClick="javascript:chk_FilterEmployee_CheckedChanged();" /></legend>
                            <table cellpadding="1">
                                <tr>
                                    <td >Employee Code</td>
                                        
                                    <td >
                                        <asp:TextBox ID="txt_EmployeeCode" runat="server" Width="75px" CssClass="WebControls"></asp:TextBox>
                                        &nbsp;<asp:CheckBox ID="chk_Exact" runat="server"  Text="Exact" CssClass="WebControls"/>
                                    </td>
                                </tr>
                                <tr></tr>
                                <tr>
                                <td >Employee Name</td>
                                <td >
                                        <asp:TextBox ID="txt_EmployeeName" runat="server" Width="120px" CssClass="WebControls"></asp:TextBox></td>
                                 </tr>
                                 <tr></tr>
                                 
                                 <tr>
                                 <td >Employee Category</td>
                                        
                                    <td >
                                        <asp:DropDownList ID="drp_EmployeeCategory" runat="server"  Width="125px" CssClass="WebControls"></asp:DropDownList>
                                        
                                    </td>
                                 </tr>
                                 <tr></tr>
                                 <tr>
                                 <td >Employee Designation</td>
                                        
                                    <td >
                                    <asp:DropDownList ID="drp_EmployeeDesignation" runat="server" Width="125px" CssClass="WebControls">
                                    </asp:DropDownList>
                                    
                                    </td>
                                 </tr>
                                 <tr></tr>
                                  <tr>
                                     <td >Employee Location</td>
                                     <td >  <asp:DropDownList ID="drp_EmployeeLocation" runat="server" Width="125px" CssClass="WebControls">
                                    </asp:DropDownList></td>
                                     
                                     </tr>
                                      <tr></tr>
                                     <tr>
                                
                                 <td >Employee Type</td>
                                        
                                    <td >
                                     <asp:DropDownList ID="drp_EmployeeType" runat="server" Width="125px" CssClass="WebControls">
                                    </asp:DropDownList>
                                       
                                    </td>
                                    </tr>
                         </table>
                </fieldset>   
                  
               </td>
               <td colspan="2"  align="right"> 
                               <fieldset style="border:none">
                            <legend></legend>
                            <table cellpadding="1">
                                <tr>
                                <td align="left"><asp:CheckBox ID="chk_FilterCompany" runat="server" Text="Filter Company" CssClass="WebControls" onClick="javascript:chk_FilterCompany_CheckChanged();"/> </td>
                                </tr>
                                <tr></tr>
                                <tr>
                                <td>
                                    <asp:ListBox ID="Lst_FilterCompany" runat="server" Height="157px" Width="140px" CssClass="WebControls" BorderStyle="Solid" BorderWidth="1px" SelectionMode="Multiple"></asp:ListBox>
                                </td>
                                </tr>
                 
                     <tr><td>
                     <asp:RadioButton ID="rdo_SelectAllCompany" Checked="true" Text="Select All" onClick="javascript:chk_CompanySelectDeselectAll_Changed();"
                                                GroupName="a" runat="server" />&nbsp;&nbsp;
                                            <asp:RadioButton ID="rdo_DeselectAllCompany" Text="Deselect All" GroupName="a" runat="server"
                                                onClick="javascript:chk_CompanySelectDeselectAll_Changed();" />
                      </td>  
                      </tr>
                      </table>
                      </fieldset>
                      </td> 
                                
               <td colspan="2" align="right"> 
                                <fieldset style="border:none">
                            <legend></legend>
                            <table cellpadding="1">
                                <tr>
                                <td align="left"><asp:CheckBox ID="chk_FilterDepartment" runat="server" CssClass="WebControls" Text="Filter Department"  onClick="javascript:chk_FilterDepartment_CheckChanged();"/> </td>
                                </tr>
                                <tr></tr>
                                <tr>
                                <td>
                                    <asp:ListBox ID="Lst_FilterDepartment" runat="server" CssClass="WebControls" Height="157px" Width="140px" BorderStyle="Solid" BorderWidth="1px" SelectionMode="Multiple"></asp:ListBox>
                                </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="rdo_SelectAllDepartment" Checked="true" Text="Select All" onClick="javascript:chk_DepartmentSelectDeselectAll_Changed();"
                                            GroupName="b" runat="server" />&nbsp;&nbsp;
                                        <asp:RadioButton ID="rdo_DeselectAllDepartment" Text="Deselect All" GroupName="b"
                                            runat="server" onClick="javascript:chk_DepartmentSelectDeselectAll_Changed();" />
                                      
                                    </td>
                                </tr>
                            </table>
                                </fieldset>
               </td>
               
               </tr> 
               
               <tr></tr>
                       <tr></tr>
                       <tr></tr>
                       
                       <tr>
                       <td colspan="6">
                       <fieldset>
                       <legend>
                           <asp:Label ID="Label1" runat="server" Text="Export File Format"   CssClass="WebControls"></asp:Label></legend>
                       <table>
                       <tr>
                       <td>Export File Format&nbsp;&nbsp;</td>
                       <td><asp:RadioButtonList ID="rbtn_FileFormat" RepeatDirection="Horizontal" runat="server"><asp:ListItem>Excel</asp:ListItem><asp:ListItem Selected="True">PDF</asp:ListItem></asp:RadioButtonList></td>
                       </tr>
                       </table>
                         </fieldset>  
                       </td>
                       
                       </tr>  
               
               <tr>
                 <td colspan="3">  <asp:CheckBox ID="chk_ShowCompanyLogo" Checked="true"  Text="Show Company Logo" runat="server" />   </td>
                 <td colspan="3" align="right" ><asp:Button ID="btn_GenerateReport" CssClass="WebControls" runat="server" Text="Generate Report" OnClientClick="javascript:document.getElementById('ReportProtoType_lblStatus').innerHTML='';"/>&nbsp;<input type="button" value="Close" id="btn_Close" style="font-size:11px; font-family:Verdana;height: 20px;" onclick="ReportProtoType.Close();" /></td> 
                 </tr>
                 
                 <tr>
       <td colspan="6">
        <hr />
       <asp:Label ID="lblStatus"    runat="server" Text=""  CssClass="WebControls" Height="20" ForeColor="red"   ></asp:Label>
       </td>
       </tr> 
 </table>
     </owd:Window>         
            
      <asp:LinkButton Visible="false" ID="Lnk_SelectAllDepartment" runat="server" Text="Select All" CssClass="WebControls"
                                            OnClientClick="return SelectAll(this);"></asp:LinkButton>
                                        &nbsp;&nbsp;
                                        <asp:LinkButton Visible="false" ID="Lnk_DeSelectAllDepartment" runat="server" Text="Deselect All"
                                            CssClass="WebControls" OnClientClick="return DeSelectAll(this);"></asp:LinkButton>
                                                                 <asp:LinkButton Visible="false"  ID="Lnk_SelectAllCompany" runat="server"  Text="Select All"  CssClass="WebControls"  OnClientClick="return SelectAll(this);" ></asp:LinkButton> &nbsp;&nbsp;
                     <asp:LinkButton Visible="false"  ID="Lnk_DeSelectAllCompany" runat="server" Text="Deselect All" CssClass="WebControls" OnClientClick="return DeSelectAll(this);"></asp:LinkButton>

        &nbsp;</div>
        
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="426px" Width="737px">
    <LocalReport EnableExternalImages="True">
    </LocalReport>
</rsweb:ReportViewer>
    </form>
</body>
</html>

<script type="text/javascript">

        // SET DESIGNATION AND EMPLOYEETYPE COMBOBOX SET POSITION
        
		 document.getElementById("ob_drp_EmployeeDesignationContainer").style.zIndex="99999";
		   document.getElementById("ob_drp_EmployeeTypeContainer").style.zIndex="99999";
		   
		   
		   //  FILTER EMPLOYEE CHECK CHANGED
		   
    	   function chk_FilterEmployee_CheckedChanged()   
		   {
		   
		   var CheckStatus=document.getElementById("<%=chk_FilterEmployee.ClientID %>").checked;
		   
		   if (CheckStatus)
		   {
		    document.getElementById("<%=txt_EmployeeCode.ClientID %>").disabled=false;
		    document.getElementById("<%=txt_EmployeeName.ClientID %>").disabled=false;
		    document.getElementById("<%=chk_Exact.ClientID %>").disabled=false;
		    document.getElementById("<%=drp_EmployeeCategory.ClientID %>").disabled=false;
		    document.getElementById("<%=drp_EmployeeDesignation.ClientID %>").disabled=false;
		    document.getElementById("<%=drp_EmployeeType.ClientID %>").disabled=false;
		    document.getElementById("<%=drp_EmployeeLocation.ClientID %>").disabled=false;
		   }
		   
		   else
		   {
		    document.getElementById("<%=txt_EmployeeCode.ClientID %>").disabled=true;
		    document.getElementById("<%=txt_EmployeeName.ClientID %>").disabled=true;
		     document.getElementById("<%=chk_Exact.ClientID %>").disabled=true;
		    document.getElementById("<%=drp_EmployeeCategory.ClientID %>").disabled=true;
		    document.getElementById("<%=drp_EmployeeDesignation.ClientID %>").disabled=true;
		      document.getElementById("<%=drp_EmployeeType.ClientID %>").disabled=true;
		       document.getElementById("<%=drp_EmployeeLocation.ClientID %>").disabled=true;
		   }
        }
        
        
        //  FILTER  COMPANY  CHECK CHANGED
         
       function chk_FilterCompany_CheckChanged() 
        
        {
        var checkStatus=document.getElementById("<%=chk_FilterCompany.ClientId %>").checked;
        var ListViewObject=document.getElementById("<%=Lst_FilterCompany.ClientID %>");
		            for(var j=0;j<ListViewObject.options.length;j++)
		                {
		                        ListViewObject.options[j].selected=true;
		                }
        if (checkStatus)
        {
        document.getElementById("<%=Lst_FilterCompany.ClientId %>").disabled=true;
//        document.getElementById("<%=Lnk_SelectAllCompany.ClientId %>").disabled=false;
//        document.getElementById("<%=Lnk_DeSelectAllCompany.ClientId %>").disabled=false;
        document.getElementById("<%=rdo_SelectAllCompany.ClientId %>").disabled=false;
        document.getElementById("<%=rdo_SelectAllCompany.ClientId %>").checked=true;
        document.getElementById("<%=rdo_DeselectAllCompany.ClientId %>").disabled=false;
        }
        else
        {
         document.getElementById("<%=Lst_FilterCompany.ClientId %>").disabled=true;
//        document.getElementById("<%=Lnk_SelectAllCompany.ClientId %>").disabled=true;
//        document.getElementById("<%=Lnk_DeSelectAllCompany.ClientId %>").disabled=true;
        document.getElementById("<%=rdo_SelectAllCompany.ClientId %>").disabled=true;
         document.getElementById("<%=rdo_SelectAllCompany.ClientId %>").checked=true;
        document.getElementById("<%=rdo_DeselectAllCompany.ClientId %>").disabled=true;

        }
        }
        
        //  FILTER  DEPARTMENT  CHECK CHANGED
        
        function chk_FilterDepartment_CheckChanged()
        {
        var checkStatus=document.getElementById("<%=chk_FilterDepartment.ClientId %>").checked;
         var ListViewObject=document.getElementById("<%=Lst_FilterDepartment.ClientID %>");
		            for(var j=0;j<ListViewObject.options.length;j++)
		                {
		                        ListViewObject.options[j].selected=true;
		                }
        
        if (checkStatus)
        {
        document.getElementById("<%=Lst_FilterDepartment.ClientId %>").disabled=true;
//        document.getElementById("<%=Lnk_SelectAllDepartment.ClientId %>").disabled=false;
//        document.getElementById("<%=Lnk_DeSelectAllDepartment.ClientId %>").disabled=false;
        document.getElementById("<%=rdo_SelectAllDepartment.ClientId %>").disabled=false;
         document.getElementById("<%=rdo_SelectAllDepartment.ClientId %>").checked=true;
        document.getElementById("<%=rdo_DeselectAllDepartment.ClientId %>").disabled=false;
        }
        else
        {
         document.getElementById("<%=Lst_FilterDepartment.ClientId %>").disabled=true;
//        document.getElementById("<%=Lnk_SelectAllDepartment.ClientId %>").disabled=true;
//        document.getElementById("<%=Lnk_DeSelectAllDepartment.ClientId %>").disabled=true;
        document.getElementById("<%=rdo_SelectAllDepartment.ClientId %>").disabled=true;
         document.getElementById("<%=rdo_SelectAllDepartment.ClientId %>").checked=true;
        document.getElementById("<%=rdo_DeselectAllDepartment.ClientId %>").disabled=true;

        }
        }
        
        
        
        // SELECT ALL
        
         function SelectAll(Sender)
        {
     
         var FieldName=Sender.getAttribute("id");
       
	             if (FieldName=='ReportProtoType_Lnk_SelectAllCompany')
	            {
	            var ListViewObject=document.getElementById("<%=Lst_FilterCompany.ClientID %>");
		         for(var j=0;j<ListViewObject.options.length;j++)
		                {
		                        ListViewObject.options[j].selected=true;
		                }
		                return false;
	            }
	            
	             else if (FieldName=='ReportProtoType_Lnk_SelectAllDepartment')
	            {
	            var ListViewObject=document.getElementById("<%=Lst_FilterDepartment.ClientID %>");
		         for(var j=0;j<ListViewObject.options.length;j++)
		                {
		                        ListViewObject.options[j].selected=true;
		                }
		                return false;
	            }
	            }
	            
	            // DESELECT ALL
	            
        function DeSelectAll(Sender)
        {
   
         var FieldName=Sender.getAttribute("id");
       
	             if (FieldName=='ReportProtoType_Lnk_DeSelectAllCompany')
	            {
	            var ListViewObject=document.getElementById("<%=Lst_FilterCompany.ClientID %>");
		         for(var j=0;j<ListViewObject.options.length;j++)
		                {
		                        ListViewObject.options[j].selected=false;
		                }
		                return false;
	            }
	            
	             else if (FieldName=='ReportProtoType_Lnk_DeSelectAllDepartment')
	            {
	            var ListViewObject=document.getElementById("<%=Lst_FilterDepartment.ClientID %>");
		         for(var j=0;j<ListViewObject.options.length;j++)
		                {
		                        ListViewObject.options[j].selected=false;
		                }
		                return false;
	            }
	            }
	            
	            
	            
	            
	             function chk_CompanySelectDeselectAll_Changed() 
        {
              var checkStatus=document.getElementById("<%=rdo_SelectAllCompany.ClientId %>").checked;
              if (checkStatus)
              {
              
                    var ListViewObject=document.getElementById("<%=Lst_FilterCompany.ClientID %>");
		            for(var j=0;j<ListViewObject.options.length;j++)
		                {
		                        ListViewObject.options[j].selected=true;
		                }
                    document.getElementById("<%=Lst_FilterCompany.ClientId %>").disabled=true;
//                    document.getElementById("<%=rdo_SelectAllCompany.ClientId %>").disabled=true;
//                    document.getElementById("<%=rdo_DeselectAllCompany.ClientId %>").disabled=false;


              }
              else
              {
        
                    document.getElementById("<%=Lst_FilterCompany.ClientId %>").disabled=false;
//                    document.getElementById("<%=rdo_SelectAllCompany.ClientId %>").disabled=false;
//                    document.getElementById("<%=rdo_DeselectAllCompany.ClientId %>").disabled=true;
                    var ListViewObject=document.getElementById("<%=Lst_FilterCompany.ClientID %>");
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
                         var ListViewObject=document.getElementById("<%=Lst_FilterDepartment.ClientID %>");
		                 for(var j=0;j<ListViewObject.options.length;j++)
		                 {
		                      ListViewObject.options[j].selected=true;
		                 }
                        document.getElementById("<%=Lst_FilterDepartment.ClientId %>").disabled=true;
//                        document.getElementById("<%=rdo_SelectAllDepartment.ClientId %>").disabled=true;
//                        document.getElementById("<%=rdo_DeselectAllDepartment.ClientId %>").disabled=false;

                }
                else
                {
        
                        document.getElementById("<%=Lst_FilterDepartment.ClientId %>").disabled=false;
//                        document.getElementById("<%=rdo_SelectAllDepartment.ClientId %>").disabled=false;
//                        document.getElementById("<%=rdo_DeselectAllDepartment.ClientId %>").disabled=true;
                        var ListViewObject=document.getElementById("<%=Lst_FilterDepartment.ClientID %>");
		                for(var j=0;j<ListViewObject.options.length;j++)
		                {
		                        ListViewObject.options[j].selected=false;
		                }
                }
        }
	             
        
        </script>
