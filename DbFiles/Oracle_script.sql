CREATE TABLE  "ATTENDANCELOGS" 
   (	"ATTENDANCELOGID" NUMBER(10,0) NOT NULL ENABLE, 
	"ATTENDANCEDATE" DATE NOT NULL ENABLE, 
	"EMPLOYEEID" NUMBER(10,0) NOT NULL ENABLE, 
	"INTIME" VARCHAR2(255), 
	"INDEVICEID" VARCHAR2(255), 
	"OUTTIME" VARCHAR2(255), 
	"OUTDEVICEID" VARCHAR2(255), 
	"DURATION" FLOAT(126) NOT NULL ENABLE, 
	"LATEBY" NUMBER(10,0) NOT NULL ENABLE, 
	"EARLYBY" NUMBER(10,0) NOT NULL ENABLE, 
	"ISONLEAVE" NUMBER(10,0) NOT NULL ENABLE, 
	"LEAVETYPE" VARCHAR2(50), 
	"LEAVEDURATION" FLOAT(126), 
	"WEEKLYOFF" NUMBER(10,0) NOT NULL ENABLE, 
	"HOLIDAY" NUMBER(10,0) NOT NULL ENABLE, 
	"LEAVEREMARKS" VARCHAR2(4000), 
	"PUNCHRECORDS" LONG NOT NULL ENABLE, 
	"SHIFTID" NUMBER(10,0) NOT NULL ENABLE, 
	"PRESENT" FLOAT(126) NOT NULL ENABLE, 
	"ABSENT" FLOAT(126) NOT NULL ENABLE, 
	"STATUS" VARCHAR2(255) NOT NULL ENABLE, 
	"STATUSCODE" VARCHAR2(255) NOT NULL ENABLE, 
	"P1STATUS" VARCHAR2(255), 
	"P2STATUS" VARCHAR2(255), 
	"P3STATUS" VARCHAR2(255), 
	"ISONSPECIALOFF" NUMBER(10,0) NOT NULL ENABLE, 
	"SPECIALOFFTYPE" VARCHAR2(255), 
	"SPECIALOFFREMARK" VARCHAR2(255), 
	"SPECIALOFFDURATION" NUMBER(10,0), 
	"OVERTIME" NUMBER(10,0) NOT NULL ENABLE, 
	"OVERTIMEE" NUMBER(10,0) NOT NULL ENABLE, 
	"MISSEDOUTPUNCH" NUMBER(10,0) NOT NULL ENABLE, 
	"REMARKS" VARCHAR2(4000), 
	"MISSEDINPUNCH" NUMBER(10,0), 
        "LEAVETYPEID" NUMBER(10,0),
	"C1" VARCHAR2(255), 
	"C2" VARCHAR2(255), 
	"C3" VARCHAR2(255), 
	"C4" VARCHAR2(255), 
	"C5" VARCHAR2(255), 
	"C6" VARCHAR2(255), 
	"C7" VARCHAR2(255),
CONSTRAINT ATTENDANCELOGS_pk PRIMARY KEY (ATTENDANCELOGID, ATTENDANCEDATE,EMPLOYEEID)
   )
/
CREATE TABLE  "MASTERSETTINGS" 
   (	"MASTERDETAILSID" NUMBER(10,0) NOT NULL ENABLE, 
	"ISALPHANUMERICEMPLOYEECODE" NUMBER(10,0) NOT NULL ENABLE, 
	"ISFIXEDSHIFT" NUMBER(10,0) NOT NULL ENABLE, 
	"SHIFTBEGINTIME" VARCHAR2(255), 
	"SHIFTENDTIME" VARCHAR2(255), 
	"ISDEVICECODESAME" NUMBER(10,0) NOT NULL ENABLE, 
	"ATTENDANCEYEARSTARTMONTH" VARCHAR2(255), 
	"ATTENDANCEYEARSTARTDATE" VARCHAR2(255), 
	"EXTRAHOURSHIFTEXPIRES" NUMBER(10,0), 
	"LIECENCEKEY" VARCHAR2(255), 
	"PUNCHBEGINDURATION" NUMBER(10,0), 
	"VERSION" VARCHAR2(50), 
	"ISAUTOBACKUP" NUMBER(10,0) NOT NULL ENABLE, 
	"AUTOBACKUPPATH" VARCHAR2(255), 
	"BACKUPDAYS" NUMBER(10,0), 
	"LASTBACKUPDATE" VARCHAR2(50), 
	"MINDIFFBETWEENTWOPUNCH" NUMBER(10,0), 
	"ISAUTOSHIFT" NUMBER(10,0), 
	"C1" VARCHAR2(255), 
	"C2" VARCHAR2(255), 
	"C3" VARCHAR2(255), 
	"C4" VARCHAR2(255), 
	"C5" VARCHAR2(255), 
	"C6" VARCHAR2(255), 
	"C7" VARCHAR2(255), 
	"C8" VARCHAR2(255), 
	"C9" VARCHAR2(255), 
	"C10" VARCHAR2(255), 
	"C11" VARCHAR2(255), 
	"C12" VARCHAR2(255), 
	"C13" VARCHAR2(255), 
	"C14" VARCHAR2(255), 
	"C15" VARCHAR2(255),
	"MEMOABSENTSUBJECT" VARCHAR2(2000),
	"MEMOLATEEARLYSUBJECT" VARCHAR2(2000),
	"MEMOMISSEDPUNCHSUBJECT" VARCHAR2(2000),
	"MEMOSIGNATURE" VARCHAR2(2000),
	"MEMOABSENTTEXT" VARCHAR2(2000),
	"MEMOLATEEARLYTEXT" VARCHAR2(2000),
	"MEMOMISSEDPUNCHTEXT" VARCHAR2(2000),
                  "EMPLOYEEPHOTOPATH" VARCHAR2(255),
                   "VISITORPHOTOPATH" VARCHAR2(255),
                   "VISITORFINGERPRINTPATH" VARCHAR2(255),
                    "VEHICLEPHOTOPATH"  VARCHAR2(255),
                   "ISAUTOCLEARLOGS" NUMBER(10,0),
	CONSTRAINT MASTERSETTINGS_pk PRIMARY KEY (MASTERDETAILSID)
   )
/


CREATE TABLE  "CATEGORIES" 
   (	"CATEGORYID" NUMBER(10,0) NOT NULL ENABLE, 
	"CATEGORYFNAME" VARCHAR2(50) NOT NULL ENABLE, 
	"CATEGORYSNAME" VARCHAR2(50) NOT NULL ENABLE, 
	"OTFORMULA" VARCHAR2(50) NOT NULL ENABLE, 
	"MINOT" VARCHAR2(50), 
	"CONSIDERFIRSTLASTPUNCH" NUMBER(10,0) NOT NULL ENABLE, 
	"GRACETIME" VARCHAR2(50), 
	"CONSIDEREARLYPUNCH" NUMBER(10,0) NOT NULL ENABLE, 
	"CONSIDERLATEPUNCH" NUMBER(10,0) NOT NULL ENABLE, 
	"SUNDAYWEEKLYOFF" NUMBER(10,0) NOT NULL ENABLE, 
	"SATURDAYWEEKLYOFF" NUMBER(10,0) NOT NULL ENABLE, 
	"WEEKLYOFF1" VARCHAR2(50), 
	"WEEKLYOFF2" VARCHAR2(50), 
	"WHICHSATURDAY" VARCHAR2(50), 
	"CALCULATEHALFDAY" NUMBER(10,0) NOT NULL ENABLE, 
	"HALFDAYMINS" VARCHAR2(50), 
	"CALCULATEABSENTDAY" NUMBER(10,0) NOT NULL ENABLE, 
	"ABSENTDAYMINS" VARCHAR2(50), 
	"TRANSFERHPINTOCOMPOFF" NUMBER(10,0) NOT NULL ENABLE, 
	"TRANSFERWOPINTOCOMPOFF" NUMBER(10,0) NOT NULL ENABLE, 
	"DEDUCTBREAKHOURS" NUMBER(10,0) NOT NULL ENABLE, 
	"FORMISSEDPUNCH" NUMBER(10,0) NOT NULL ENABLE, 
	"RECORDSTATUS" NUMBER(10,0) DEFAULT 1 NOT NULL ENABLE, 
	"C1" VARCHAR2(255), 
	"C2" VARCHAR2(255), 
	"C3" VARCHAR2(255), 
	"C4" VARCHAR2(255), 
	"C5" VARCHAR2(255), 
	"C6" VARCHAR2(255), 
	"C7" VARCHAR2(255),
	"MARKWOANDHASABSENT" NUMBER(10,0) DEFAULT 1 ,
        "MARKASABSENTFORLATE"  NUMBER(10,0) , 
        "CONTIOUSLATEDAY"  NUMBER(10,0),  
        "ABSENTDAYTYPE"  VARCHAR2(255),
        "MARKWOANDHASPREDAYABSENT"  NUMBER(10,0),
CONSTRAINT CATEGORIES_pk PRIMARY KEY (CATEGORYID)
   )
/
CREATE TABLE  "COMPANIES" 
   (	"COMPANYID" NUMBER NOT NULL ENABLE, 
	"COMPANYFNAME" VARCHAR2(50) NOT NULL ENABLE, 
	"COMPANYSNAME" VARCHAR2(50) NOT NULL ENABLE, 
	"COMPANYADDRESS" VARCHAR2(255) DEFAULT '', 
	"COMPANYISVISIBLE" NUMBER(10,0) NOT NULL ENABLE, 
	"COMPANYEMAIL" VARCHAR2(50) NOT NULL ENABLE, 
	"COMPANYWEBSITE" VARCHAR2(50) NOT NULL ENABLE, 
	"RECORDSTATUS" NUMBER(10,0) DEFAULT 1, 
	"C1" VARCHAR2(255), 
	"C2" VARCHAR2(255), 
	"C3" VARCHAR2(255), 
	"C4" VARCHAR2(255), 
	"C5" VARCHAR2(255), 
	"C6" VARCHAR2(255), 
	"C7" VARCHAR2(255),
CONSTRAINT COMPANIES_pk PRIMARY KEY (COMPANYID)
   )
/
CREATE TABLE  "DEPARTMENTS" 
   (	"DEPARTMENTID" NUMBER(10,0) NOT NULL ENABLE, 
	"DEPARTMENTFNAME" VARCHAR2(50) NOT NULL ENABLE, 
	"DEPARTMENTSNAME" VARCHAR2(50) NOT NULL ENABLE, 
	"DESCRIPTION" VARCHAR2(2000), 
	"RECORDSTATUS" NUMBER(10,0) DEFAULT 1, 
	"C1" VARCHAR2(255), 
	"C2" VARCHAR2(255), 
	"C3" VARCHAR2(255), 
	"C4" VARCHAR2(255), 
	"C5" VARCHAR2(255), 
	"C6" VARCHAR2(255), 
	"C7" VARCHAR2(255),
CONSTRAINT DEPARTMENTS_pk PRIMARY KEY (DEPARTMENTID)
   )
/
CREATE TABLE  "COMPANYDEPARTMENTSHIFTS" 
   (	"COMPANYDEPARTMENTSHIFTID" NUMBER(10,0) NOT NULL ENABLE, 
	"COMPANYID" NUMBER(10,0) NOT NULL ENABLE, 
	"DEPARTMENTID" NUMBER(10,0) NOT NULL ENABLE, 
	"FROMDATE" DATE NOT NULL ENABLE, 
	"TODATE" DATE NOT NULL ENABLE, 
	"SHIFTID" NUMBER(10,0) NOT NULL ENABLE, 
	"SHIFTTYPE" VARCHAR2(50) NOT NULL ENABLE, 
	"LASTMODIFIEDDATE" DATE NOT NULL ENABLE,
CONSTRAINT COMPANYDEPARTMENTSHIFTS_pk PRIMARY KEY (COMPANYDEPARTMENTSHIFTID,COMPANYID,DEPARTMENTID,FROMDATE,TODATE,SHIFTID)
   )
/
CREATE TABLE  "DEVICES" 
   (	"DEVICEID" NUMBER(10,0) NOT NULL ENABLE, 
	"DEVICEFNAME" VARCHAR2(255) NOT NULL ENABLE, 
	"DEVICESNAME" VARCHAR2(255) NOT NULL ENABLE, 
	"DEVICEDIRECTION" VARCHAR2(255), 
	"SERIALNUMBER" VARCHAR2(255), 
	"CONNECTIONTYPE" VARCHAR2(255), 
	"IPADDRESS" VARCHAR2(255), 
	"BAUDRATE" VARCHAR2(255), 
	"COMMKEY" VARCHAR2(255) NOT NULL ENABLE, 
	"COMPORT" VARCHAR2(255), 
	"LASTLOGDOWNLOADDATE" DATE DEFAULT TO_DATE('01/01/1900', 'MM/DD/YYYY'), 
	"C1" VARCHAR2(255), 
	"C2" VARCHAR2(255), 
	"C3" VARCHAR2(255), 
	"C4" VARCHAR2(255), 
	"C5" VARCHAR2(255), 
	"C6" VARCHAR2(255), 
	"C7" VARCHAR2(255),
                 "TRANSACTIONSTAMP" VARCHAR2(50) DEFAULT  '0',
                  "LASTPING"  DATE,
                   "DEVICETYPE" VARCHAR2(255),
CONSTRAINT DEVICES_pk PRIMARY KEY (DEVICEID)
   )
/
CREATE TABLE  "DEVICELOGS" 
   (	"DEVICELOGID" NUMBER(10,0) NOT NULL ENABLE, 
	"DOWNLOADDATE" DATE, 
	"DEVICEID" NUMBER(10,0) NOT NULL ENABLE, 
	"USERID" VARCHAR2(50) NOT NULL ENABLE, 
	"LOGDATE" DATE NOT NULL ENABLE, 
	"DIRECTION" VARCHAR2(255), 
	"ATTDIRECTION" VARCHAR2(255), 
	"C1" VARCHAR2(255), 
	"C2" VARCHAR2(255), 
	"C3" VARCHAR2(255), 
	"C4" VARCHAR2(255), 
	"C5" VARCHAR2(255), 
	"C6" VARCHAR2(255), 
	"C7" VARCHAR2(255),
                   "WORKCODE" VARCHAR2(255),
CONSTRAINT DEVICESLOGS_pk PRIMARY KEY (DEVICELOGID,USERID,LOGDATE)
   )
/


CREATE TABLE  "EMPLOYEES" 
   (	"EMPLOYEEID" NUMBER(10,0) NOT NULL ENABLE, 
	"EMPLOYEENAME" VARCHAR2(50) NOT NULL ENABLE, 
	"EMPLOYEECODE" VARCHAR2(50) NOT NULL ENABLE, 
	"STRINGCODE" VARCHAR2(50) NOT NULL ENABLE, 
	"NUMERICCODE" NUMBER(10,0) NOT NULL ENABLE, 
	"GENDER" VARCHAR2(255) NOT NULL ENABLE, 
	"COMPANYID" NUMBER(10,0) NOT NULL ENABLE, 
	"DEPARTMENTID" NUMBER(10,0) NOT NULL ENABLE, 
	"DESIGNATION" VARCHAR2(255), 
	"CATEGORYID" NUMBER(10,0) NOT NULL ENABLE, 
	"DOJ" DATE DEFAULT TO_DATE('1900-01-01', 'YYYY/MM/DD'), 
	"DOR" DATE DEFAULT TO_DATE('3000-01-01', 'YYYY/MM/DD'), 
	"DOC" DATE DEFAULT TO_DATE('1900-01-01', 'YYYY/MM/DD'), 
	"EMPLOYEECODEINDEVICE" VARCHAR2(50) NOT NULL ENABLE, 
	"EMPLOYEERFIDNUMBER" VARCHAR2(255), 
	"EMPLOYEMENTTYPE" VARCHAR2(255) NOT NULL ENABLE, 
	"STATUS" VARCHAR2(255) NOT NULL ENABLE, 
	"EMPLOYEEDEVICEPASSWORD" VARCHAR2(50) DEFAULT ' ', 
	"EMPLOYEEDEVICEGROUP" VARCHAR2(50) DEFAULT ' ', 
	"FATHERNAME" VARCHAR2(255) DEFAULT ' ', 
	"MOTHERNAME" VARCHAR2(255) DEFAULT ' ', 
	"RESIDENTIALADDRESS" VARCHAR2(255) DEFAULT ' ', 
	"PERMANENTADDRESS" VARCHAR2(255) DEFAULT ' ', 
	"CONTACTNO" VARCHAR2(255) DEFAULT ' ', 
	"EMAIL" VARCHAR2(255) DEFAULT ' ', 
	"DOB" DATE DEFAULT TO_DATE('1900-01-01', 'YYYY-MM-DD'), 
	"PLACEOFBIRTH" VARCHAR2(255) DEFAULT ' ', 
	"NOMENEE1" VARCHAR2(255) DEFAULT ' ', 
	"NOMENEE2" VARCHAR2(255) DEFAULT ' ', 
	"REMARKS" LONG DEFAULT ' ', 
	"RECORDSTATUS" NUMBER(10,0) DEFAULT 1, 
	"C1" VARCHAR2(255), 
	"C2" VARCHAR2(255), 
	"C3" VARCHAR2(255), 
	"C4" VARCHAR2(255), 
	"C5" VARCHAR2(255), 
	"C6" VARCHAR2(255), 
	"C7" VARCHAR2(255),
"LOCATION" VARCHAR2(255),
"BLOODGROUP" VARCHAR2(255) DEFAULT ' ',
"WORKPLACE" VARCHAR2(255) DEFAULT ' ',
"EXTENSIONNO" VARCHAR2(255) DEFAULT ' ',
"LOGINNAME" VARCHAR2(255) DEFAULT ' ',
"LOGINPASSWORD" VARCHAR2(255) DEFAULT ' ',
CONSTRAINT EMPLOYEES_pk PRIMARY KEY (EMPLOYEEID)
   )
/
CREATE TABLE  "EMPLOYEELEAVES" 
   (	"EMPLOYEELEAVESID" NUMBER(10,0) NOT NULL ENABLE, 
	"EMPLOYEEID" NUMBER(10,0) NOT NULL ENABLE, 
	"LEAVETYPEID" NUMBER(10,0) NOT NULL ENABLE, 
	"LEAVEYEAR" NUMBER(10,0) NOT NULL ENABLE, 
	"ALLOWEDLEAVES" FLOAT(126) NOT NULL ENABLE,
CONSTRAINT EMPLOYEELEAVES_pk PRIMARY KEY (EMPLOYEELEAVESID)
   )
/
CREATE TABLE  "EMPLOYEESBIO" 
   (	"EMPLOYEEBIOID" NUMBER(10,0) NOT NULL ENABLE, 
	"EMPLOYEEID" NUMBER(10,0) NOT NULL ENABLE, 
	"BIOTYPE" VARCHAR2(50), 
	"BIOVERSION" VARCHAR2(50), 
	"BIOID" NUMBER(10,0) NOT NULL ENABLE, 
	"BIO" LONG,
CONSTRAINT EMPLOYEESBIO_pk PRIMARY KEY (EMPLOYEEBIOID)
   )
/
CREATE TABLE  "EMPLOYEESHIFT" 
   (	"EMPLOYEESHIFTID" NUMBER(10,0) NOT NULL ENABLE, 
	"SHIFTID" NUMBER(10,0) NOT NULL ENABLE, 
	"EMPLOYEEID" NUMBER(10,0) NOT NULL ENABLE, 
	"FROMDATE" DATE NOT NULL ENABLE, 
	"TODATE" DATE NOT NULL ENABLE, 
	"SHIFTTYPE" VARCHAR2(50) NOT NULL ENABLE,
CONSTRAINT EMPLOYEESHIFT_pk PRIMARY KEY (EMPLOYEESHIFTID,SHIFTID,EMPLOYEEID,FROMDATE,TODATE)
   )
/
CREATE TABLE  "EXTRAHOURSHIFT" 
   (	"EXTRAHOURSHIFTID" NUMBER(10,0) NOT NULL ENABLE, 
	"EMPLOYEEID" NUMBER(10,0) NOT NULL ENABLE, 
	"MULTISHIFTDATE" DATE NOT NULL ENABLE, 
	"ONBEHALFEMPLOYEEID" NUMBER(10,0) NOT NULL ENABLE, 
	"ISCOMPENSATED" NUMBER(10,0) NOT NULL ENABLE, 
	"COMPENSATEDDATE" DATE, 
	"REMARKS" VARCHAR2(4000),
CONSTRAINT EXTRAHOURSHIFT_pk PRIMARY KEY (EXTRAHOURSHIFTID)
   )
/
CREATE TABLE  "EXTRAHOURSHIFTACTION" 
   (	"EXTRAHOURSHIFTACTIONID" NUMBER(10,0) NOT NULL ENABLE, 
	"EMPLOYEEID" NUMBER(10,0), 
	"ACTION" VARCHAR2(255), 
	"ACTIONDATE" NUMBER(10,0), 
	"FROMEMPLOYEEID" NUMBER(10,0),
CONSTRAINT EXTRAHOURSHIFTACTION_pk PRIMARY KEY (EXTRAHOURSHIFTACTIONID)
   )
/
CREATE TABLE  "HOLIDAYS" 
   (	"HOLIDAYID" NUMBER(10,0) NOT NULL ENABLE, 
	"HOLIDAYNAME" VARCHAR2(50) NOT NULL ENABLE, 
	"COMPANYID" NUMBER(10,0) NOT NULL ENABLE, 
	"HOLIDAYDATE" DATE NOT NULL ENABLE, 
	"DESCRIPTION" VARCHAR2(255),
CONSTRAINT HOLIDAYS_pk PRIMARY KEY (HOLIDAYID)
   )
/
CREATE TABLE  "LEAVEENTRIES" 
   (	"LEAVEENTRYID" NUMBER(10,0) NOT NULL ENABLE, 
	"LEAVETYPEID" NUMBER(10,0) NOT NULL ENABLE, 
	"LEAVESTATUS" VARCHAR2(255), 
	"EMPLOYEEID" NUMBER(10,0) NOT NULL ENABLE, 
	"FROMDATE" DATE NOT NULL ENABLE, 
	"TODATE" DATE NOT NULL ENABLE, 
	"ISAPPROVED" NUMBER(10,0) NOT NULL ENABLE, 
	"APPROVEDBY" VARCHAR2(255), 
	"REMARKS" VARCHAR2(4000),
CONSTRAINT LEAVEENTRIES_pk PRIMARY KEY (LEAVEENTRYID,FROMDATE,TODATE,EMPLOYEEID)
   )
/
CREATE TABLE  "LEAVETYPES" 
   (	"LEAVETYPEID" NUMBER(10,0) NOT NULL ENABLE, 
	"LEAVETYPEFNAME" VARCHAR2(50) NOT NULL ENABLE, 
	"LEAVETYPESNAME" VARCHAR2(50) NOT NULL ENABLE, 
	"CARRYFORWARDLIMIT" NUMBER(10,0) NOT NULL ENABLE, 
	"GENDER" VARCHAR2(255) NOT NULL ENABLE, 
	"YEARLYLIMIT" VARCHAR2(50) NOT NULL ENABLE, 
	"CONSIDERWEEKLYOFF" NUMBER(10,0) NOT NULL ENABLE, 
	"CONSIDERHOLIDAY" NUMBER(10,0) NOT NULL ENABLE, 
	"MARKEDAS" VARCHAR2(255), 
	"DESCRIPTION" VARCHAR2(255), 
	"RECORDSTATUS" NUMBER(10,0) DEFAULT 1, 
	"C1" VARCHAR2(255), 
	"C2" VARCHAR2(255), 
	"C3" VARCHAR2(255), 
	"C4" VARCHAR2(255), 
	"C5" VARCHAR2(255), 
	"C6" VARCHAR2(255), 
	"C7" VARCHAR2(255),
"ISALLOWNEGATIVEBALANCE" NUMBER(10,0),
CONSTRAINT LEAVETYPES_pk PRIMARY KEY (LEAVETYPEID)
   )
/
CREATE TABLE  "PERMISSIONS" 
   (	"PERMISSIONID" NUMBER(10,0) NOT NULL ENABLE, 
	"PERMISSION" VARCHAR2(50) NOT NULL ENABLE,
CONSTRAINT PERMISSIONS_pk PRIMARY KEY (PERMISSIONID)
   )
/
CREATE TABLE  "REPORTCUSTOM" 
   (	"ID" NUMBER(10,0) NOT NULL ENABLE, 
	"REPORTNAME" VARCHAR2(255) NOT NULL ENABLE, 
	"REPORTFIELDVALUENAME" VARCHAR2(255) NOT NULL ENABLE, 
	"REPORTFIELDDISPLAYNAME" VARCHAR2(255) NOT NULL ENABLE, 
	"FIELDORDER" NUMBER(10,0) NOT NULL ENABLE,
CONSTRAINT REPORTCUSTOM_pk PRIMARY KEY (ID)
   )
/
CREATE TABLE  "SHIFTCALENDARSHIFTS" 
   (	"SHIFTCALENDARSHIFTID" NUMBER(10,0) NOT NULL ENABLE, 
	"SHIFTCALENDARID" NUMBER(10,0) NOT NULL ENABLE, 
	"SHIFTID" NUMBER(10,0) NOT NULL ENABLE, 
	"SHIFTDATE" DATE NOT NULL ENABLE,
CONSTRAINT SHIFTCALENDARSHIFTS_pk PRIMARY KEY (SHIFTCALENDARSHIFTID,SHIFTCALENDARID,SHIFTDATE)
   )
/
CREATE TABLE  "SHIFTS" 
   (	"SHIFTID" NUMBER(10,0) NOT NULL ENABLE, 
	"SHIFTFNAME" VARCHAR2(50) NOT NULL ENABLE, 
	"SHIFTSNAME" VARCHAR2(50) NOT NULL ENABLE, 
	"BEGINTIME" VARCHAR2(50), 
	"ENDTIME" VARCHAR2(50), 
	"BREAK1" NUMBER(10,0), 
	"BREAK2" NUMBER(10,0), 
	"BREAK1BEGINTIME" VARCHAR2(50), 
	"BREAK2BEGINTIME" VARCHAR2(50), 
	"BREAK1ENDTIME" VARCHAR2(50), 
	"BREAK2ENDTIME" VARCHAR2(50), 
	"SHIFTDURATION" NUMBER(10,0) DEFAULT 0 NOT NULL ENABLE, 
	"BREAK1DURATION" NUMBER(10,0) DEFAULT 0 NOT NULL ENABLE, 
	"BREAK2DURATION" NUMBER(10,0) DEFAULT 0 NOT NULL ENABLE, 
	"SHIFTTYPE" VARCHAR2(50) NOT NULL ENABLE, 
	"RECORDSTATUS" NUMBER(10,0) DEFAULT 1, 
	"C1" VARCHAR2(255), 
	"C2" VARCHAR2(255), 
	"C3" VARCHAR2(255), 
	"C4" VARCHAR2(255), 
	"C5" VARCHAR2(255), 
	"C6" VARCHAR2(255), 
	"C7" VARCHAR2(255),
                  "PUNCHBEGINDURATION"  NUMBER(10,0) DEFAULT 0 NOT NULL ENABLE, 
                  "PUNCHENDDURATION"  NUMBER(10,0) DEFAULT 0 NOT NULL ENABLE, 
CONSTRAINT SHIFTS_pk PRIMARY KEY (SHIFTID)
   )
/
CREATE TABLE  "SPECIALENTRIES" 
   (	"SPECIALENTRYID" NUMBER(10,0) NOT NULL ENABLE, 
	"SPECIALTYPE" VARCHAR2(255) NOT NULL ENABLE, 
	"EMPLOYEEID" NUMBER(10,0) NOT NULL ENABLE, 
	"SPECIALENTRYSTATUS" VARCHAR2(255), 
	"DURATION" NUMBER(10,0) NOT NULL ENABLE, 
	"FROMDATE" DATE NOT NULL ENABLE, 
	"TODATE" DATE NOT NULL ENABLE, 
	"BEGINTIME" VARCHAR2(255), 
	"ENDTIME" VARCHAR2(255), 
	"ISAPPROVED" NUMBER(10,0) NOT NULL ENABLE, 
	"APPROVEDBY" VARCHAR2(255), 
	"REMARKS" VARCHAR2(4000),
CONSTRAINT SPECIALENTRIES_pk PRIMARY KEY (SPECIALENTRYID,FROMDATE,TODATE,EMPLOYEEID)
   )
/
CREATE TABLE  "USERCOMPANIES" 
   (	"USERCOMPANYID" NUMBER(10,0) NOT NULL ENABLE, 
	"USERID" NUMBER(10,0) NOT NULL ENABLE, 
	"COMPANYID" NUMBER(10,0) NOT NULL ENABLE,
CONSTRAINT USERCOMPANIES_pk PRIMARY KEY (USERCOMPANYID)
   )
/
CREATE TABLE  "USERPERMISSIONS" 
   (	"USERPERMISSIONID" NUMBER(10,0) NOT NULL ENABLE, 
	"USERID" NUMBER(10,0) NOT NULL ENABLE, 
	"PERMISSIONID" NUMBER(10,0) NOT NULL ENABLE,
CONSTRAINT USERPERMISSIONS_pk PRIMARY KEY (USERPERMISSIONID)
   )
/
CREATE TABLE  "USERS" 
   (	"USERID" NUMBER NOT NULL ENABLE, 
	"LOGINNAME" VARCHAR2(50) NOT NULL ENABLE, 
	"LOGINPASSWORD" VARCHAR2(50), 
	"ROLENAME" VARCHAR2(255), 
	"ISADMIN" NUMBER(10,0) NOT NULL ENABLE, 
	"ACCESSI" NUMBER(10,0) NOT NULL ENABLE, 
	"RECORDSTATUS" NUMBER(10,0) DEFAULT 1, 
	"C1" VARCHAR2(255), 
	"C2" VARCHAR2(255), 
	"C3" VARCHAR2(255), 
	"C4" VARCHAR2(255), 
	"C5" VARCHAR2(255), 
	"C6" VARCHAR2(255), 
	"C7" VARCHAR2(255),
CONSTRAINT USERS_pk PRIMARY KEY (USERID)
   )
/
CREATE TABLE  "USERSFP" 
   (	"USERSFPID" NUMBER(10,0) NOT NULL ENABLE, 
	"USERPIN" VARCHAR2(50), 
	"PRIVILEGE" VARCHAR2(50), 
	"FID" NUMBER(10,0), 
	"FINGERPRINT" LONG,
CONSTRAINT USERSFP_pk PRIMARY KEY (USERSFPID)
   )
/
CREATE OR REPLACE TRIGGER  "TGR_USERSFP" 
BEFORE
insert on "USERSFP"
for each row
  WHEN (new.UsersFPId IS NULL) begin
 SELECT (SELECT NVL(MAX(UsersFPId),0)+1  FROM UsersFP)
      INTO   :new.UsersFPId
  FROM   dual;

end;

/
ALTER TRIGGER  "TGR_USERSFP" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_USERS" 
BEFORE
insert on "USERS"
for each row
 WHEN (new.UserId IS NULL) begin
SELECT (SELECT NVL(MAX(UserId),0)+1  FROM Users)
     INTO   :new.UserId
 FROM   dual;
end;
/
ALTER TRIGGER  "TGR_USERS" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_USERPERMISSIONS" 
BEFORE
insert on "USERPERMISSIONS"
for each row
 WHEN (new.USERPERMISSIONID IS NULL) begin
 SELECT (SELECT NVL(MAX(USERPERMISSIONID ),0)+1  FROM USERPERMISSIONS)
      INTO   :new.USERPERMISSIONID 
  FROM   dual;
end;
/
ALTER TRIGGER  "TGR_USERPERMISSIONS" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_USERCOMPANIES" 
BEFORE
insert on "USERCOMPANIES"
for each row
 WHEN (new.UserCompanyId IS NULL) begin
SELECT (SELECT NVL(MAX(UserCompanyId),0)+1  FROM UserCompanies)
     INTO   :new.UserCompanyId
 FROM   dual;
end;
/
ALTER TRIGGER  "TGR_USERCOMPANIES" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_SPECIALENTRIES" 
BEFORE
insert on "SPECIALENTRIES"
for each row

 WHEN (new.SpecialEntryId IS NULL) begin
 SELECT (SELECT NVL(MAX(SpecialEntryId),0)+1  FROM SpecialEntries)
      INTO   :new.SpecialEntryId
  FROM   dual;

end;

/
ALTER TRIGGER  "TGR_SPECIALENTRIES" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_SHIFTS" 
BEFORE
insert on "SHIFTS"
for each row
  WHEN (new.ShiftId IS NULL) begin
 SELECT (SELECT NVL(MAX(ShiftId),0)+1  FROM Shifts)
      INTO   :new.ShiftId
  FROM   dual;

end;

/
ALTER TRIGGER  "TGR_SHIFTS" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_SHIFTCALENDARSHIFTS" 
BEFORE
insert on "SHIFTCALENDARSHIFTS"
for each row

 WHEN (new.ShiftCalendarShiftId IS NULL) begin
 SELECT (SELECT NVL(MAX(ShiftCalendarShiftId),0)+1  FROM ShiftCalendarShifts)
      INTO   :new.ShiftCalendarShiftId
  FROM   dual;

end;

/
ALTER TRIGGER  "TGR_SHIFTCALENDARSHIFTS" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_REPORTCUSTOM" 
BEFORE
insert on "REPORTCUSTOM"
for each row

 WHEN (new.Id IS NULL) begin
 SELECT (SELECT NVL(MAX(Id),0)+1  FROM ReportCustom)
      INTO   :new.Id
  FROM   dual;

end;
/
ALTER TRIGGER  "TGR_REPORTCUSTOM" ENABLE
/

CREATE OR REPLACE TRIGGER  "TGR_MASTERSETTINGS" 
BEFORE
insert on "MASTERSETTINGS"
for each row
 WHEN (new.MasterDetailsId IS NULL) begin
 SELECT (SELECT NVL(MAX(MasterDetailsId),0)+1  FROM MasterSettings)
      INTO   :new.MasterDetailsId
  FROM   dual;
end;
/
ALTER TRIGGER  "TGR_MASTERSETTINGS" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_LEAVETYPES" 
BEFORE
insert on "LEAVETYPES"
for each row

 WHEN (new.LeaveTypeId IS NULL) begin
 SELECT (SELECT NVL(MAX(LeaveTypeId),0)+1  FROM LeaveTypes)
      INTO   :new.LeaveTypeId
  FROM   dual;

end;

/
ALTER TRIGGER  "TGR_LEAVETYPES" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_LEAVEENTRIES" 
BEFORE
insert on "LEAVEENTRIES"
for each row

 WHEN (new.LeaveEntryId IS NULL) begin
 SELECT (SELECT NVL(MAX(LeaveEntryId),0)+1  FROM LeaveEntries)
      INTO   :new.LeaveEntryId
  FROM   dual;

end;

/
ALTER TRIGGER  "TGR_LEAVEENTRIES" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_HOLIDAYS" 
BEFORE
insert on "HOLIDAYS"
for each row
  WHEN (new.HolidayId IS NULL) begin
 SELECT (SELECT NVL(MAX(HolidayId),0)+1  FROM Holidays)
      INTO   :new.HolidayId
  FROM   dual;

end;

/
ALTER TRIGGER  "TGR_HOLIDAYS" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_EXTRAHOURSHIFTACTION" 
BEFORE
insert on "EXTRAHOURSHIFTACTION"
for each row

 WHEN (new.ExtraHourShiftActionId IS NULL) begin
 SELECT (SELECT NVL(MAX(ExtraHourShiftActionId),0)+1  FROM ExtraHourShiftAction)
      INTO   :new.ExtraHourShiftActionId
  FROM   dual;

end;

/
ALTER TRIGGER  "TGR_EXTRAHOURSHIFTACTION" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_EXTRAHOURSHIFT" 
BEFORE
insert on "EXTRAHOURSHIFT"
for each row

 WHEN (new.ExtraHourshiftId IS NULL) begin
 SELECT (SELECT NVL(MAX(ExtraHourshiftId),0)+1  FROM ExtraHourshift)
      INTO   :new.ExtraHourshiftId
  FROM   dual;

end;

/
ALTER TRIGGER  "TGR_EXTRAHOURSHIFT" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_EMPLOYEESHIFT" 
BEFORE
insert on "EMPLOYEESHIFT"
for each row

 WHEN (new.EmployeeShiftId IS NULL) begin
 SELECT (SELECT NVL(MAX(EmployeeShiftId),0)+1  FROM EmployeeShift)
      INTO   :new.EmployeeShiftId
  FROM   dual;

end;

/
ALTER TRIGGER  "TGR_EMPLOYEESHIFT" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_EMPLOYEESBIO" 
BEFORE
insert on "EMPLOYEESBIO"
for each row
 
 WHEN (new.EmployeeBioId IS NULL) begin
 SELECT (SELECT NVL(MAX(EmployeeBioId),0)+1  FROM EmployeesBio)
      INTO   :new.EmployeeBioId
  FROM   dual;

end;

/
ALTER TRIGGER  "TGR_EMPLOYEESBIO" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_EMPLOYEES" 
BEFORE
insert on "EMPLOYEES"
for each row

 WHEN (new.EmployeeId IS NULL) begin
 SELECT (SELECT NVL(MAX(EmployeeId),0)+1  FROM Employees)
      INTO   :new.EmployeeId
  FROM   dual;

end;
/
ALTER TRIGGER  "TGR_EMPLOYEES" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_EMPLOYEELEAVES" 
BEFORE
insert on "EMPLOYEELEAVES"
for each row

 WHEN (new.EmployeeLeavesId IS NULL) begin
 SELECT (SELECT NVL(MAX(EmployeeLeavesId),0)+1  FROM EmployeeLeaves)
      INTO   :new.EmployeeLeavesId
  FROM   dual;

end;

/
ALTER TRIGGER  "TGR_EMPLOYEELEAVES" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_DEVICES" 
BEFORE
insert on "DEVICES"
for each row
  WHEN (new.DeviceId IS NULL) begin
 SELECT (SELECT NVL(MAX(DeviceId),0)+1  FROM Devices)
      INTO   :new.DeviceId
  FROM   dual;

end;

/
CREATE OR REPLACE TRIGGER  "TGR_DEVICELOGS" 
BEFORE
insert on "DEVICELOGS"
for each row

 WHEN (new.DeviceLogId IS NULL) begin
 SELECT (SELECT NVL(MAX(DeviceLogId),0)+1  FROM DeviceLogs)
      INTO   :new.DeviceLogId
  FROM   dual;

end;

/
ALTER TRIGGER  "TGR_DEVICELOGS" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_DEPARTMENT" 
BEFORE
insert on "DEPARTMENTS"
for each row

 WHEN (new.DepartmentId IS NULL) begin
 SELECT (SELECT NVL(MAX(DepartmentId),0)+1  FROM Departments)
      INTO   :new.DepartmentId
  FROM   dual;

end;
/
ALTER TRIGGER  "TGR_DEPARTMENT" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_COMPANYDEPARTMENTSHIFTS" 
BEFORE
insert on "COMPANYDEPARTMENTSHIFTS"
for each row 
 WHEN (new.CompanyDepartmentShiftId IS NULL) begin
 SELECT (SELECT NVL(MAX(CompanyDepartmentShiftId),0)+1  FROM CompanyDepartmentShifts)
      INTO   :new.CompanyDepartmentShiftId
  FROM   dual;

end;
/
ALTER TRIGGER  "TGR_COMPANYDEPARTMENTSHIFTS" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_COMPANIES" 
BEFORE
insert  on "COMPANIES"
for each row
 WHEN (new.CompanyId IS NULL) begin
 SELECT (SELECT NVL(MAX(CompanyId),0)+1  FROM COMPANIES)
      INTO   :new.CompanyId
  FROM   dual;
end;
/
ALTER TRIGGER  "TGR_COMPANIES" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_CATEGORIES" 
BEFORE
insert on "CATEGORIES"
for each row

 WHEN (new.CategoryId IS NULL) begin
 SELECT (SELECT NVL(MAX(CategoryId),0)+1  FROM Categories)
      INTO   :new.CategoryId
  FROM   dual;

end;
/
ALTER TRIGGER  "TGR_CATEGORIES" ENABLE
/
CREATE OR REPLACE TRIGGER  "TGR_ATTENDANCELOGS" 
BEFORE
insert on "ATTENDANCELOGS"
for each row
  WHEN (new.AttendanceLogId IS NULL) begin
 SELECT (SELECT NVL(MAX(AttendanceLogId),0)+1  FROM AttendanceLogs)
      INTO   :new.AttendanceLogId
  FROM   dual;

end;


/
ALTER TRIGGER  "TGR_ATTENDANCELOGS" ENABLE
/

Insert into Users(LoginName, LoginPassword, RoleName, IsAdmin, AccessI) values('essl', '79195F54068C15E0DC4AAFDC97740DFC', 'Admin', '-1', '-1')
/
Insert into Shifts(ShiftFName, ShiftSName, BeginTime, EndTime, Break1, Break2, Break1BeginTime, Break2BeginTime, Break1EndTime, Break2EndTime, ShiftType, ShiftDuration, Break1duration, Break2Duration,PunchBeginDuration,PunchEndDuration) values('Weekly Off', 'WO', '00:00', '00:00', 0, 0, ' ', ' ', ' ', ' ', 'Shift', 0, 0, 0 , 0, 0  )
/
Insert into Shifts(ShiftFName, ShiftSName, BeginTime, EndTime, Break1, Break2, Break1BeginTime, Break2BeginTime, Break1EndTime, Break2EndTime, ShiftType, ShiftDuration, Break1duration, Break2Duration,PunchBeginDuration,PunchEndDuration) values('Fixed Shift', 'FS', '09:30', '18:30', 0, 0, ' ', ' ', ' ', ' ', 'Shift', 540, 0, 0, 0, 0   )
/
Insert into Shifts(ShiftFName, ShiftSName, BeginTime, EndTime, Break1, Break2, Break1BeginTime, Break2BeginTime, Break1EndTime, Break2EndTime, ShiftType, ShiftDuration, Break1duration, Break2Duration,PunchBeginDuration,PunchEndDuration) values('No Shift', 'NS', '00:00', '00:00', 0, 0, ' ', ' ', ' ', ' ', 'Shift', 0, 0, 0  ,0 , 0 )
/
Insert into Shifts(ShiftFName, ShiftSName, BeginTime, EndTime, Break1, Break2, Break1BeginTime, Break2BeginTime, Break1EndTime, Break2EndTime, ShiftType, ShiftDuration, Break1duration, Break2Duration,PunchBeginDuration,PunchEndDuration) values('Holiday', 'H', '00:00', '00:00', 0, 0, ' ', ' ', ' ', ' ', 'Shift', 0, 0, 0 , 0, 0  )
/
Insert into Shifts(ShiftFName, ShiftSName, BeginTime, EndTime, Break1, Break2, Break1BeginTime, Break2BeginTime, Break1EndTime, Break2EndTime, ShiftType, ShiftDuration, Break1duration, Break2Duration,PunchBeginDuration,PunchEndDuration) values('General', 'GE', '09:30', '18:30', 0, 0, ' ', ' ', ' ', ' ', 'Shift', 540, 0, 0 , 0 , 0  )
/
Insert into Shifts(ShiftFName, ShiftSName, ShiftType) values('Sample Calendar1', 'Sam1', 'ShiftCalendar')
/
Insert into Companies(CompanyFName, CompanySName, CompanyAddress, CompanyIsVisible, CompanyeMail, CompanyWebsite) values('Default', 'Default', ' ', '-1', 'a@a.cpm', 'www.a.com')
/
Insert into Categories(CategoryFName, CategorySName, OTFormula, MinOT, GraceTime, ConsiderFirstLastPunch, ConsiderEarlyPunch, ConsiderLatePunch, SundayWeeklyOff, SaturdayWeeklyOff, WhichSaturday, CalculateHalfDay, HalfDayMins, CalculateAbsentDay, AbsentDayMins, DeductBreakHours, TransferHPintoCompOff, TransferWOPintoCompOff, ForMissedPunch, WeeklyOff1, WeeklyOff2,MarkAsAbsentForLate,ContiousLateDay,AbsentDayType,MarkWOandHAsPreDayAbsent) values('Default', 'Default', 'Out Punch - Shift End Time', '30', '15', '-1', '0', '-1', '-1', '-1', 'Every', '-1', '240', '-1', '120', '0', '-1', '-1', '0', '0', '6','0','0',' ' , '0')
/
Insert into LeaveTypes(LeaveTypeFName, LeaveTypeSName, Gender, ConsiderWeeklyOff, ConsiderHoliday, MarkedAs, CarryForwardLimit, YearlyLimit, Description,IsAllowNegativeBalance) values('Causal Leave', 'CL', 'All', '0', '0', 'Leave', '5', '10', ' ','-1')
/
Insert into LeaveTypes(LeaveTypeFName, LeaveTypeSName, Gender, ConsiderWeeklyOff, ConsiderHoliday, MarkedAs, CarryForwardLimit, YearlyLimit, Description,IsAllowNegativeBalance) values('Sick Leave', 'SL', 'All', '0', '0', 'Leave', '5', '10', ' ','-1')
/
Insert into LeaveTypes(LeaveTypeFName, LeaveTypeSName, Gender, ConsiderWeeklyOff, ConsiderHoliday, MarkedAs, CarryForwardLimit, YearlyLimit, Description,IsAllowNegativeBalance) values('Privilege leave', 'PL', 'All', '0', '0', 'Leave', '5', '10', ' ','-1')
/
Insert into Departments(DepartmentFName, DepartmentSname, Description) values('Default', 'Default', ' ')
/
Insert into Employees(EmployeeName, EmployeeCode, Gender, CompanyId, DepartmentId, Designation, CategoryId, EmployementType, Status, DOJ, DOR, DOC, EmployeeCodeInDevice, StringCode, NumericCode,Location) values('Test Employee1', '1', 'Male', '1', '1', 'Default', '1', 'Permanent', 'Working', To_Date('1900-01-01', 'YYYY-MM-DD'), To_Date('3000-01-01', 'YYYY-MM-DD'), To_Date('1900-01-01', 'YYYY-MM-DD'), '1', ' ', 2,' ')
/

insert into Permissions(PermissionId,Permission) values(1,'Users')
/
insert into Permissions(PermissionId,Permission) values(2,'ViewUsers') 
/
insert into Permissions(PermissionId,Permission) values(3,'AddUsers')
 /
insert into Permissions(PermissionId,Permission) values(4,'EditUsers') 
/
insert into Permissions(PermissionId,Permission) values(5,'DeleteUsers') 
/
insert into Permissions(PermissionId,Permission) values(6,'MasterSettings')
 /
insert into Permissions(PermissionId,Permission) values(7,'MailSettings') 
/
insert into Permissions(PermissionId,Permission) values(8,'Companies')
 /
insert into Permissions(PermissionId,Permission) values(9,'ViewCompanies') 
/
insert into Permissions(PermissionId,Permission) values(10,'AddCompanies') 
/
insert into Permissions(PermissionId,Permission) values(11,'EditCompanies')
 /
insert into Permissions(PermissionId,Permission) values(12,'DeleteCompanies')
 /
insert into Permissions(PermissionId,Permission) values(13,'Departments') 
/
insert into Permissions(PermissionId,Permission) values(14,'ViewDepartments')
 /
insert into Permissions(PermissionId,Permission) values(15,'AddDepartments') 
/
insert into Permissions(PermissionId,Permission) values(16,'EditDepartments') 
/
insert into Permissions(PermissionId,Permission) values(17,'DeleteDepartments') 
/
insert into Permissions(PermissionId,Permission) values(18,'EmpCategories') 
/
insert into Permissions(PermissionId,Permission) values(19,'ViewEmpCategories') 
/
insert into Permissions(PermissionId,Permission) values(20,'AddEmpCategories') 
/
insert into Permissions(PermissionId,Permission) values(21,'EditEmpCategories')
 /
insert into Permissions(PermissionId,Permission) values(22,'DeleteEmpCategories')
 /
insert into Permissions(PermissionId,Permission) values(23,'Shifts') 
/
insert into Permissions(PermissionId,Permission) values(24,'ViewShifts') 
/
insert into Permissions(PermissionId,Permission) values(25,'AddShifts') 
/
insert into Permissions(PermissionId,Permission) values(26,'EditShifts')
 /
insert into Permissions(PermissionId,Permission) values(27,'DeleteShifts') 
/
insert into Permissions(PermissionId,Permission) values(28,'ShiftCalendars') 
/
insert into Permissions(PermissionId,Permission) values(29,'ViewShiftCalendars') 
/
insert into Permissions(PermissionId,Permission) values(30,'AddShiftCalendars') 
/
insert into Permissions(PermissionId,Permission) values(31,'EditShiftCalendars') 
/
insert into Permissions(PermissionId,Permission) values(32,'DeleteShiftCalendars') 
/
insert into Permissions(PermissionId,Permission) values(33,'Holidays')
 /
insert into Permissions(PermissionId,Permission) values(34,'ViewHolidays') 
/
insert into Permissions(PermissionId,Permission) values(35,'AddHolidays') 
/
insert into Permissions(PermissionId,Permission) values(36,'EditHolidays') 
/
insert into Permissions(PermissionId,Permission) values(37,'DeleteHolidays') 
/
insert into Permissions(PermissionId,Permission) values(38,'Employees') 
/
insert into Permissions(PermissionId,Permission) values(39,'ViewEmployees') 
/
insert into Permissions(PermissionId,Permission) values(40,'AddEmployees')
 /
insert into Permissions(PermissionId,Permission) values(41,'EditEmployees')
 /
insert into Permissions(PermissionId,Permission) values(42,'DeleteEmployees')
 /
insert into Permissions(PermissionId,Permission) values(43,'LeaveTypes')
 /
insert into Permissions(PermissionId,Permission) values(44,'ViewLeaveTypes')
 /
insert into Permissions(PermissionId,Permission) values(45,'AddLeaveTypes') 
/
insert into Permissions(PermissionId,Permission) values(46,'EditLeaveTypes')
 /
insert into Permissions(PermissionId,Permission) values(47,'DeleteLeaveTypes') 
/
insert into Permissions(PermissionId,Permission) values(48,'DepartmentShifts') 
/
insert into Permissions(PermissionId,Permission) values(49,'ViewDepartmentShifts')
 /
insert into Permissions(PermissionId,Permission) values(50,'AddDepartmentShifts') 
/
insert into Permissions(PermissionId,Permission) values(51,'EditDepartmentShifts') 
/
insert into Permissions(PermissionId,Permission) values(52,'DeleteDepartmentShifts')
 /
insert into Permissions(PermissionId,Permission) values(53,'EmployeeShifts')
 /
insert into Permissions(PermissionId,Permission) values(54,'ViewEmployeeShifts') 
/
insert into Permissions(PermissionId,Permission) values(55,'AddEmployeeShifts') 
/
insert into Permissions(PermissionId,Permission) values(56,'EditEmployeeShifts') 
/
insert into Permissions(PermissionId,Permission) values(57,'DeleteEmployeeShifts') 
/
insert into Permissions(PermissionId,Permission) values(58,'LeaveEntries') 
/
insert into Permissions(PermissionId,Permission) values(59,'ViewLeaveEntries') 
/
insert into Permissions(PermissionId,Permission) values(60,'AddLeaveEntries') 
/
insert into Permissions(PermissionId,Permission) values(61,'EditLeaveEntries') 
/
insert into Permissions(PermissionId,Permission) values(62,'DeleteLeaveEntries') 
/
insert into Permissions(PermissionId,Permission) values(63,'OutDoorEntries') 
/
insert into Permissions(PermissionId,Permission) values(64,'ViewOutDoorEntries') 
/
insert into Permissions(PermissionId,Permission) values(65,'AddOutDoorEntries')
 /
insert into Permissions(PermissionId,Permission) values(66,'EditOutDoorEntries') 
/
insert into Permissions(PermissionId,Permission) values(67,'DeleteOutDoorEntries') 
/
insert into Permissions(PermissionId,Permission) values(68,'LogRecords') 
/
insert into Permissions(PermissionId,Permission) values(69,'ViewLogRecords') 
/
insert into Permissions(PermissionId,Permission) values(70,'AddLogRecords') 
/
insert into Permissions(PermissionId,Permission) values(71,'EditLogRecords') 
/
insert into Permissions(PermissionId,Permission) values(72,'DeleteLogRecords') 
/
insert into Permissions(PermissionId,Permission) values(73,'OTRegister') 
/
insert into Permissions(PermissionId,Permission) values(74,'LeaveSummary') 
/
insert into Permissions(PermissionId,Permission) values(75,'AttendanceLogs') 
/
insert into Permissions(PermissionId,Permission) values(76,'DeviceManagement')
 /
insert into Permissions(PermissionId,Permission) values(77,'ImportEmployees') 
/
insert into Permissions(PermissionId,Permission) values(78,'ExportEmployees')
 /
insert into Permissions(PermissionId,Permission) values(79,'BackUpDatabase') 
/
insert into Permissions(PermissionId,Permission) values(80,'BackupRestoreOldLogs') 
/
insert into Permissions(PermissionId,Permission) values(81,'AttendanceRegister') 
/
insert into Permissions(PermissionId,Permission) values(82,'GenerateReports') 
/
insert into Permissions(PermissionId,Permission) values(83,'OnlineDownloader')
 /
insert into Permissions(PermissionId,Permission) values(84,'VisitorManagement') 
/
insert into Permissions(PermissionId,Permission) values(85,'ManageWorkCode')
/
insert into Permissions(PermissionId,Permission) values(86,'ManageCanteen')
/
insert into Permissions(PermissionId,Permission) values(87,'PayrollManagement')
/
insert into  MasterSettings ( IsAlphaNumericEmployeeCode,  IsFixedShift,  ShiftBeginTime,  ShiftEndTime,  IsDeviceCodeSame,  AttendanceYearStartMonth,  AttendanceYearStartDate,  ExtraHourShiftExpires, LiecenceKey, PunchBeginDuration, Version, IsAutoBackUp, AutoBackuppath, BackupDays, LastBackUpDate, MinDiffBetweenTwoPunch, IsAutoShift, C1, C2, C3, C4, C5 ,IsAutoClearLogs)values(-1, 0, '09:00', '18:30', -1, '1', '1', 240, 'license key', 120, 'eTimeTrackLite 4.8', 0, ' ', 7, '1900-01-01', 5, 0, 'enterprise Software Solutions Lab(eSSL)', 'Bangalore', ' ', ' ', 'http://www.esslindia.com',0)
/
Insert into Devices(DeviceFName, DeviceSName, SerialNumber, DeviceDirection, ConnectionType, IpAddress, BaudRate, ComPort, CommKey,LastPing) values('Manual Entry','ME','0','altinout','Tcp/IP','0',' ',' ','0',To_Date('1900-01-01', 'YYYY-MM-DD'))
/
Insert into Devices(DeviceFName, DeviceSName, SerialNumber, DeviceDirection, ConnectionType, IpAddress, BaudRate, ComPort, CommKey,LastPing) values('System Entry','SE','0','altinout','Tcp/IP','0',' ',' ','0',To_Date('1900-01-01', 'YYYY-MM-DD'))
/
Update MasterSettings 
set  MemoAbsentSubject='ABSENTEEISM NOTICE/MEMO.', MemoLateEarlySubject='LATE-COMING/EARLY-GOING NOTICE/MEMO.', MemoMissedPunchSubject='MISSED OUT PUNCH NOTICE/MEMO.', MemoAbsentText='It has been observed from the Attendance Record that you were Absent from the duty unauthorisedly i.e. without permission on below said attendance date. Please give an explanation to the Authorised person immediately.', MemoLateEarlyText='It has been observed from the Attendance Record that you were  Coming Late or Going Early from the duty unauthorisedly i.e. without permission on below said attendance date. Please give an explanation to the Authorised person immediately.', MemoMissedPunchText='It  has been observed from the Attendance Record that you are not punching properly which is resulting into Missed Out Punch records in our attendance reports. Kindly explain the reason and co-operate with us to know exact out punch.', MemoSignature='Administrator'
/
CREATE TABLE  "LOGRECORDFORMAT" 
   (	"LOGFORMATID" NUMBER(10,0) NOT NULL ENABLE, 
	"STATUS" VARCHAR2(255), 
	"FILENAME" VARCHAR2(255), 
	"FILEFORMAT" VARCHAR2(255), 
	"SEPARATOR" VARCHAR2(255), 
	"DATAFIELD1" VARCHAR2(255), 
	"DATAFIELD2" VARCHAR2(255), 
	"DATAFIELD3" VARCHAR2(255), 
	"DATAFIELD4" VARCHAR2(255), 
	"DATAFIELD5" VARCHAR2(255), 
	"DATAFIELD6" VARCHAR2(255), 
	"DATAFIELD7" VARCHAR2(255), 
	"FORMAT1" VARCHAR2(255), 
	"FORMAT2" VARCHAR2(255), 
	"FORMAT3" VARCHAR2(255), 
	"FORMAT4" VARCHAR2(255), 
	"FORMAT5" VARCHAR2(255), 
	"FORMAT6" VARCHAR2(255), 
	"FORMAT7" VARCHAR2(255), 
	"LBL1" VARCHAR2(255), 
	"LBL2" VARCHAR2(255), 
	"INDIR" VARCHAR2(255), 
	"OUTDIR" VARCHAR2(255), 
	"BREAKIN" VARCHAR2(255), 
	"BREAKOUT" VARCHAR2(255), 
	"SQLSTATUS" VARCHAR2(255), 
	"MSACCESSSTATUS" VARCHAR2(255), 
	"ORACLESTATUS" VARCHAR2(255), 
	 CONSTRAINT "LOGFORMAT_PK" PRIMARY KEY ("LOGFORMATID") ENABLE
   )
/

CREATE OR REPLACE TRIGGER  "TGR_LOGRECORDFORMAT" BEFORE insert on "LOGRECORDFORMAT" for each row  WHEN (new.LOGFORMATID IS NULL) begin SELECT (SELECT NVL(MAX(LOGFORMATID),0)+1  FROM LOGRECORDFORMAT) INTO :new.LOGFORMATID FROM   dual; end;
/
ALTER TRIGGER  "TGR_LOGRECORDFORMAT" ENABLE
/
Insert into  LogRecordFormat(Status , FileName , FileFormat , Separator , DataField1 , DataField2 , DataField3 , DataField4 , DataField5 , DataField6 , DataField7 , Format1 , Format2 , Format3 , Format4 , Format5 , Format6 , Format7, Lbl1 , Lbl2 , InDir , OutDir , BreakIn , BreakOut , SqlStatus , MSAccessStatus , OracleStatus)values('True','dd-MM-yyyy','dat','Tab','Employee code','Punch DateTime','Device Id','Direction','None','None','None','9','dd-MMM-yyyy HH:mm:ss','9','0',' ',' ',' ','lbl_Out_Dir4','txt_OutDirSymbol4','0','1','3','2','False','False','False')
/
CREATE TABLE  "MAILDETAILS" 
   (	"MAILDETAILSID" NUMBER(10,0) NOT NULL ENABLE, 
	"EMAIL" VARCHAR2(255), 
	"SMTPHOST" VARCHAR2(255), 
	"PORT" VARCHAR2(255), 
	"ENABLESSL" NUMBER(10,0), 
	"DATAFIELD1" VARCHAR2(255), 
	"SMTPUSERNAME" VARCHAR2(255), 
	"SMTPPASSWORD" VARCHAR2(255), 
	 CONSTRAINT "MAILDETAIL_PK" PRIMARY KEY ("MAILDETAILSID") ENABLE
   )
/

CREATE OR REPLACE TRIGGER  "TGR_MAILDETAILS" BEFORE insert on "MAILDETAILS" for each row  WHEN (new.MAILDETAILSID IS NULL) begin SELECT (SELECT NVL(MAX(MAILDETAILSID),0)+1  FROM MAILDETAILS) INTO :new.MAILDETAILSID FROM   dual; end;
/
ALTER TRIGGER  "TGR_MAILDETAILS" ENABLE
/
Insert into  MailDetails(email , SMTPHost, Port , EnableSSL , SMTPUserName , SMTPPassword ) values  ('a@a.com' , 'SMTPHost' , '0' , 0 , 'SMTPUserName' , 'SMTPPassword')
/
Update  MasterSettings set EmployeePhotoPath=' ',VisitorPhotoPath=' ',VisitorFingerPrintPath=' '
/
ALTER TABLE SHIFTS ADD  ( ISGRACETIMEAPPLICABLE NUMBER(10,0) , GRACETIME VARCHAR2(255), ISPARTIALDAYAPPLICABLE NUMBER(10,0), PARTIALDAY VARCHAR2(255), PARTIALDAYBEGINTIME VARCHAR2(255), PARTIALDAYENDTIME VARCHAR2(255))
/
Update Shifts set IsGraceTimeApplicable = 0,GraceTime=' ', IsPartialDayApplicable= 0 , PartialDay=' ' , PartialDayBeginTime=' ' , PartialDayEndTime=' '
/
CREATE TABLE "VISITORS" 
( VISITORID NUMBER(10,0) NOT NULL ENABLE  , 
VISITORNAME VARCHAR2(255), 
VISITORCOMPANY VARCHAR2(255),
 ISREGULARVISITOR NUMBER(10,0), 
ISVIPVISITOR NUMBER(10,0), 
VISITORDESIGNATION VARCHAR2(255),
VISITORLOCATION VARCHAR2(255), 
VISITORADDRESS VARCHAR2(4000),
 VISITORPHONENO VARCHAR2(255),
VISITORMOBILENO VARCHAR2(255),
VISITOREMAIL VARCHAR2(255),
VISITORTYPE VARCHAR2(255), 
VISITORREMARKS VARCHAR2(4000), 
RECORDSTATUS NUMBER(10,0) DEFAULT 1,CONSTRAINT VISITOR_PK PRIMARY KEY (VISITORID)
)
 /
CREATE OR REPLACE TRIGGER  "TGR_VISITORS"  BEFORE insert on "VISITORS" for each row  WHEN (new.VISITORID IS NULL) begin SELECT (SELECT NVL(MAX(VISITORID),0)+1  FROM VISITORS) INTO :new.VISITORID FROM   dual; end;
/
ALTER TRIGGER  "TGR_VISITORS" ENABLE
 /
CREATE TABLE VISITORLOGS ( VISITORLOGID   NUMBER(10,0) NOT NULL ENABLE  , VISITORID NUMBER(10,0), EMPLOYEEID NUMBER(10,0), PURPOSE  VARCHAR2(255), VISITORINTIME DATE, VISITOROUTTIME DATE ,GATENO VARCHAR2(255), ISALONE NUMBER(10,0),VEHICLETYPE VARCHAR2(255),VECHILEREGNO VARCHAR2(255),VISITORLOGREMARKS VARCHAR2(4000),VISITORSTATUS VARCHAR2(255) ,IDCARD VARCHAR2(255),NOOFPEOPLE VARCHAR2(255), BADGEVALIDITY VARCHAR2(255), MATERIALCARRIED VARCHAR2(4000), CONSTRAINT VISITORLOG_PK PRIMARY KEY (VISITORLOGID))
/
CREATE OR REPLACE TRIGGER  "TGR_VISITORLOGS" BEFORE insert on "VISITORLOGS" for each row  WHEN (new.VISITORLOGID IS NULL) begin SELECT (SELECT NVL(MAX(VISITORLOGID),0)+1  FROM VISITORLOGS) INTO :new.VISITORLOGID FROM   dual; end;
/
ALTER TRIGGER  "TGR_VISITORLOGS" ENABLE
/
CREATE TABLE VISITORFINGERPRINTS (  VISITORFINGERPRINTID  NUMBER(10,0)  NOT NULL ENABLE  , VISITORID NUMBER(10,0), FPTEMPLATE1 VARCHAR2(4000), FPTEMPLATE2 VARCHAR2(4000), CONSTRAINT VISITORFINGERPRINT_PK PRIMARY KEY (VISITORFINGERPRINTID))
/
CREATE OR REPLACE TRIGGER  "TGR_VISITORFINGERPRINTS" BEFORE insert on "VISITORFINGERPRINTS" for each row  WHEN (new.VISITORFINGERPRINTID IS NULL) begin SELECT (SELECT NVL(MAX(VISITORFINGERPRINTID),0)+1  FROM VISITORFINGERPRINTS) INTO :new.VISITORFINGERPRINTID  FROM   dual; end;
/
ALTER TRIGGER  "TGR_VISITORFINGERPRINTS" ENABLE
/
CREATE TABLE VEHICLES ( VEHICLEID NUMBER(10,0) NOT NULL ENABLE, VEHICLENUMBER VARCHAR2(255), VEHICLEBRAND VARCHAR2(255), VEHICLEMODEL VARCHAR2(255), VEHICLEEDITION VARCHAR2(255), VEHICLEOWNERNAME VARCHAR2(255), VEHICLEOWNERPHONENUMBER VARCHAR2(255), VEHICLETYPE VARCHAR2(255), RECORDSTATUS NUMBER(10,0) DEFAULT 1 , CONSTRAINT VEHICLE_PK PRIMARY KEY (VEHICLEID))
/
CREATE OR REPLACE TRIGGER  "TGR_VEHICLES" BEFORE insert on "VEHICLES" for each row  WHEN (new.VEHICLEID IS NULL) begin SELECT (SELECT NVL(MAX(VEHICLEID),0)+1  FROM VEHICLES) INTO :new.VEHICLEID FROM   dual; end;
/
ALTER TRIGGER  "TGR_VEHICLES" ENABLE
/
CREATE TABLE VEHICLELOGS ( VEHICLELOGID NUMBER(10,0) NOT NULL ENABLE, VEHICLEID NUMBER(10,0), CONCERNPERSON NUMBER(10,0), PURPOSEOFENTRY  VARCHAR2(255), VEHICLEINTIME DATE, VEHICLEOUTTIME DATE ,GATENUMBER VARCHAR2(255), MATERIALCARRIEDINSIDE VARCHAR2(4000),STATUS VARCHAR2(255), BADGEVALIDITY VARCHAR2(255), BADGEREMARKS VARCHAR2(4000), CONSTRAINT VEHICLELOG_PK PRIMARY KEY (VEHICLELOGID))
/
CREATE OR REPLACE TRIGGER  "TGR_VEHICLELOGS" BEFORE insert on "VEHICLELOGS" for each row  WHEN (new.VEHICLELOGID IS NULL) begin SELECT (SELECT NVL(MAX(VEHICLELOGID),0)+1  FROM VEHICLELOGS) INTO :new.VEHICLELOGID FROM   dual; end;
/
ALTER TRIGGER  "TGR_VEHICLELOGS" ENABLE
/
CREATE TABLE WORKCODES ( WORKCODE   VARCHAR2(255) NOT NULL ENABLE, WORKCODENAME VARCHAR2(255), DESCRIPTION VARCHAR2(255),CONSTRAINT WORKCODE_PK PRIMARY KEY (WORKCODE))
/
Update Employees set BloodGroup = ' ' , WorkPlace=' ' , ExtensionNo=' '
/
Update  MasterSettings set VehiclePhotoPath=' '
/
Insert into WorkCodes(WorkCode,WorkCodeName,Description) values('0','0',' ')
/
CREATE TABLE CANTEENITEMS (CANTEENITEMID NUMBER(10,0) NOT NULL ENABLE, CANTEENITEMNAME VARCHAR2(255), CANTEENITEMCODE VARCHAR2(255), CANTEENITEMSNAME  VARCHAR2(255), EMPLOYEECONTRIBUTION VARCHAR2(255), EMPLOYERCONTRIBUTION VARCHAR2(255) , CONSTRAINT CANTEENITEM_PK PRIMARY KEY (CANTEENITEMID))
/
CREATE OR REPLACE TRIGGER  "TGR_CANTEENITEMS" BEFORE insert on "CANTEENITEMS" for each row  WHEN (new.CANTEENITEMID IS NULL) begin SELECT (SELECT NVL(MAX(CANTEENITEMID),0)+1  FROM CANTEENITEMS) INTO :new.CANTEENITEMID FROM   dual; end;
/
ALTER TRIGGER  "TGR_CANTEENITEMS" ENABLE
/
CREATE TABLE CANTEENTIMINGS (CANTEENTIMINGID NUMBER(10,0) NOT NULL ENABLE, CANTEENTIMINGNAME VARCHAR2(255), CANTEENTIMINGCODE VARCHAR2(255), BEGINTIME VARCHAR2(255), ENDTIME VARCHAR2(255) , DEFAULTITEM VARCHAR2(255) , CONSTRAINT CANTEENTIMING_PK PRIMARY KEY (CANTEENTIMINGID))
/
CREATE OR REPLACE TRIGGER  "TGR_CANTEENTIMINGS" BEFORE insert on "CANTEENTIMINGS" for each row  WHEN (new.CANTEENTIMINGID IS NULL) begin SELECT (SELECT NVL(MAX(CANTEENTIMINGID),0)+1  FROM CANTEENTIMINGS) INTO :new.CANTEENTIMINGID FROM   dual; end;
/
ALTER TRIGGER  "TGR_CANTEENTIMINGS" ENABLE
/
Update Devices set DeviceType = 'Attendance'
/
Update Devices set DeviceFName='Manual Entry(Canteen)',DeviceSName='ME(Canteen)',SerialNumber='',DeviceDirection='inout',ConnectionType='Tcp/IP',IpAddress='',BaudRate='',ComPort='', CommKey='0', DeviceType='Canteen' where DeviceId= 2
/
Update Devices set DeviceFName='Manual Entry(Attendance)',DeviceSName='ME(Attendance)',SerialNumber='',DeviceDirection='inout',ConnectionType='Tcp/IP',IpAddress='',BaudRate='',ComPort='', CommKey='0', DeviceType='Attendance' where DeviceId= 1
/
Insert into CanteenItems(CanteenItemName,CanteenItemCode,CanteenItemSName,EmployeeContribution,EmployerContribution) values('Tea/Coffee','1','T/C','0.75','2.00')
/
Insert into CanteenItems(CanteenItemName,CanteenItemCode,CanteenItemSName,EmployeeContribution,EmployerContribution) values('Lunch','2','Lunch','4.25','5.75')
/
Insert into CanteenItems(CanteenItemName,CanteenItemCode,CanteenItemSName,EmployeeContribution,EmployerContribution) values('Snacks','3','Snacks','2.75','5.25')
/
Insert into CanteenItems(CanteenItemName,CanteenItemCode,CanteenItemSName,EmployeeContribution,EmployerContribution) values('Dinner','4','Dinner','5.00','6.00')
/
Insert into CanteenTimings(CanteenTimingName,CanteenTimingCode,BeginTime,EndTime,DefaultItem) values ('Breakfast','Breakfast','06:30','11:29','1')
/
Insert into CanteenTimings(CanteenTimingName,CanteenTimingCode,BeginTime,EndTime,DefaultItem) values ('Lunch','Lunch','11:30','15:29','2')
/
Insert into CanteenTimings(CanteenTimingName,CanteenTimingCode,BeginTime,EndTime,DefaultItem) values ('Snacks1','Snacks1','15:30','18:29','3')
/
Insert into CanteenTimings(CanteenTimingName,CanteenTimingCode,BeginTime,EndTime,DefaultItem) values ('Dinner','Dinner','18:30','22:29','4')
/
Insert into CanteenTimings(CanteenTimingName,CanteenTimingCode,BeginTime,EndTime,DefaultItem) values ('Snacks2','Snacks2','22:30','06:29','1')
/
CREATE TABLE EMPLOYEEPAYDETAILS(EMPLOYEEPAYDETAILID NUMBER(10,0) NOT NULL ENABLE, EMPLOYEEID NUMBER(10,0), PAYMENTTYPE VARCHAR2(255), PANCARDNUMBER VARCHAR2(255), BANKNAME VARCHAR2(255), BANKACCOUNTNUMBER VARCHAR2(255) , ISCECODE VARCHAR2(255), PFNUMBER VARCHAR2(255) , ESICNUMBER VARCHAR2(255), PFSCHEME VARCHAR2(255) , CONSTRAINT EMPLOYEEPAYDETAILS_PK PRIMARY KEY (EMPLOYEEPAYDETAILID))
/
CREATE OR REPLACE TRIGGER  "TGR_EMPLOYEEPAYDETAILS" BEFORE insert on "EMPLOYEEPAYDETAILS" for each row  WHEN (new.EMPLOYEEPAYDETAILID IS NULL) begin SELECT (SELECT NVL(MAX(EMPLOYEEPAYDETAILID),0)+1  FROM EMPLOYEEPAYDETAILS) INTO :new.EMPLOYEEPAYDETAILID FROM   dual; end;
/
ALTER TRIGGER  "TGR_EMPLOYEEPAYDETAILS" ENABLE
/                      
CREATE TABLE LOANDETAILS (LOANID NUMBER(10,0) NOT NULL ENABLE, EMPLOYEEID NUMBER(10,0), LOANDATE DATE, LOANAMOUNT VARCHAR2(255), LOANTYPE VARCHAR2(255), INTERESTRATE VARCHAR2(255) , TOTALAMOUNT VARCHAR2(255), ISSALARYADVANCE  NUMBER(10,0),  REMARKS VARCHAR2(4000) , CONSTRAINT LOANDETAILS_PK PRIMARY KEY (LOANID))
/               
CREATE OR REPLACE TRIGGER  "TGR_LOANDETAILS" BEFORE insert on "LOANDETAILS" for each row  WHEN (new.LOANID IS NULL) begin SELECT (SELECT NVL(MAX(LOANID),0)+1  FROM LOANDETAILS) INTO :new.LOANID FROM   dual; end;
/                     
ALTER TRIGGER  "TGR_LOANDETAILS" ENABLE
/
CREATE TABLE LOANREPAYMENTS(LOANREPAYMENTID NUMBER(10,0) NOT NULL ENABLE, LOANID NUMBER(10,0), REPAYMENTMONTH VARCHAR2(255), TOTALAMOUNT VARCHAR2(255), REPAYMENTYEAR VARCHAR2(255), ISAUTODEDUCT NUMBER(10,0) , REMARKS VARCHAR2(4000) , CONSTRAINT LOANREPAYMENTS_PK PRIMARY KEY (LOANREPAYMENTID))
/                      
CREATE OR REPLACE TRIGGER  "TGR_LOANREPAYMENTS" BEFORE insert on "LOANREPAYMENTS" for each row  WHEN (new.LOANREPAYMENTID IS NULL) begin SELECT (SELECT NVL(MAX(LOANREPAYMENTID),0)+1  FROM LOANREPAYMENTS) INTO :new.LOANREPAYMENTID FROM   dual; end;
/
ALTER TRIGGER  "TGR_LOANREPAYMENTS" ENABLE
/
CREATE TABLE PAYSLIPDEDUCTIONS(PAYSLIPDEDUCTIONID NUMBER(10,0) NOT NULL ENABLE, PAYSLIPRECORDID NUMBER(10,0), DEDUCTIONTYPE VARCHAR2(255), AMOUNT VARCHAR2(255) , REMARKS VARCHAR2(4000) , CONSTRAINT PAYSLIPDEDUCTIONS_PK PRIMARY KEY (PAYSLIPDEDUCTIONID))
/             
CREATE OR REPLACE TRIGGER  "TGR_PAYSLIPDEDUCTIONS" BEFORE insert on "PAYSLIPDEDUCTIONS" for each row  WHEN (new.PAYSLIPDEDUCTIONID IS NULL) begin SELECT (SELECT NVL(MAX(PAYSLIPDEDUCTIONID),0)+1  FROM PAYSLIPDEDUCTIONS) INTO :new.PAYSLIPDEDUCTIONID FROM   dual; end;
/
ALTER TRIGGER  "TGR_PAYSLIPDEDUCTIONS" ENABLE
/
CREATE TABLE PAYSLIPEARNINGS(PAYSLIPEARNINGID NUMBER(10,0) NOT NULL ENABLE, PAYSLIPRECORDID NUMBER(10,0), EARNINGTYPE VARCHAR2(255), AMOUNT VARCHAR2(255) , REMARKS VARCHAR2(4000) , CONSTRAINT PAYSLIPEARNINGS_PK PRIMARY KEY (PAYSLIPEARNINGID))
/
CREATE OR REPLACE TRIGGER  "TGR_PAYSLIPEARNINGS" BEFORE insert on "PAYSLIPEARNINGS" for each row  WHEN (new.PAYSLIPEARNINGID IS NULL) begin SELECT (SELECT NVL(MAX(PAYSLIPEARNINGID),0)+1  FROM PAYSLIPEARNINGS) INTO :new.PAYSLIPEARNINGID FROM   dual; end;
/
ALTER TRIGGER  "TGR_PAYSLIPEARNINGS" ENABLE
/
CREATE TABLE PAYSLIPRECORDS(PAYSLIPRECORDID  NUMBER(10,0) NOT NULL ENABLE, PAYSLIPDATE DATE , EMPLOYEEID  NUMBER(10,0), BASIC VARCHAR2(255) ,HRA VARCHAR2(255), DA VARCHAR2(255) , CONVEYANCE VARCHAR2(255) , TDS VARCHAR2(255) , ESIC VARCHAR2(255) , PF VARCHAR2(4000) , PT VARCHAR2(255) , OTHOURS VARCHAR2(255) , OTPERHOUR VARCHAR2(255) , TOTALOT VARCHAR2(255) , LOPPERDAY VARCHAR2(255) , ABSENTDAYS VARCHAR2(255) , LWOPDAYS VARCHAR2(255) , TOTALLOP VARCHAR2(255) , ISFREEZED NUMBER(10,0),ESICEMPLOYERCONTRIBUTION VARCHAR2(255),PFEMPLOYERCONTRIBUTION VARCHAR2(255),  CONSTRAINT PAYSLIPRECORDS_PK PRIMARY KEY (PAYSLIPRECORDID))
/
CREATE OR REPLACE TRIGGER  "TGR_PAYSLIPRECORDS" BEFORE insert on "PAYSLIPRECORDS" for each row  WHEN (new.PAYSLIPRECORDID IS NULL) begin SELECT (SELECT NVL(MAX(PAYSLIPRECORDID),0)+1  FROM PAYSLIPRECORDS) INTO :new.PAYSLIPRECORDID FROM   dual; end;
/
ALTER TRIGGER  "TGR_PAYSLIPRECORDS" ENABLE
/
CREATE TABLE SALARYSTRUCTUREDEDUCTIONS(SALARYSTRUCTUREDEDUCTIONID NUMBER(10,0) NOT NULL ENABLE, SALARYSTRUCTUREID NUMBER(10,0), DEDUCTIONTYPE VARCHAR2(255), AMOUNT VARCHAR2(255) , REMARKS VARCHAR2(4000) , CONSTRAINT SALARYSTRUCTUREDEDUCTIONS_PK PRIMARY KEY (SALARYSTRUCTUREDEDUCTIONID))
/
CREATE OR REPLACE TRIGGER  "TGR_SALARYSTRUCTUREDEDUCTIONS" BEFORE insert on "SALARYSTRUCTUREDEDUCTIONS" for each row  WHEN (new.SALARYSTRUCTUREDEDUCTIONID IS NULL) begin SELECT (SELECT NVL(MAX(SALARYSTRUCTUREDEDUCTIONID),0)+1  FROM SALARYSTRUCTUREDEDUCTIONS) INTO :new.SALARYSTRUCTUREDEDUCTIONID FROM   dual; end;
/
ALTER TRIGGER  "TGR_SALARYSTRUCTUREDEDUCTIONS" ENABLE
/
CREATE TABLE SALARYSTRUCTUREEARNINGS(SALARYSTRUCTUREEARNINGID NUMBER(10,0) NOT NULL ENABLE, SALARYSTRUCTUREID NUMBER(10,0), EARNINGTYPE VARCHAR2(255), AMOUNT VARCHAR2(255) , REMARKS VARCHAR2(4000) , CONSTRAINT SALARYSTRUCTUREEARNINGS_PK PRIMARY KEY (SALARYSTRUCTUREEARNINGID))
/
CREATE OR REPLACE TRIGGER  "TGR_SALARYSTRUCTUREEARNINGS" BEFORE insert on "SALARYSTRUCTUREEARNINGS" for each row  WHEN (new.SALARYSTRUCTUREEARNINGID IS NULL) begin SELECT (SELECT NVL(MAX(SALARYSTRUCTUREEARNINGID),0)+1  FROM SALARYSTRUCTUREEARNINGS) INTO :new.SALARYSTRUCTUREEARNINGID FROM   dual; end;
/
ALTER TRIGGER  "TGR_SALARYSTRUCTUREEARNINGS" ENABLE
/
CREATE TABLE SALARYSTRUCTURES(SALARYSTRUCTUREID  NUMBER(10,0) NOT NULL ENABLE, EFFECTIVEDATE DATE , EMPLOYEEID  NUMBER(10,0), BASIC VARCHAR2(255) ,HRA VARCHAR2(255) , DA VARCHAR2(255) , CONVEYANCE VARCHAR2(255) , TDSAPPLICABLE NUMBER(10,0), TDS VARCHAR2(255) , ESICAPPLICABLE NUMBER(10,0),ESIC VARCHAR2(255) , ESICEMPLOYERCONTRIBUTION VARCHAR2(255) , PFAPPLICABLE NUMBER(10,0) , PF VARCHAR2(255) , PFEMPLOYERCONTRIBUTION  VARCHAR2(255) , PTAPPLICABLE NUMBER(10,0) , PT VARCHAR2(255) , OTAPPLICABLE NUMBER(10,0), OTPERHOUR VARCHAR2(255) , LOPAPPLICABLE NUMBER(10,0) , LOP VARCHAR2(255) , CONSTRAINT SALARYSTRUCTURES_PK PRIMARY KEY (SALARYSTRUCTUREID))
/
CREATE OR REPLACE TRIGGER  "TGR_SALARYSTRUCTURES" BEFORE insert on "SALARYSTRUCTURES" for each row  WHEN (new.SALARYSTRUCTUREID IS NULL) begin SELECT (SELECT NVL(MAX(SALARYSTRUCTUREID),0)+1  FROM SALARYSTRUCTURES) INTO :new.SALARYSTRUCTUREID FROM   dual; end;
/
ALTER TRIGGER  "TGR_SALARYSTRUCTURES" ENABLE
/
CREATE TABLE REIMBURSEMENTS (REIMBURSEMENTID NUMBER(10,0) NOT NULL ENABLE, EMPLOYEEID   NUMBER(10,0), REIMBURSEMENTDATE DATE , REIMBURSEMENTREASON VARCHAR2(255) , ISAPPROVED NUMBER(10,0), REIMBURSEMENTAMOUNT VARCHAR2(255) , REMARKS VARCHAR2(4000) , CONSTRAINT REIMBURSEMENTS_PK PRIMARY KEY (REIMBURSEMENTID))
/
CREATE OR REPLACE TRIGGER  "TGR_REIMBURSEMENTS" BEFORE insert on "REIMBURSEMENTS" for each row  WHEN (new.REIMBURSEMENTID IS NULL) begin SELECT (SELECT NVL(MAX(REIMBURSEMENTID),0)+1  FROM REIMBURSEMENTS) INTO :new.REIMBURSEMENTID FROM   dual; end;
/
ALTER TRIGGER  "TGR_REIMBURSEMENTS" ENABLE
/
CREATE TABLE EMPLOYEEDEPARTMENTS (EMPLOYEEDEPARTMENTID NUMBER(10,0) NOT NULL ENABLE, EMPLOYEEID NUMBER(10,0), DEPARTMENTID NUMBER(10,0), CONSTRAINT EMPLOYEEDEPARTMENT_PK PRIMARY KEY (EMPLOYEEDEPARTMENTID))
/
CREATE OR REPLACE TRIGGER  "TGR_EMPLOYEEDEPARTMENTS" BEFORE insert on "EMPLOYEEDEPARTMENTS" for each row  WHEN (new.EMPLOYEEDEPARTMENTID IS NULL) begin SELECT (SELECT NVL(MAX(EMPLOYEEDEPARTMENTID),0)+1  FROM EMPLOYEEDEPARTMENTS) INTO :new.EMPLOYEEDEPARTMENTID FROM   dual; end;
/
ALTER TRIGGER  "TGR_EMPLOYEEDEPARTMENTS" ENABLE
/
