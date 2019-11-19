# GoQuo
Two sets of problems. One involving coding logic and the second one involving SQL

Challenge 1:
Background:
While booking a hotel, there are many restrictions or limitations like maximum number of guests
or maximum adults allowed in one room etc. It’s programmer’s job to translate these restrictions
to website/app visitors while booking a hotel room online.
Problem:
In Hotel Transylvania, each room can only accommodate a maximum of
● 3 adults
AND
● 3 children
AND
● 3 infants
● In one booking, maximum guests can be 7(excluding infants)
● No room will have only children or infants (i.e without at least one adult supervision)
● Per booking maximum number of rooms will be only 3
● If guests are either greater than 7(excluding infants) or rooms are greater than 3, the
booking will be rejected.
Problem:
Write a program to input number of adults, children and infants to output the mapping of pax per
room. Optimise number of rooms to keep it to minimum.
For example:
For 3 Adults, 4 Children and 2 infants can be fit in 2 rooms and not 3.


Challenge 2:
Given a database table “LeaveCalendar” that store all the staff’s leaves in the following format
Employee_Name Leave_Type Start End
Elfriede Medders Annual 2019-07-01 2019-07-10
Cher Mandel Sick 2019-07-01 2019-07-02
Albert Wager Annual 2019-07-04 2019-07-09
Terese Grenier Maternity 2019-07-08 2019-10-08
Wally Abercrombie Annual 2019-07-09 2019-07-11
Kraig Duffel Sick 2019-07-15 2019-07-16
Billi Cavitt Annual 2019-07-10 2019-07-19
Create a SQL query that accept @Period_Start and @Period_End to list down all the
employees and leave type that are absent during these periods. For example:
@Period_Start = “2019-07-08” and @Period_end = “2019-07-12” will return:
Employee_Name Leave_Type
Elfriede Medders Annual
Albert Wager Annual
Terese Grenier Maternity
Wally Abercrombie Annual
Billi Cavitt Annual
