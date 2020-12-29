<%@ page language="VB" autoeventwireup="false" inherits="Reports_DailyExitReport, eTimeTrackWeb_deploy" enableeventvalidation="false" %>
<%@ Register TagPrefix="obout" Namespace="OboutInc.Combobox" Assembly="obout_Combobox_Net" %>
<%@ Register TagPrefix="oem" Namespace="OboutInc.EasyMenu_Pro" Assembly="obout_EasyMenu_Pro" %>
<%@ Register TagPrefix="uctrl" Src="~/Header.ascx" TagName="header" %>
<%@ Register Assembly="obout_Window_NET" Namespace="OboutInc.Window" TagPrefix="owd" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
    
</head>
<body  onload="chk_FilterEmployee_CheckedChanged();chk_FilterCompany_CheckChanged(); chk_FilterDepartment_CheckChanged();" >
    <form id="form1" runat="server">
    <div>
    
    <uctrl:header ID="MyHeader" runat="server" />
    
    
      <owd:Window ID="ReportProtoType" runat="server" IsModal="true"  Height="600" Width="680"
            StyleFolder="~/Styles/mainwindow/blue"  Title="Daily Exit Report"  
             VisibleOnLoad="true" ShowCloseButton="true"   Left="40"  Top="25" ShowStatusBar="False"  >         
             
             <table width="100%" cellpadding="1" class="Table" style="border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;">
              
              
              <tr></tr>
               <tr></tr> <tr></tr> <tr></tr>
               <tr>
               <td colspan="5" align="right">
                   &nbsp;&nbsp;<asp:Label ID="lbl_GroupBy" runat="server" Text="Group By"></asp:Label>
               <asp:DropDownList ID="drp_GroupOrder"  runat="server"  CssClass="WebControls">
               <asp:ListItem>Department Wise</asp:ListItem>
               <asp:ListItem>Grade Wise</asp:ListItem>
               <asp:ListItem>Team Wise</asp:ListItem><asp:ListItem>Location Wise</asp:ListItem><asp:ListItem>Designation Wise</asp:ListItem><asp:ListItem>Category Wise</asp:ListItem><asp:ListItem>Employement Type Wise</asp:ListItem></asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <hr />
               </td>
               
               </tr>
               <tr>
            <td >From Date</td>         
            <td >
                <asp:DropDownList ID="Drp_FromDateDD" runat="server" CssClass="WebControls">
                </asp:DropDownList>
                <asp:DropDownList ID="Drp_FromDateMM" runat="server" CssClass="WebControls" >
                </asp:DropDownList>
                <asp:DropDownList ID="Drp_FromDateYYYY" runat="server"  CssClass="WebControls" >
                </asp:DropDownList></td>
            
                <td>To Date</td>
                <td>
                    <asp:DropDownList ID="Drp_ToDateDD" runat="server"  CssClass="WebControls" >
                    </asp:DropDownList>
                    <asp:DropDownList ID="Drp_ToDateMM" runat="server"  CssClass="WebControls">
                    </asp:DropDownList>
                    <asp:DropDownList ID="Drp_ToDateYYYY" runat="server"  CssClass="WebControls"  >
                    </asp:DropDownList></td>
                    <td>&nbsp;&nbsp;<asp:DropDownList ID="drp_ReportType"  runat="server"  CssClass="WebControls"   > </asp:DropDownList></td>
           
                      </tr>
                      <tr></tr>
                     
                      
                      <tr>
                      <td colspan="4">
                        <fieldset>
                            <legend>
                                <asp:CheckBox ID="chk_FilterEmployee"  Text="Filter Employee" runat="server" CssClass="WebControls" OnClick="javascript:chk_FilterEmployee_CheckedChanged();" /></legend>
                            <table cellpadding="1">
                                <tr>
                                    <td colspan="2">Employee Code</td>
                                        
                                    <td colspan="2">
                                        <asp:TextBox ID="txt_EmployeeCode" runat="server" Width="120px"  CssClass="WebControls"></asp:TextBox>
                                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="chk_Exact" runat="server"  Text="Exact"/>
                                    </td>
                                </tr>
                                <tr></tr>
                                <tr>
                                <td colspan="2">Employee Name</td>
                                <td colspan="2">
                                        <asp:TextBox ID="txt_EmployeeName" runat="server" Width="120px"  CssClass="WebControls"></asp:TextBox></td>
                                 </tr>
                                 <tr></tr>
                                 
                                 <tr>
                                 <td colspan="2">Employee Category</td>
                                        
                                    <td colspan="2">
                                        <asp:DropDownList ID="drp_EmployeeCategory" runat="server"  Width="125px"  CssClass="WebControls"></asp:DropDownList>
                                        
                                    </td>
                                 </tr>
                                 <tr></tr>
                                 <tr>
                                 <td colspan="2">Employee Designation</td>
                                        
                                    <td colspan="2">
                                    <asp:DropDownList ID="drp_EmployeeDesignation" runat="server" Width="125px"  CssClass="WebControls">
                                    </asp:DropDownList>
                                    </td>
                                 </tr>
                                 <tr></tr>
                                 <tr>
                                     <td colspan="2">Employee Location</td>
                                     <td colspan="2">  <asp:DropDownList ID="drp_EmployeeLocation" runat="server" Width="125px"  CssClass="WebControls">
                                    </asp:DropDownList></td>
                                     
                                     </tr>
                                     <tr></tr>
                                 <tr>
                                 <td colspan="2">Employee Type</td>
                                        
                                    <td colspan="2">
                                     <asp:DropDownList ID="drp_EmployeeType" runat="server" Width="125px"  CssClass="WebControls">
                                    </asp:DropDownList>
                                    </td>
                                 </tr>
                                  
                                 </table>
                                </fieldset>
                                </td>
                                <td> 
                                <fieldset style="border:none">
                            <legend></legend>
                            <table cellpadding="1">
                                <tr>
                                <td>
                                </td>
                                </tr>
                                <tr></tr>
                                <tr>
                                <td colspan="5">
                                   
                                </td>
                                </tr>  
                                
                                <tr>
                                <td>
                                </td>
                                </tr>
                                             
                            <tr>
                            <td></td>
                              </tr>
                                </table>
                                </fieldset>
                                 </td> 
                                </tr>
           
       
       
       <tr>
       <td colspan="2">
           <asp:CheckBox ID="chk_FilterCompany" runat="server"  Text="Filter Company" onClick="javascript:chk_FilterCompany_CheckChanged();"/> </td>
        <td colspan="2">   <asp:CheckBox ID="chk_FilterDepartment" runat="server"  CssClass="WebControls" Text="Filter Department"  onClick="javascript:chk_FilterDepartment_CheckChanged();"/></td>
        <td>   
        <asp:CheckBox ID="chk_FilterShift" Visible="false"  runat="server"  Text="Filter Shift"  CssClass="WebControls" onClick="javascript:chk_FilterShift_CheckChanged();"/>
           </td>
       </tr> 
       <tr><td colspan="2">
       <asp:ListBox ID="Lst_FilterCompany" runat="server"  Height="125px" Width="135px"  CssClass="WebControls" BorderStyle="Solid" BorderWidth="1px" SelectionMode="Multiple" ></asp:ListBox>      
              </td>
        <td colspan="2"> 
         <asp:ListBox ID="Lst_FilterDepartment" runat="server"  Height="125px" Width="135px"   CssClass="WebControls" BorderStyle="Solid" BorderWidth="1px" SelectionMode="Multiple"></asp:ListBox>      
        </td>
        <td >
        <asp:ListBox ID="Lst_FilterShift" Visible="false" runat="server" Height="125px" Width="135px"  CssClass="WebControls"  BorderStyle="Solid" BorderWidth="1px" SelectionMode="Multiple"></asp:ListBox>      
                
           </td></tr>
           <tr></tr>
           
            <tr><td colspan="2"> 
             <asp:RadioButton ID="rdo_SelectAllCompany" Checked="true" Text="Select All" onClick="javascript:chk_CompanySelectDeselectAll_Changed();"
                                                GroupName="a" runat="server" />&nbsp;&nbsp;
                                            <asp:RadioButton ID="rdo_DeselectAllCompany" Text="Deselect All" GroupName="a" runat="server"
                                                onClick="javascript:chk_CompanySelectDeselectAll_Changed();" />
                      </td> 
              <td colspan="2"> 
                    <asp:RadioButton ID="rdo_SelectAllDepartment" Checked="true" Text="Select All" onClick="javascript:chk_DepartmentSelectDeselectAll_Changed();"
                                                GroupName="b" runat="server" />&nbsp;&nbsp;
                                            <asp:RadioButton ID="rdo_DeselectAllDepartment" Text="Deselect All" GroupName="b"
                                                runat="server" onClick="javascript:chk_DepartmentSelectDeselectAll_Changed();" />
                      </td>   
                      
                      <td > 
                     <asp:LinkButton ID="Lnk_SelectAllShift" Visible="false" runat="server"   CssClass="WebControls" OnClientClick="return SelectAll(this);">Select All</asp:LinkButton> &nbsp;&nbsp;
                     <asp:LinkButton ID="Lnk_DeSelectAllShift" runat="server" Visible="false"   CssClass="WebControls" OnClientClick="return DeSelectAll(this);">Deselect All</asp:LinkButton>
                      </td>       
                       </tr>
                       <tr></tr>
                       <tr></tr>
                       <tr></tr>
                       
                       <tr>
                       <td colspan="5">
                       <fieldset>
                       <legend>
                           <asp:Label ID="Label1" runat="server" Text="Export File Format"   CssClass="WebControls"></asp:Label></legend>
                       <table>
                       <tr>
                       <td>Export File Format&nbsp;&nbsp;</td>
                       <td><asp:RadioButtonList ID="rbtn_FileFormat" RepeatDirection="Horizontal" runat="server"><asp:ListItem>Excel</asp:ListItem><asp:ListItem Selected="True">PDF</asp:ListItem><asp:ListItem>Image</asp:ListItem></asp:RadioButtonList></td>
                       </tr>
                       </table>
                         </fieldset>  
                       </td>
                       </tr>
                 <tr>
                 </tr>
                 <tr>
                     <td colspan="3">
                         <asp:CheckBox ID="chk_RecalculateAttendance" Visible="false" CssClass="WebControls"
                             runat="server" Text="Recalculate Attendance" />&nbsp;<asp:CheckBox ID="chk_ShowCompanyLogo" Checked="true"  Text="Show Company Logo"
                                runat="server" />
                     </td>
                     <td colspan="2" align="right">
                         <asp:Button ID="btn_GenerateReport" CssClass="WebControls" runat="server" Text="Generate Report"
                             OnClientClick="javascript:document.getElementById('ReportProtoType_lblStatus').innerHTML='';" />&nbsp;<input
                                 type="button" value="Close" id="btn_Close" style="font-size: 11px; font-family: Verdana;
                                 height: 20px;" onclick="ReportProtoType.Close();" />&nbsp;&nbsp;
                     </td>
                 </tr>
                 <tr>
       <td colspan="5">
       <hr />
       <asp:Label ID="lblStatus"    runat="server" CssClass="WebControls"  ForeColor="Red"   Height="20px"></asp:Label>
       </td>
       </tr>
                 
       
       </table>  
        
  </owd:Window>
       <%-- </owd:window>         --%>

                         <asp:LinkButton ID="Lnk_SelectAllCompany" Visible="false" runat="server"   CssClass="WebControls" Text="Select All" OnClientClick="return SelectAll(this);"></asp:LinkButton> &nbsp;&nbsp;
                     <asp:LinkButton ID="Lnk_DeSelectAllCompany" Visible="false" runat="server"   CssClass="WebControls" OnClientClick="return DeSelectAll(this);">Deselect All</asp:LinkButton>
                                          <asp:LinkButton ID="Lnk_SelectAllDepartment" Visible="false"  runat="server"   CssClass="WebControls" OnClientClick="return SelectAll(this);">Select All</asp:LinkButton> &nbsp;&nbsp;
                     <asp:LinkButton ID="Lnk_DeSelectAllDepartment" runat="server" Visible="false"    CssClass="WebControls" OnClientClick="return DeSelectAll(this);">Deselect All</asp:LinkButton>


    </div>
    
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
        
        //  FILTER SELECT STATUS  CHECK CHANGED
        

        
        
       
	            
        
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
	            else if
	            (FieldName=='ReportProtoType_Lnk_SelectAllShift')
	           
	            {
	            var ListViewObject=document.getElementById("<%=Lst_FilterShift.ClientID %>");
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
	            else if
	            (FieldName=='ReportProtoType_Lnk_DeSelectAllShift')
	           
	            {
	            var ListViewObject=document.getElementById("<%=Lst_FilterShift.ClientID %>");
		         for(var j=0;j<ListViewObject.options.length;j++)
		                {
		                        ListViewObject.options[j].selected=false;
		                }
		                return false;
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
        
       //  FILTER  SHIFT  CHECK CHANGED
         
        function chk_FilterShift_CheckChanged()
        {
        var checkStatus=document.getElementById("<%=chk_FilterShift.ClientId %>").checked;
      
        
        if (checkStatus)
        {
        document.getElementById("<%=Lst_FilterShift.ClientId %>").disabled=false;
        document.getElementById("<%=Lnk_SelectAllShift.ClientId %>").disabled=false;
        document.getElementById("<%=Lnk_DeSelectAllShift.ClientId %>").disabled=false;
        }
        else
        {
         document.getElementById("<%=Lst_FilterShift.ClientId %>").disabled=true;
        document.getElementById("<%=Lnk_SelectAllShift.ClientId %>").disabled=true;
        document.getElementById("<%=Lnk_DeSelectAllShift.ClientId %>").disabled=true;
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
