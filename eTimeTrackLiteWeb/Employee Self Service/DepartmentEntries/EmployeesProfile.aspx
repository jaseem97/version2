<%@ page language="VB" autoeventwireup="false" inherits="EmployeesProfile, App_Web_fzgtou2n" %>
<%@ Register TagPrefix="obout" Namespace="Obout.Grid" Assembly="obout_Grid_NET" %>
<%@ Register TagPrefix="obout" Namespace="OboutInc.Flyout2" Assembly="obout_Flyout2_NET"%>
<%@ Register TagPrefix="obout" Namespace="OboutInc.Combobox" Assembly="obout_Combobox_Net" %>
<%@ Register TagPrefix="oem" Namespace="OboutInc.EasyMenu_Pro" Assembly="obout_EasyMenu_Pro" %>
<%@ Register TagPrefix="fup" Namespace="OboutInc.FileUpload" Assembly="obout_FileUpload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table cellpadding="2">
    <tr>
    <td>
    <table runat="server"  id="tab_EmpPersonalDetails" cellpadding="0" cellspacing="0" style="border-right: gray 1px solid; border-top: gray 1px solid;
                        border-left: gray 1px solid; border-bottom: gray 1px solid;">
                        <tr style="font-weight: bold; font-size: 14px; background-color: lightsteelblue;color: white;" >
                            <td colspan="2" style="font-weight: bold; font-size: 14px; background-color: lightsteelblue;padding:5px; color: white;" >
                                Employees List
                            </td>
                        </tr>
                        <tr style=" background-color: lightsteelblue; ">
                        <td colspan="2">
                        <hr />
                        </td>
                        </tr>
                        
                        <tr>
                            <td colspan="2" >
                             <obout:Grid ID="Dg_Employee" Width="100%" runat="server"  EnableRecordHover="true"  AutoGenerateColumns="false" FolderStyle="~/styles/grid/styles/premiere_blue" AllowAddingRecords="true" ShowLoadingMessage="true"
                         OnRebind="RebindGrid" OnInsertCommand="InsertRecord"  AllowFiltering="true">
                                    <ClientSideEvents OnClientInsert="OnInsert"/>
			        <TemplateSettings NewRecord_TemplateId="tplAddBtn" />
			        <Columns>
				        <obout:Column ID="Column0" Align="left" DataField="EmployeeId" Visible="false" Width="300" HeaderText="ShiftId" runat="server" />
				        <obout:Column ID="Column1"  DataField="EmployeeCode"  SortOrder="Asc"  Visible="true" Width="100" HeaderText="Emp Code" runat="server" />
                        <obout:Column ID="Column2" DataField="EmployeeName" Visible="true" Width="130" HeaderText="Emp Name" runat="server" />
                        <obout:Column ID="Column3" DataField="CompanySName" Visible="true" Width="115" HeaderText="Company" runat="server" />
                        <obout:Column ID="Column4" DataField="DepartmentSName" Visible="true" Width="115" HeaderText="Department" runat="server" />
                        <obout:Column ID="Column5" DataField="Designation" Visible="true" Width="115" HeaderText="Designation" runat="server" />
                        <obout:Column ID="Column6" DataField="Location" HeaderText="Location" Visible="true" Width="115"  runat="server" />
                        <obout:Column ID="Column7" DataField="CategorySName" Visible="true" Width="120" HeaderText="Category" runat="server" />
                        <obout:Column ID="Column8" DataField="EmployeesStatus" Visible="true" Width="80" HeaderText="Status" runat="server" />
                        <obout:Column ID="Column9" DataField="EmployementType" Visible="true" Width="110" HeaderText="Emp Type" runat="server" />
                        <obout:Column ID="Column10" DataField="CompanyId" Visible="false" Width="120"  runat="server" />
                        <obout:Column ID="Column11" DataField="DepartmentId" Visible="false" Width="120"  runat="server" />
                        <obout:Column ID="Column12" DataField="CategoryId" Visible="false" Width="120" runat="server" />
                        <obout:Column ID="Column13" DataField="DOB" Visible="false" Width="120"  runat="server" />
                        <obout:Column ID="Column14" DataField="FatherName" Visible="false" Width="120"  runat="server" />
                        <obout:Column ID="Column15" DataField="MotherName" Visible="false" Width="120"  runat="server" />
                        <obout:Column ID="Column16" DataField="ResidentialAddress" Visible="false" Width="120"  runat="server" />
                        <obout:Column ID="Column17" DataField="ContactNo" Visible="false" Width="120"  runat="server" />
                        <obout:Column ID="Column18" DataField="Email" Visible="false" Width="120"  runat="server" />
                        <obout:Column ID="Column19" DataField="PlaceOfBirth" Visible="false" Width="120"  runat="server" />
                        <obout:Column ID="Column20" DataField="Nomenee1" Visible="false" Width="120" runat="server" />
                        <obout:Column ID="Column21" DataField="Nomenee2" Visible="false" Width="120"  runat="server" />
                        <obout:Column ID="Column22" DataField="PermanentAddress" Visible="false" Width="120"  runat="server" />
                        <obout:Column ID="Column23" DataField="Remarks" Visible="false" Width="120"  runat="server" />
                        <obout:Column ID="Column24" DataField="EmployeeCodeInDevice" Visible="false" Width="120"  runat="server" />
                        <obout:Column ID="Column25" DataField="Gender" Visible="false" Width="120"  runat="server" />
                        <obout:Column ID="Column26" DataField="DOJ" Visible="false" Width="120"  runat="server" />
                        <obout:Column ID="Column27" DataField="DOC" Visible="false" Width="120"  runat="server" />
                        <obout:Column ID="Column28" DataField="DOR" Visible="false" Width="120"  runat="server" />
                        <obout:Column ID="Column29" DataField="BloodGroup" Visible="false" Width="120"  runat="server" />
                        <obout:Column  Width="100" HeaderText=""  AllowEdit="false" AllowDelete="false" Visible="true"><TemplateSettings TemplateId="tplOtherDetailsBtn" /></obout:Column>
			        </Columns>					
			        <Templates>
			            <obout:GridTemplate runat="server" ID="tplOtherDetailsBtn">
			                <Template>
			                <a href="javascript: //" id="grid_link_<%# Container.PageRecordIndex %>"  class="ob_gAL"  onclick="attachFlyout_OtherDetailsToLink(this,'Update')" >Other Details</a>
			                </Template>
			            </obout:GridTemplate>
        			    
			        </Templates>
		        </obout:Grid>
        	
	        </td>
                        </tr>
                    </table>
    </td>
    </tr>
    </table>
    
        
                    
        <obout:Flyout runat="server" ID="Flyout_OtherDetails" Align="left" Position="BOTTOM_left" CloseEvent="NONE" OpenEvent="NONE" DelayTime="500">
		            <table class="rowEditTable">
                            <tr>
                                <td >
                                    <fieldset>
                                        <legend>Employee Other Details</legend>
                                        <table>
                                            <tr>
                                                <td align="center" colspan="4" >
                                                    Employee Name:&nbsp;&nbsp;<asp:Label ID="lbl_EmpOtherName" runat="server" ForeColor="blue" ></asp:Label></td>
                                            </tr>
                                            
                                            <tr>
                                                <td colspan="4" >
                                                   <hr />
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                            <td>
                                            Fathers's Name
                                            </td>
                                            <td align="left">
                                                    <asp:TextBox ID="txt_fatherName" runat="server" Width="175px" ></asp:TextBox></td>
                                            <td>Mothers's Name</td>
                                            <td align="left"><asp:TextBox ID="txt_MotherName" runat="server" ></asp:TextBox></td>
                                            </tr>
                                            
                                            <tr>
                                            <td>
                                            Contact No.
                                            </td>
                                            <td align="left">
                                                    <asp:TextBox ID="txt_ContactNo" runat="server" Width="173px" ></asp:TextBox>
                                            </td>
                                            
                                             <td>
                                            Blood Group
                                            </td>
                                            <td align="left">
                                                    <asp:TextBox ID="txt_BloodGroup" runat="server"  ></asp:TextBox>
                                            </td>
                                            
                                            </tr>
                                            
                                            <tr>
                                            <td>Email Id</td>
                                            <td colspan="3" align="left"><asp:TextBox ID="txt_EmailId" Width="410px" runat="server" ></asp:TextBox></td>
                                            </tr>
                                            
                                            
                                            <tr>
                                            <td>
                                            Date of Birth
                                            </td>
                                            <td>
                                                   <select ID="drp_DOBDay" Enabled=false runat="server" EnableViewState="true" Width="46px">
                                                    </select>&nbsp;&nbsp;<select ID="drp_DOBMonth" runat="server" Enabled=false
                                                        EnableViewState="true" Width="48px">
                                                    </select>&nbsp;&nbsp;<select ID="drp_DOBYear" runat="server" Enabled=false
                                                        EnableViewState="true" Width="69px">
                                                    </select>
                                            &nbsp; &nbsp; &nbsp;</td>
                                            <td>Place of Birth</td>
                                            <td align="left"><asp:TextBox ID="txt_placeofBirth" runat="server" ></asp:TextBox></td>
                                            </tr>
                                            
                                            
                                            
                                            <tr>
                                            <td>
                                            Nominee1
                                            </td>
                                            <td align="left">
                                                    <asp:TextBox ID="txt_nominee1" runat="server" Width="173px" ></asp:TextBox>
                                            </td>
                                            <td>Nominee2</td>
                                            <td align="left"><asp:TextBox ID="txt_nominee2" runat="server" ></asp:TextBox></td>
                                            </tr>
                                            
                                            
                                            
                                            <tr>
                                            <td>
                                            Residentail Address
                                            </td>
                                            <td colspan="3" align="left">
                                                    <asp:TextBox ID="txt_ResidentailAddress" runat="server" TextMode="MultiLine" ></asp:TextBox></td>
                                            </tr>
                                            
                                            
                                            <tr>
                                            <td>
                                            Permanent Address
                                            </td>
                                            <td colspan="3" align="left">
                                                    <asp:TextBox ID="txt_PermanentAddress" runat="server" TextMode="MultiLine" ></asp:TextBox></td>
                                            </tr>
                                            
                                            
                                            <tr>
                                            <td>
                                            Remarks
                                            </td>
                                            <td colspan="3" align="left">
                                                    <asp:TextBox ID="txt_Remarks" runat="server" TextMode="MultiLine" ></asp:TextBox></td>
                                            </tr>
                                            
                                            
                                        </table>
                                    </fieldset>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:HiddenField ID="Hdn_EmployeeId" runat="server" />
                                    <asp:Label runat="server" foreColor="red" EnableViewState="false" ID="lbl_InvalidError"></asp:Label><input id="btn_OtherUpdate" type="button" value="Update" onclick="javascript:btn_Save_onclick();" />&nbsp;&nbsp;&nbsp;&nbsp;<input
                                        id="btn_OtherClose" type="button" value="Close" onclick="javascript:closeFlyout_OtherDetails();" />
                                </td>
                            </tr>
                          </table>
			        </obout:Flyout>
        			
        <script type="text/javascript">
        			
			        function OnInsert(record) 
	                    {
		                    document.getElementById("<%=lbl_InvalidError.ClientID %>").innerHTML = record.Error;
	                    }
        	
        		    
		            function populateEditControls(iRecordIndex) 
		            {	
		                document.getElementById( "<%=lbl_EmpOtherName.ClientID %>").innerHTML = Dg_Employee.Rows[iRecordIndex].Cells[2].Value+' : '+Dg_Employee.Rows[iRecordIndex].Cells[1].Value;
		                document.getElementById("<%=Hdn_EmployeeId.ClientID %>").value = Dg_Employee.Rows[iRecordIndex].Cells[0].Value;
                        SetValueInDropDown(document.getElementById('<%=drp_DOBDay.ClientID %>'),document.getElementById('<%=drp_DOBmonth.ClientID %>'),document.getElementById('<%=drp_DOBYear.ClientID %>'),Dg_Employee.Rows[iRecordIndex].Cells[13].Value);
		                document.getElementById("<%=txt_fatherName.ClientID %>").value = Dg_Employee.Rows[iRecordIndex].Cells[14].Value;
		                document.getElementById("<%=txt_MotherName.ClientID %>").value = Dg_Employee.Rows[iRecordIndex].Cells[15].Value;
		                document.getElementById("<%=txt_ContactNo.ClientID %>").value = Dg_Employee.Rows[iRecordIndex].Cells[17].Value;
		                document.getElementById("<%=txt_EmailId.ClientID %>").value = Dg_Employee.Rows[iRecordIndex].Cells[18].Value;
		                document.getElementById("<%=txt_placeofBirth.ClientID %>").value = Dg_Employee.Rows[iRecordIndex].Cells[19].Value;
		                document.getElementById("<%=txt_nominee1.ClientID %>").value = Dg_Employee.Rows[iRecordIndex].Cells[20].Value;
		                document.getElementById("<%=txt_nominee2.ClientID %>").value = Dg_Employee.Rows[iRecordIndex].Cells[21].Value;
		                document.getElementById("<%=txt_ResidentailAddress.ClientID %>").value = Dg_Employee.Rows[iRecordIndex].Cells[16].Value.replace(/<BR>/gi,'\n');;
		                document.getElementById("<%=txt_PermanentAddress.ClientID %>").value = Dg_Employee.Rows[iRecordIndex].Cells[22].Value.replace(/<BR>/gi,'\n');;
		                document.getElementById("<%=txt_BloodGroup.ClientID %>").value = Dg_Employee.Rows[iRecordIndex].Cells[29].Value;
		                document.getElementById("<%=txt_Remarks.ClientID %>").value = Dg_Employee.Rows[iRecordIndex].Cells[23].Value.replace(/<BR>/gi,'\n');
		           }
        		   
        		   
		               function btn_Save_onclick()
	                     {
	                        var oRecord = new Object();
	                        oRecord.Error='';
	                        Dg_Employee.executeInsert(oRecord);
	                     }
        		    
        		    
		                function SetValueInDropDown(ddobject,mmobject,yyobject,value)
		                {
		                    var myDate = new Date(value);
		                    var Day=myDate.getDate();
		                    var Month=myDate.getMonth()+1;
		                    var Year=myDate.getFullYear();
		                    ddobject.value='';
		                    mmobject.value='';
		                    yyobject.value='';
		                    ddobject.value=Day;
		                    mmobject.value=Month;
		                    yyobject.value=Year;
		                }
        		    
                   
        		    
		            function clearFlyout_OtherDetails() 
                    {
                        document.getElementById("<%=txt_fatherName.ClientID %>").value = '';
		                document.getElementById("<%=txt_MotherName.ClientID %>").value = '';
		                document.getElementById("<%=txt_ContactNo.ClientID %>").value = '';
		                document.getElementById("<%=txt_EmailId.ClientID %>").value = '';
		                document.getElementById("<%=txt_placeofBirth.ClientID %>").value = '';
		                document.getElementById("<%=txt_nominee1.ClientID %>").value = '';
		                document.getElementById("<%=txt_nominee2.ClientID %>").value = '';
		                document.getElementById("<%=txt_ResidentailAddress.ClientID %>").value = '';
		                document.getElementById("<%=txt_PermanentAddress.ClientID %>").value = '';
		                document.getElementById("<%=txt_Remarks.ClientID %>").value = '';
		                document.getElementById("<%=Lbl_InvalidError.ClientID %>").innerHTML ='';
		                var now=new Date();
                        var year=now.getFullYear();
                        var month=now.getMonth()+1;
                        var day=now.getDate();
                        var Date1=month+'/'+day+'/'+year;
                        SetValueInDropDown(document.getElementById('<%=drp_DOBDay.ClientID %>'),document.getElementById('<%=drp_DOBmonth.ClientID %>'),document.getElementById('<%=drp_DOBYear.ClientID %>'),Date1);
		            }
        		    
        		    
        		    
        		    
		             function attachFlyout_OtherDetailsToLink(oLink,Action)
		             {	
		                closeFlyout_OtherDetails();
		                <%=Flyout_OtherDetails.getClientID()%>.AttachTo(oLink.id);		            		            
		                <%=Flyout_OtherDetails.getClientID()%>.Open();
		                clearFlyout_OtherDetails();
		                if(Action=='Update')
		                {
		                    populateEditControls(oLink.id.toString().replace("grid_link_", ""));
		                }
                     }
        		    
        		
        		    
		            function closeFlyout_OtherDetails() 
		            {
		                <%=Flyout_OtherDetails.getClientID()%>.Close();
		            }
        		    
        		    
        		     
        		    
		        </script>
    </div>
    </form>
</body>
</html>
