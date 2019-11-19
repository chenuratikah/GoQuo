#Run row by rows
DROP DATABASE IF EXISTS GoQuo;
CREATE DATABASE GoQuo;
USE GoQuo;

DROP TABLE IF EXISTS leavecalender;

#Create table LeaveCalender & insert data
CREATE TABLE IF NOT EXISTS LeaveCalendar(Employee_Name TEXT, Leave_Type TEXT, Start DATE, End DATE);

INSERT INTO leavecalendar(Employee_Name, Leave_Type, Start, End) 
VALUES
('Elfriede Medders', 'Annual', '2019-07-01', '2019-07-10'),
('Cher Mandel', 'Sick', '2019-07-01', '2019-07-02'),
('Albert Wager', 'Annual', '2019-07-04', '2019-07-09'),
('Terese Grenier', 'Maternity', '2019-07-08', '2019-10-08'),
('Wally Abercrombie', 'Annual', '2019-07-09', '2019-07-11'),
('Kraig Duffel', 'Sick', '2019-07-15', '2019-07-16'),
('Billi Cavitt', 'Annual', '2019-07-10', '2019-07-19');

#declare user defined variables
SET @Period_Start = '2019-07-08';
SET @Period_End = '2019-07-12';

#Select between two dates
SELECT Employee_Name, Leave_Type
FROM leavecalendar
WHERE( Start BETWEEN @Period_Start AND @Period_End)
OR (End BETWEEN @Period_Start AND @Period_End);