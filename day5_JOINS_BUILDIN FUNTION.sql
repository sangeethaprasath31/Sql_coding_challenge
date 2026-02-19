use studentsdb;

-- INNER JOIN- Show students with their enrolled course names.
select s.*, e.courseid, e.enrollmentDate from students s
join enrollments e on e.StudentID = s.StudentID;

-- LEFT JOIN and RIGHT JOIN - List all students and their courses, including those without matches.
select s.*, e.courseid, e.enrollmentDate from students s
left join enrollments e on e.StudentID = s.StudentID;

select s.*, e.courseid, e.enrollmentDate from students s
Right join enrollments e on e.StudentID = s.StudentID;

-- While preparing numeric reports, analysts need to round off decimal values.
select round(123.4567 ,2);

-- ABS() & MOD() -- Use ABS() to convert negative numbers to positive and MOD() to find the remainder when 25 is divided by 4.
select abs(-7.25);
select mod(25,4);

-- CONCAT() -- Use CONCAT() to merge StudentName and City into one column like “Aarav from Chennai.”
select s.*, concat(s.studentName,' from ' , s.City) from students s;

-- LENGTH() Use LENGTH() to display each student’s name along with its character count.
select s.studentName, length(s.studentName) Name_Length from students s;

-- REPLACE() Use REPLACE() to modify course names in the Courses table.
select c.courseid, c.coursename, replace(c.coursename, 'Data Analytics','Data analytic Program') Updated_CourseName  from courses c where c.courseid = 101;

-- SUBSTRING() Use SUBSTRING() to extract the first 3 characters from StudentName.
select studentname, substring(studentname, 1,3) Code_Prefix  from students;

-- UPPER() & LOWER()  Use UPPER() and LOWER() to show each name in uppercase and lowercase.
select studentname, upper(studentname) UPPER_Name , lower(studentname) LOWER_Name  from students; 

-- DATE FUNCTIONS (NOW, DATEDIFF, DATE_ADD) 
select 
s.studentname StudentName,
e.enrollmentDate EnrollmentDate, 
DATEDIFF('2025-06-01', '2025-05-10') Days_Difference, 
date_add(e.enrollmentDate, interval 10 Day) FollowUp_Date ,  
now() CurrentDate_Time from enrollments e
join students s on s.StudentID = e.StudentID;





