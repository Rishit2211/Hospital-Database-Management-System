select * from tbl_ClinicDetails

select * from PatientMaster

select * from PatientMaster where ClinicID = 4

select * from PatientMaster where FName = 'Rishit'

select * from tbl_ClinicDetails where AddressLine1 = 'Vadodara' or AddressLine1 = 'Ahmedabad'

select * from PatientMaster where age = 4

select * from PatientMaster where Gender = 'Male' and LastName = 'Patel'

select * from InvoiceMaster where ClinicID = 15 

select * from PatientMaster where Area = '' and PatientCode = 'p4'

select * from Enquiry where ClinicID = 15

select * from InvoiceMaster where ClinicID = 15 and PaidAmount > = 100000

select * from InvoiceMaster where TotalDiscount <= 1000

select * from InvoiceMaster where TotalDiscount <= 1000 and ClinicID = 4

select * from PatientMaster where Gender = 'Male'

select * from InvoiceMaster where PaidAmount >= 50000 and PaidAmount <= 100000 and ClinicID = 15

select * from tbl_DoctorDetails where IsDeleted = 1

select * from InvoiceMaster where DoctorID = 42

select * from InvoiceDetails where DoctorID = 32

select * from InvoiceMaster order by TotalCost desc

select * from PatientMaster where ClinicID = 4 and Gender = 'male' order by Age desc

select * from InvoiceDetails order by TotalTax desc

select * from InvoiceMaster where PendingAmount > 50000 order by PendingAmount

select * from PatientMaster where age > 0 order by Age asc

select Age, Gender,FName from PatientMaster where Age >= 45 or gender = 'Male'

select * from Enquiry where FirstName = 'demo' or LastName = 'patel'

select * from PatientMaster where ClinicID = 14 and (Age >= 44 or Gender = 'Male') and Area !=''

select * from PatientMaster where not Age = 0 and (Age = 45 or Age > 10)

select * from InvoiceMaster where not TotalDiscount = 0 and (TotalCost >= 50000 or GrandTotal >= 51000)

select distinct FName,LastName,Mobile from PatientMaster where FName = 'Anjali'

select  ClinicID from PatientMaster

select distinct patientid from InvoiceMaster

select * from InvoiceMaster where patientid in (0,2,3,4,13,14,15) order by patientid asc

select distinct DoctorID from InvoiceDetails

select distinct patientid from InvoiceMaster where ClinicID = 15

select * from PatientMaster where Age is null and ClinicID = 3

select * from PatientMaster where Mobile is not null and ClinicID = 15 and Mobile != ''

select * from PatientMaster where FName = 'Rishit'

update PatientMaster set LastName = 'Patel' where patientid = 5905

update PatientMaster set Address = 'Vadodara', Area = 'Manjalpur' where patientid = 5905

update PatientMaster set BOD = '2003-11-22', BloodGroup = 'O+', Age = 22,
Email = 'rp160120@gmail.com', Telephone = '852369741258', ProfileImage = 'Rishit2010'
where patientid = 5905

select * from PatientMaster where ClinicID = 1 and LastName = 'NA'

update PatientMaster set LastName = 'NA' where ClinicID = 1 and LastName = ''

select * from PatientMaster where ClinicID = 14 order by age desc

select top 5 * from PatientMaster where ClinicID = 14 order by age desc

select top 50 percent * from PatientMaster where ClinicID = 14 order by age desc

select top 5 percent * from PatientMaster where ClinicID = 14 order by age desc

select * from PatientMaster where FName in ('Mihir', 'Rishit', 'Raj', 'Preet')

select * from InvoiceMaster where ClinicID in (1,4,44) order by ClinicID desc

select * from InvoiceDetails where TreatmentID in (1,4,8) order by TreatmentID desc

select * from PatientMaster where patientid in (select distinct patientid from InvoiceMaster)

select * from PatientMaster where EnquiryId in (select EnquiryId from Enquiry)

select * from PatientMaster where patientid in (select patientid from InvoiceDetails)

select * from tbl_ClinicDetails where ClinicID in (select ClinicID from Enquiry)

select * from tbl_ClinicDetails where ClinicID in (select ClinicID from PatientMaster)

select * from tbl_DoctorDetails where DoctorID in (select DoctorID from InvoiceDetails)

select * from PatientMaster where patientid in (select patientid from InvoiceDetails)
and patientid in (select patientid from InvoiceMaster)

select * from PatientMaster where patientid in (select patientid from InvoiceDetails)
and patientid not in (select patientid from InvoiceMaster)

select * from Enquiry where EnquiryID in (select distinct EnquiryId from PatientMaster
where patientid not in (select distinct patientid from InvoiceDetails))

select * from tbl_DoctorDetails where DoctorID in (select distinct DoctorID from DoctorByClinic
where DoctorID not in (select distinct DoctorID from InvoiceDetails))

select * from PatientMaster where patientid in (select distinct patientid from InvoiceMaster 
where PaidAmount >= 25000 and PaidAmount <= 75000) and gender = 'male'

select * from Enquiry where EnquiryDate between '2003-11-22' and '2019-12-31' 
order by EnquiryDate

select * from InvoiceMaster where PayDate between '2019-05-01' and '2019-05-31' and PaidAmount
between 25000 and 35000 order by PayDate

select * from PatientMaster where FName like 'Ris%'

select * from PatientMaster where FName like '%Ris'

select * from PatientMaster where FName like '%Ris%'

select * from PatientMaster where Mobile like '%5441%'

select * from PatientMaster where Mobile like '09%'

select * from PatientMaster where Mobile like '_88%'

select * from PatientMaster where Mobile like '_88_99%'

select * from PatientMaster where Mobile like '88_9%'

select * from PatientMaster where Address like 'Mumbai'

select * from PatientMaster where Address like '%Vadodara%'

select FName + ' ' + LastName as [Patient FullName] ,* from PatientMaster 
where FName + ' ' + LastName like '%rish%'

select FName + ' ' + LastName + ' (' + Mobile + ') '  ,* from PatientMaster
where FName + ' ' + LastName + ' (' + Mobile + ') ' like '%09%'

select FName + ' ' + LastName + ' ( ' + Mobile + ' ) ' [Patient Name & No.] ,* from PatientMaster
where FName + ' ' + LastName + ' ( ' + Mobile + ' ) ' like '%pate%'

SELECT FName + ' ' + LastName + ' ( ' + Mobile + ' ) ' + CAST(patientid as nvarchar(20))
[Patient Name & No.],* FROM PatientMaster WHERE FName + ' ' + LastName + ' ( ' + Mobile + ' ) ' + 
CAST(patientid as nvarchar(20)) like '%pate%'

SELECT FName + ' ' + LastName + ' ( ' + Mobile + ' ) ' + CAST(patientid as nvarchar(20))
[Patient Name & No.],* FROM PatientMaster WHERE FName + ' ' + LastName + ' ( ' + Mobile + ' ) ' + 
CAST(patientid as nvarchar(20)) like '%pate%' and patientid like '5'

select * from PatientMaster where FName like '%[IND]'

select * from PatientMaster where FName like '[IND]%'

select * from PatientMaster where FName like '%[IND]__[IA]'

select * from PatientMaster where FName like '[IND]__[IA]%'

select * from PatientMaster where FName like '__[IA]%'

select * from PatientMaster where FName like '%he_A'

select * from PatientMaster where FName like 'R_SHIT%'

select COUNT(patientid) as [Total Patient] from PatientMaster where IsActive = 1

select COUNT(ClinicID) [Total No of Clinic Payments], SUM(PaidAmount) [Total Paid Amount], 
MIN(PaidAmount) [Minimum Paid Amount], MAX(PaidAmount) [Maximum Paid Amount], 
AVG(PaidAmount) [Average Paid Amount] from InvoiceMaster where PaidAmount > 0

select COUNT(PaidAmount) [Total No of Payments], SUM(PaidAmount) [Total Paid Amount], 
MIN(PaidAmount) [Minimum Paid Amount], MAX(PaidAmount) [Maximum Paid Amount], 
AVG(PaidAmount) [Average Paid Amount] from InvoiceMaster where PaidAmount > 0

--find a no of patient who did payment

select count(distinct patientid) [No of Patient]from InvoiceMaster where PaidAmount > 0

--find a no of clinic who collect payment

select count(distinct ClinicID)  [No of Clinic]from InvoiceMaster where PaidAmount > 0

select ClinicID, COUNT(patientid) [No of Patient] from PatientMaster
group by ClinicID

select * from PatientMaster where ClinicID = 89

select ClinicID, COUNT(EnquiryID) [No of Enquiry] from Enquiry
group by ClinicID

select * from Enquiry where ClinicID = 89

select ClinicID, count(DoctorID) [No of Doctor] from tbl_DoctorDetails
group by ClinicID

select ClinicID, count(InvoiceTid) [No of Collection] from InvoiceMaster where PaidAmount between 100000 and 500000
group by ClinicID

select * from InvoiceMaster where ClinicID = 4 and PaidAmount between 100000 and 500000

select patientid, count(InvoiceTid) [No of Payment By Patient] from InvoiceMaster
group by patientid

select * from InvoiceMaster where patientid = 8028

select patientid, sum(PaidAmount) [Total Payment By Patient] from InvoiceMaster
group by patientid

select DoctorID, count(ClinicID) [Doctor's Clinic Visit] from DoctorByClinic
group by DoctorID

select * from DoctorByClinic where DoctorID = 34

select DoctorID, count(TreatmentID) [No of Treatment Done by Doctor] from InvoiceDetails
group by DoctorID

select * from InvoiceDetails where DoctorID = 138

select Gender, COUNT(patientid) [Patient Gender] from PatientMaster
group by Gender

select Mobile, COUNT(patientid) [No of Same Number] from PatientMaster
group by Mobile having COUNT(patientid) > 1

select patientid, SUM(PaidAmount) [Total Paid Amount] from InvoiceMaster
where patientid in (select patientid from PatientMaster where Gender = 'Male')
group by patientid having SUM(PaidAmount) between 100000 and 500000 

select FName, Age,
case
	when Age >= 100 then 'A'
	when Age >= 75 and Age <100 then 'B'
	when Age >= 50 and Age < 75 then 'C'
	when Age >= 25 and Age < 50 then 'D'
	when Age >= 10 and Age < 25 then 'E'
	else 'F'
end [Grade]
from PatientMaster where Age > 0

select patientid, sum(PaidAmount) [Total Payment By Patient],
case 
	when sum(PaidAmount) >= 100000 then 'A'
	when sum(PaidAmount) >= 75000 and sum(PaidAmount) < 100000 then 'B'
	when sum(PaidAmount) >= 50000 and sum(PaidAmount) < 75000 then 'C'
	when sum(PaidAmount) >= 25000 and sum(PaidAmount) < 50000 then 'D'
	when sum(PaidAmount) >= 10000 and sum(PaidAmount) < 25000 then 'E'
	else 'F'
end [GRADE]
from InvoiceMaster
group by patientid


select * into PatientMaster06052026
from PatientMaster

Select * from PatientMaster06052026

select * from PatientMaster where ClinicID = 15

select * from PatientMaster06052026 where ClinicID = 15 order by patientid

insert into PatientMaster (EnquiryId, FName, Age, LastName,Mobile, ClinicID, 
RegistrationDate, Gender) select top 5 EnquiryID, FirstName, Age, LastName, Mobile,
ClinicID, getdate(), Gender from Enquiry where ClinicID = 4

select * from PatientMaster order by patientid desc

select tbl_ClinicDetails.ClinicName, PatientMaster.Mobile, PatientMaster.FName from tbl_ClinicDetails
left join
PatientMaster on tbl_ClinicDetails.ClinicID = PatientMaster.ClinicID

select PatientMaster.FName, tbl_ClinicDetails.ClinicName, COUNT(PatientMaster.patientid) [No of Patient's] from tbl_ClinicDetails
left join
PatientMaster on tbl_ClinicDetails.ClinicID = PatientMaster.ClinicID
group by PatientMaster.FName, tbl_ClinicDetails.ClinicName

select PM.FName, CD.ClinicName, Count(PM.patientid) [No of Patient's] from tbl_ClinicDetails as CD
left join
PatientMaster as PM on CD.ClinicID = PM.ClinicID
group by PM.FName, CD.ClinicName

select CD.ClinicName, count(PM.patientid) [No of Patient's] from tbl_ClinicDetails as CD
left join
PatientMaster as PM on CD.ClinicID = PM.ClinicID
group by CD.ClinicName
order by ClinicName

select CD.ClinicName , COUNT(E.EnquiryID) [No of Enquiry] from tbl_ClinicDetails CD 
left join
Enquiry E on E.ClinicID = CD.ClinicID
group by CD.ClinicName

select PM.FName, SUM (IM.PaidAmount) [Total Payment] from PatientMaster PM
left join
InvoiceMaster IM on PM.ClinicID = IM.ClinicID
group by PM.FName

select CD.ClinicName,CD.ClinicID ,COUNT(DC.DoctorID) [Total Doctor's] from tbl_ClinicDetails CD
left join
DoctorByClinic DC on CD.ClinicID = DC.ClinicID
group by CD.ClinicName, CD.ClinicID

select * from DoctorByClinic where ClinicID = 4

 select DD.FirstName, COUNT(IM.PaidAmount) [No of Payment's] from tbl_DoctorDetails DD
 left join
 InvoiceMaster IM on IM.DoctorID = DD.DoctorID
 group by DD.FirstName
 
 select DD.FirstName, Sum(IM.PaidAmount) [Total Payment] from tbl_DoctorDetails DD
 left join
 InvoiceMaster IM on IM.DoctorID = DD.DoctorID
 group by DD.FirstName

 select CD.ClinicName, CD.ClinicID, COUNT(IM.PaidAmount) [No of Payment's] from tbl_ClinicDetails CD
 left join
 InvoiceMaster IM on CD.ClinicID = IM.ClinicID
 group by CD.ClinicName, CD.ClinicID

 select * from InvoiceMaster where ClinicID = 1

 select CD.ClinicName, CD.ClinicID, isnull(SUM(IM.PaidAmount),0) [Total Payment] from tbl_ClinicDetails CD
 left join
 InvoiceMaster IM on CD.ClinicID = IM.ClinicID
 group by CD.ClinicName, CD.ClinicID

 select CD.ClinicName, CD.ClinicID, isnull(SUM(IM.PaidAmount),0) [Total Payment] from tbl_ClinicDetails CD
 inner join
 InvoiceMaster IM on CD.ClinicID = IM.ClinicID
 group by CD.ClinicName, CD.ClinicID

 select SUM(PaidAmount) [Total Clinic Payment] from InvoiceMaster where ClinicID = 1 group by ClinicID

Select PM.FName+' '+PM.LastName [Patient's Name],isnull(SUM(IM.PaidAmount),0) [Total Amount] From PatientMaster PM
Left JOIN
InvoiceMaster IM On IM.patientid=PM.patientid
Group By PM.FName,PM.LastName

Select IM.patientid,PM.FName+' '+PM.LastName [Patient's Name],isnull(SUM(IM.PaidAmount),0) [TotalAmount] 
From PatientMaster PM
Inner JOIN
InvoiceMaster IM On IM.patientid=PM.patientid
Group By PM.FName,PM.LastName,IM.patientid

Select IM.patientid,PM.FName+' '+PM.LastName [Patient's Name],isnull(SUM(IM.PaidAmount),0) [TotalAmount] From PatientMaster PM
Inner JOIN
InvoiceMaster IM On IM.patientid=PM.patientid
Group By PM.FName,PM.LastName,IM.patientid
having SUM(IM.PaidAmount) = 0

select * from PatientMaster where patientid = 10922
select * from InvoiceMaster where patientid = 10922

Select PM.patientid,PM.FName+' '+PM.LastName [PatientName],CD.ClinicName,
Isnull(SUM(IM.PaidAmount),0) [Total Amount] From PatientMaster PM
Inner join 
tbl_ClinicDetails CD On CD.ClinicID=PM.ClinicID
left join 
InvoiceMaster Im On IM.patientid=PM.patientid
Group By PM.FName,PM.LastName,CD.ClinicName,PM.patientid
having sum(Im.PaidAmount) > 10000 and PM.FName+' '+PM.LastName = ' '

Select Pm.FName+' '+Pm.LastName [PatientName],CD.ClinicName,DD.FirstName+' '+DD.LastName [DoctorName],
SUM(IM.PaidAmount) [Total Amount]
From InvoiceMaster Im
Inner join
PatientMaster Pm On PM.patientid=Im.patientid
Inner join 
tbl_ClinicDetails CD on CD.ClinicID=Im.ClinicID
inner join 
tbl_DoctorDetails DD On DD.DoctorID=IM.DoctorID
Group By Pm.FName,PM.LastName,CD.ClinicName,DD.FirstName,DD.LastName

Select ID.InvoiceNo,DD.FirstName+' '+DD.LastName [Doctor Name],PM.FName+' '+PM.LastName [PatientsName],
SUM(ID.GrandTotal) [GrandTotal],isnull(SUM(IM.PaidAmount),0) [TotalPaid]
From InvoiceDetails ID
Inner join 
tbl_DoctorDetails DD On DD.DoctorID=ID.DoctorID
Inner join
PatientMaster PM On PM.patientid=ID.patientid
left join
InvoiceMaster IM On IM.InvoiceNo=ID.InvoiceNo And IM.patientid=ID.patientid
Group By ID.InvoiceNo,DD.FirstName,DD.LastName,PM.FName,PM.LastName

Select DD.FirstName+' '+DD.LastName [DOCName],PM.FName+' '+PM.LastName [PatientsName],GrandTotal,
Count(ID.GrandTotal) [No oF Time]
From InvoiceDetails ID
Inner join 
tbl_DoctorDetails DD On DD.DoctorID=ID.DoctorID
Inner join
PatientMaster PM On PM.patientid=ID.patientid
Group By DD.FirstName,DD.LastName,PM.FName,PM.LastName,ID.GrandTotal
Having Count(ID.GrandTotal) >1

Select PM.FName+' '+Pm.LastName [PatientName],Isnull(Sum(IM.PaidAmount),0) [Total Amount] from PatientMaster Pm 
Left join 
InvoiceMaster Im ON Im.patientid=Pm.patientid
Group By PM.FName,PM.LastName

Select PM.FName+' '+Pm.LastName [PatientName],Isnull(Sum(IM.PaidAmount),0) [Total Amount] from PatientMaster Pm 
Inner join 
InvoiceMaster Im ON Im.patientid=Pm.patientid
Group By PM.FName,PM.LastName

Select IM.patientid,PM.FName+' '+Pm.LastName [PatientName],Isnull(Sum(IM.PaidAmount),0) [Total Amount] from PatientMaster Pm 
Right join 
InvoiceMaster Im ON Im.patientid=Pm.patientid
Group By PM.FName,PM.LastName,IM.patientid

Select * From InvoiceMaster Where  patientid=10165

select tbl_DoctorDetails.DoctorID,tbl_ClinicDetails.ClinicID ,tbl_DoctorDetails.FirstName+' '+tbl_DoctorDetails.LastName [Doctor's Name],
tbl_ClinicDetails.ClinicName ,isnull(sum(InvoiceMaster.PaidAmount),0) [Paid Amount] from tbl_DoctorDetails 
left join 
tbl_ClinicDetails on tbl_DoctorDetails.ClinicID = tbl_ClinicDetails.ClinicID
left join 
InvoiceMaster on tbl_DoctorDetails.DoctorID = InvoiceMaster.DoctorID
group by tbl_DoctorDetails.DoctorID, tbl_DoctorDetails.FirstName+' '+tbl_DoctorDetails.LastName, 
tbl_ClinicDetails.ClinicName, tbl_ClinicDetails.ClinicID

select * from tbl_DoctorDetails where DoctorID = 47
select * from tbl_ClinicDetails where ClinicID = 2

select PM.* from Enquiry E, PatientMaster PM
where E.EnquiryID=PM.EnquiryId

select E.EnquiryID,PM.FName,IM.PaidAmount from Enquiry E, PatientMaster PM, InvoiceMaster IM
where E.EnquiryID=PM.EnquiryId and PM.patientid=IM.patientid

select CD.ClinicID,CD.ClinicName,CDEQ.[No of Enquiry],CDPM.[No of Patient's],CDDBC.[No of Doctor's] from
(select ClinicID, ClinicName from tbl_ClinicDetails) CD,
(select CD.ClinicID,COUNT(E.EnquiryID) [No of Enquiry] from tbl_ClinicDetails CD
left join
Enquiry E on E.ClinicID = CD.ClinicID
group by cd.ClinicID)CDEQ,
(select CD.ClinicID,COUNT(PM.patientid) [No of Patient's] from tbl_ClinicDetails CD
left join
PatientMaster PM on PM.ClinicID = CD.ClinicID
group by CD.ClinicID)CDPM,
(select CD.ClinicID,COUNT(DC.DoctorID) [No of Doctor's] from tbl_ClinicDetails CD
left join
DoctorByClinic DC ON DC.ClinicID=CD.ClinicID
group by CD.ClinicID)CDDBC

where CD.ClinicID=CDEQ.ClinicID
and CD.ClinicID = CDPM.ClinicID
and CD.ClinicID = CDDBC.ClinicID

Create view BorivaliEastClinicData
as
select * from PatientMaster where ClinicID = 1
go
select CD.ClinicName,BECD.* from BorivaliEastClinicData BECD
inner join 
tbl_ClinicDetails CD on CD.ClinicID = BECD.ClinicID

create view ClinicData as
Select Cd.ClinicName,CDE.[No OF Enquiry],CDPM.[No oF Patients],CDDBC.[No OF Doctors],CDIM.[Total Paid Amount] From 
  -- Get Clinic Name
(Select ClinicID,ClinicName From tbl_ClinicDetails ) CD,
   -- Get No Of Enquiry
(Select CD.ClinicID,COUNT(E.EnquiryID) [No OF Enquiry] From tbl_ClinicDetails CD 
left join
Enquiry E On CD.ClinicID=E.ClinicID
 Group By CD.ClinicID
)CDE,
(Select CD.ClinicID,COUNT(PM.patientid) [No oF Patients] From tbl_ClinicDetails CD 
  left join
  PatientMaster PM On CD.ClinicID=PM.ClinicID
  Group By CD.ClinicID
)CDPM,
(Select CD.ClinicID,COUNt(DBC.DoctorID) [No OF Doctors] From tbl_ClinicDetails Cd
Left join
 DoctorByClinic DBC on DBC.ClinicID=CD.ClinicID
 Group By CD.ClinicID
 ) CDDBC,
 (Select CD.ClinicID,SUM(IM.PaidAmount) [Total Paid Amount] From tbl_ClinicDetails CD
   Left join 
    InvoiceMaster IM ON IM.ClinicID=CD.ClinicID
	Group By CD.ClinicID
  )CDIM
Where CDE.ClinicID=CD.ClinicID
    AND  CDPM.ClinicID=CD.ClinicID
	AND CDDBC.ClinicID=CD.ClinicID
	AND CDIM.ClinicID=CD.ClinicID

select * from ClinicData where [No of Doctor's] >= 5

SELECT CURRENT_TIMESTAMP [Current Date&Time]

Select GETDATE() [Current Date&Time]
SELECT GETUTCDATE() [Current Universal Date&Time]

SELECT DATEADD(year, 1, GETDATE()) AS DateAdd;

SELECT DATEADD(year, 5, GETDATE()) AS YearAdd;

SELECT DATEADD(MONTH, 5, GETDATE()) AS MonthAdd;

SELECT DATEADD(DAY, 15, GETDATE()) AS DayAdd;


SELECT DATEDIFF(year, '2003/11/22', GETDATE()) AS DateDiff;

SELECT DATEDIFF(MONTH, '2003/11/22', GETDATE()) AS DateDiff;

SELECT DATEFROMPARTS(2018, 10, 31) AS DateFromParts;

select convert(varchar, getdate(), 105) 

Select convert(varchar, RegistrationDate, 105)  [Date],* From PatientMaster

SELECT DATENAME(year, GETDATE()) AS DatePartString;

SELECT DATENAME(MONTH, GETDATE()) AS DatePartString;

SELECT DATEPART(year, GETDATE()) AS DatePartInt;
SELECT DATEPART(MONTH, GETDATE()) AS DatePartInt;
SELECT DATEPART(DAY, GETDATE()) AS DatePartInt;
SELECT DATEPART(HOUR, GETDATE()) AS DatePartInt;
SELECT DATEPART(MINUTE, GETDATE()) AS DatePartInt;
SELECT DATEPART(SECOND, GETDATE()) AS DatePartInt;

SELECT DAY(GETDATE()) AS DayOfMonth;
SELECT Month(GETDATE()) AS MonthOfYear;
SELECT Year(GETDATE()) AS Year;

SELECT SYSDATETIME() AS SysDateTime;

select YEAR(RegistrationDate) [Year],COUNT(patientid) [No of Patient's] from PatientMaster
group by YEAR(RegistrationDate)

select YEAR(RegistrationDate) [Year],MONTH(RegistrationDate) [Month],COUNT(patientid) [No of Patient's] from PatientMaster
where YEAR(RegistrationDate) = 2019
group by YEAR(RegistrationDate),MONTH(RegistrationDate)
order by MONTH(RegistrationDate)

select YEAR(RegistrationDate) [Year],Datename(MONTH,RegistrationDate),DAY(RegistrationDate),COUNT(patientid) [No of Patient's] from PatientMaster
where YEAR(RegistrationDate) = 2019 and MONTH(RegistrationDate) = 2
group by YEAR(RegistrationDate),MONTH(RegistrationDate),Datename(MONTH,RegistrationDate),DAY(RegistrationDate)
order by MONTH(RegistrationDate)

select ClinicName, YEAR(PayDate) [Year],SUM(PaidAmount) [Total Paid Amount] from InvoiceMaster IM
inner join
tbl_ClinicDetails CD on IM.ClinicID = CD.ClinicID
group by YEAR(PayDate), ClinicName
order by ClinicName

select ClinicName, Month(PayDate) [Month],SUM(PaidAmount) [Total Paid Amount] from InvoiceMaster IM
inner join
tbl_ClinicDetails CD on IM.ClinicID = CD.ClinicID
group by Month(PayDate), ClinicName
order by ClinicName

select YEAR(PayDate) [Year],Datename(MONTH,PayDate) [Month],DAY(PayDate) [Day],ClinicName,SUM(PaidAmount) [Total Paid Amount] from InvoiceMaster IM
inner join
tbl_ClinicDetails CD on IM.ClinicID = CD.ClinicID
group by YEAR(PayDate),MONTH(PayDate),Datename(MONTH,PayDate),DAY(PayDate), ClinicName
order by MONTH(PayDate)

exec GetPatientsData

GetPatientsData

GetPatientsData @clinicID = 4

Total_Tax

Invoice_Generate

Patient_Enquiry

[Patient_Enquiry] 4

Doctor_Received_Payment

Patient_bill_paid

YearlyMonthlyAndDaywiseClinicTotalRevenue

MonthlyClinicTotalRevenue

Monthwise2019NoOfPatient

YearlyNoOfPatient

SystemDateAndTime 

LiveDayMonthYear

LiveDatePart

UTCDateAndTime

LiveTime

FullClinicDetails

PatientTotalAmount

DoctorDetailsWithPatient

PatientDoctorClinicPaymentDetails

PatientDoctorClinicPaymentDetails 50000,100000,'kalyan'

PatientPaidAmount 50000,500000

PatientPendingAmount 50000,100000

TotalPaymentReceivedByClinic

TotalPaymentReceivedByDoctor

TotalPaymentReceivedByDoctor 5000,50000

TotalDoctorInClinic

PatientTotalPaidAmount

PatientTotalPaidAmount 50000,100000

NoOfEnquiryInClinic

NoOfPatientInClinic

PatientClinicDetails

PatientClinicDetails VASHI

PatientPaymentGrade

PatientAgeGrade

PatientGender

TotalPaymentByPatient

Total_Patient

[Total No of Clinic Payments]

[Total No of Payments]

[Total No of Patient Payment Done]

[Total No of Clinic Received Payment]

[No of Doctor's in Clinic]

MalePatientList

FemalePatientList

FemalePatientList 21,25

GetPatientsDataName 'Rishit'

GetPatientsDataDate '2018-11-09', '2018-11-25'

GetPatientsData 4,'','2018-11-09','2018-11-25'

TotalPaymentOfDoctor 0, 'airoli', 'shweta'

select DD.DoctorID, DD.FirstName+' '+DD.LastName [DOCName], PM.FName+' '+PM.LastName [Patient Name], CD.ClinicName, SUM(IM.GrandTotal) [Total Payment] from InvoiceMaster IM
inner join
tbl_DoctorDetails DD on IM.DoctorID = DD.DoctorID
inner join
PatientMaster PM on IM.patientid = PM.patientid
inner join
tbl_ClinicDetails CD on IM.ClinicID = CD.ClinicID
group by DD.DoctorID, DD.FirstName+' '+DD.LastName, PM.FName+' '+PM.LastName, CD.ClinicName
having sum(IM.GrandTotal) > 0
order by DOCName

GetPatientComman 4,'',1

GetCommonDoctor 4,'',2

GetCommonClinic 4,2

SP_SetPatientsData 'Rishit','Patel','8855220044',23,14,'Vadodara,Gujarat,India'

Select ASCII('M'),ASCII('E'),ASCII('H'),ASCII('U'),ASCII('L')

Select ASCII(' ')

Select ASCII('*') 

SELECT CHAR(33)

SELECT CHARINDEX('R', 'Mehul Rana') AS MatchPosition;

SELECT CONCAT('W3Schools', '.com');

Select CONCAT(ASCII('M'),ASCII('E'),ASCII('H'),ASCII('U'),ASCII('L'))

SELECT CONCAT_WS('.', 'www', 'W3Schools', 'com');

SELECT CONCAT_WS(' ',FName,LastName,Mobile) From PatientMaster

SELECT LEFT('SQL Tutorial', 1) AS ExtractString;

Select FName,ASCII(FName) From PatientMaster

Select FName,ASCII(LEFT(FName,1)) From PatientMaster

Select FName,ASCII(Right(FName,1)),Right(FName,1) From PatientMaster 

SELECT LEN('Mehul'); 

SELECT LOWER('SQL Tutorial is FUN!'); 

SELECT LTRIM('     SQL Tutorial') AS LeftTrimmedString; 

Select LTRIM(FName),FName from PatientMaster Order By FName   

SELECT PATINDEX('%schools%', 'W3Schools.com');

SELECT QUOTENAME('abcdef');

SELECT REPLACE('SQL Tutorial', 'T', 'M');

SELECT REPLACE('SQL Tutorial', 'T', 'M'); 

Select REPLACE(REPLACE(PrintDetails,'#Name#',FName),'#Date#',convert(nvarchar,RegistrationDate,105)) From PatientMaster

SELECT REVERSE('SQL Tutorial');

SELECT RTRIM('SQL Tutorial     ') AS RightTrimmedString;

SELECT TRIM('      SQL Tutorial     ') AS RightTrimmedString;

SELECT STUFF('Mehul Rana', 7, 4, 'Patel');

SELECT SUBSTRING('Mehul Rana', 9, 1) AS ExtractString;

SELECT SUBSTRING('9099966444', 8, 2) AS ExtractString;

SELECT SUBSTRING('9099966444', 7, 2) AS ExtractString;

WITH  PatientPaymentCTE
AS 
(
Select Pm.FName+' '+Pm.LastName [PatientName],SUM(PaidAmount) [Total],YEAR(PayDate) [Year],MONTH(PayDate) [Month],DAY(PayDate) [Day]
From PatientMaster Pm Inner join InvoiceMaster Im On Im.patientid=Pm.patientid Where FName !=''
Group By PM.FName,PM.LastName,YEAR(PayDate),MONTH(PayDate) ,DAY(PayDate)      
)
SELECT * FROM PatientPaymentCTE WHere Total >=100000

WITH Enquiry_CTE
AS (
        Select ClinicID,COUNT(EnquiryID) [NoofEnq] From Enquiry Group By ClinicID
   )
   ,Patients_CTE
AS (
        Select ClinicID,FName+' '+LastName [PatientName],Count(patientid) [NoOfPatients] From PatientMaster 
		Group By ClinicID,FName+' '+LastName
   )
Select CD.ClinicName,NoofEnq,NoOfPatients,PatientName,PhoneNo1 From tbl_ClinicDetails Cd 
Join Enquiry_CTE EC On EC.ClinicID=CD.ClinicID
Join Patients_CTE PC ON PC.ClinicID=CD.ClinicID

Select FirstName,LastName,Age,Gender,Mobile From Enquiry
UNION 
Select FName,LastName,Age,Gender,Mobile FROm PatientMaster

Select FirstName,LastName,Age,Gender,Mobile From Enquiry
UNION ALL
Select FName,LastName,Age,Gender,Mobile FROm PatientMaster


;With  DemoPatient
as
(
SELECT FName,ClinicID,Age,Gender,
       ROW_NUMBER() OVER (ORDER BY FName DESC) AS RowNumber
FROM PatientMaster
)
Select * From DemoPatient where RowNumber = 4


SELECT FName,
       ROW_NUMBER() OVER (PARTITION BY clinicID ORDER BY FName DESC) AS FighterRank,
       ClinicID,
       Mobile
FROM PatientMaster Where ClinicID >0


SELECT FName,
       ROW_NUMBER() OVER (PARTITION BY year(RegistrationDate) ORDER BY FName DESC) AS FighterRank,
       year(RegistrationDate) [Year],
       Mobile
FROM PatientMaster Where RegistrationDate is not null


with PatientPaidAmountRankCTE
as
(
select patientid,PaidAmount,
ROW_NUMBER() over(order by PaidAmount DESC) AS PaidAmountRank
from InvoiceMaster
)
select * from PatientPaidAmountRankCTE where PaidAmountRank = 2


SELECT FName,
       RANK() OVER (PARTITION BY clinicID ORDER BY FName DESC) AS FighterRank,
       ClinicID,
       Mobile
FROM PatientMaster Where ClinicID >0


SELECT FName,
       DENSE_RANK() OVER (PARTITION BY clinicID ORDER BY FName DESC) AS FighterRank,
       ClinicID,
       Mobile
FROM PatientMaster Where ClinicID >0


SELECT FName,
       NTILE(5) OVER (PARTITION BY clinicID ORDER BY Mobile DESC) AS FighterRank,
       ClinicID,
       Mobile
FROM PatientMaster Where ClinicID >0


Create View PaymetReport as
Select PM.FName +' '+PM.LastName [PatientName],CD.ClinicName,DD.FirstName+' '+DD.LastName [DoctorName],
YEAR(PayDate) [PayYear],MONth(PayDate) [PayMonth],DAY(PayDate) [PayDay],
SUM(PaidAmount) [Total Amount]
From InvoiceMaster IM
Inner join 
PatientMaster PM On PM.patientid=IM.patientid
Inner join 
tbl_ClinicDetails Cd On Cd.ClinicID=IM.ClinicID
Inner Join 
tbl_DoctorDetails Dd on DD.DoctorID=IM.DoctorID
Group By
PM.FName+' '+PM.LastName,CD.ClinicName,DD.FirstName+' '+DD.LastName,YEAR(PayDate),MONth(PayDate),DAY(PayDate)

Select * From PaymetReport Where PayYear=2018


Select Cd.ClinicName, CDE.NoOFEnquiry, CDPM.NoOFPatients, 
CDDBC.NoOFDoctors, CDIM.TotalPaidAmount, CDIM.TotalPendingAmount, 
CDIM.TotalPaidPercentage, CDIM.TotalPendingPercentage From 
(Select ClinicID,ClinicName From tbl_ClinicDetails ) CD,
(Select CD.ClinicID,COUNT(E.EnquiryID) NoOFEnquiry From tbl_ClinicDetails CD 
left join
Enquiry E On CD.ClinicID=E.ClinicID
 Group By CD.ClinicID
)CDE,
(Select CD.ClinicID,COUNT(PM.patientid) NoOFPatients From tbl_ClinicDetails CD 
  left join
  PatientMaster PM On CD.ClinicID=PM.ClinicID
  Group By CD.ClinicID
)CDPM,
(Select CD.ClinicID,COUNt(DBC.DoctorID) NoOFDoctors From tbl_ClinicDetails Cd
Left join
 DoctorByClinic DBC on DBC.ClinicID=CD.ClinicID
 Group By CD.ClinicID
 ) CDDBC,
 (Select CD.ClinicID,ISNULL(SUM(IM.PaidAmount),0) TotalPaidAmount,
 ISNULL(SUM(IM.PendingAmount),0) TotalPendingAmount,
 ISNULL(SUM(PaidAmount) / (SUM(PaidAmount) + SUM(PendingAmount)),0) * 100 TotalPaidPercentage,
 ISNULL(SUM(PendingAmount) / (SUM(PaidAmount) + SUM(PendingAmount)),0) * 100 TotalPendingPercentage
 From tbl_ClinicDetails CD
   Left join 
    InvoiceMaster IM ON IM.ClinicID=CD.ClinicID
	Group By CD.ClinicID
  )CDIM
Where CDE.ClinicID=CD.ClinicID
    AND  CDPM.ClinicID=CD.ClinicID
	AND CDDBC.ClinicID=CD.ClinicID
	AND CDIM.ClinicID=CD.ClinicID

SELECT
 InvoiceId, CustomerName, TotalAmount, Status,
 CASE
 WHEN TotalAmount > 5000 THEN 'Premium Tier'
 WHEN TotalAmount BETWEEN 1500 AND 5000 THEN 'Standard Tier'
 ELSE 'Basic Tier'
 END AS BillingCategory
FROM InvoiceMaster
WHERE Status IN ('Paid', 'Partially Paid')
 AND CustomerName LIKE 'A%';

 CREATE VIEW Patient_Collection_Report AS
SELECT
 PatientName,
 AmountPaid,
 YEAR(PaymentDate) AS [Year],
 MONTH(PaymentDate) AS [Month],
 DAY(PaymentDate) AS [Day],
 PaymentDate
FROM PatientPayments;
GO
-- Demonstration of Search Options (How to filter the view):
-- Example: Search for patient 'John' during Year 2026, Month 06, Day 27
SELECT * FROM Patient_Collection_Report
WHERE PatientName LIKE '%John%'
 AND [Year] = 2026
 AND [Month] = 6
 AND [Day] = 27;
