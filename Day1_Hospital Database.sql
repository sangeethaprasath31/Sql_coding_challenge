Create database Hospital;
use hospital;

-- Create a table named Patients with the following fields: PatientID, PatientName, Age, Gender, AdmissionDate.

Create table Patients (
PatientID INT,
PatientName char(50),
Age INT,
Gender enum('M','F'),
AdmissionDate date);

-- Add a new column DoctorAssigned VARCHAR(50) to the Patients table.
Alter table Patients add column (
DoctorAssigned varchar(50)
);

-- Increase the length of PatientName from VARCHAR(50) to VARCHAR(100).
Alter table Patients modify column PatientName varchar(50);

-- Rename the table Patients to Patient_Info.
Rename table Patients to Patient_info;

Truncate table Patient_info;
Drop table Patient_Info;
Drop database hospital;

