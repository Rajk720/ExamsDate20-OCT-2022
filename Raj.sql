

// SQL QUESTIONS EDULAB


//    1.	Consider the following database schema to write queries in SQL
// i) Find the sailors who have reserved a red boat
// ii) Find the names of the sailors who have reserved at least two boats
// iii) Find the colors of the boats reserved by ‘Mohan’.
// iv) Find the names of sailors who have reserved both a red and a green boat?
// v) Find the sids of sailors with age over 20 who have not reserved a red boat.

1)Select *  from Sailors where SID in (Select SID from Reserves where BID in (select BID from Boats where COLOR="red")) ;

2)Select SNAME , Count(Day)  from Sailors s, Reserves r where s.SID=r.SID group by SNAME having Count(Day) >=2 ;

3)Select SNAME , COLOR  from Sailors s, Reserves r , Boats b where s.SID=r.SID and r.BID=b.BID and SNAME="Mohan" ;

4)Select * from (Select SNAME from Sailors where SID in (Select SID from Reserves where BID in (select BID from Boats where COLOR="green"))
intersect
Select SNAME  from Sailors where SID in (Select SID from Reserves where BID in (select BID from Boats where COLOR="red")) ) ;

5)Select SID  from Sailors s, Reserves r , Boats b where s.SID=r.SID and r.BID=b.BID and AGE="20" and COLOR <> "red" ;












//     2.    	       Consider the Employee table
 
//  Questions 1.	Display all the fields of employee table ? 
//  Questions 2.	Retrieve employee number and their salary
//  Questions 3.	Retrieve average salary of all employee
//  Questions 4.	Retrieve number of employee
//  Questions 5.	Retrieve distinct number of employee
//  Questions 6.	Retrieve total salary of employee group by employee name and count similar names
//  Questions 7.	Retrieve total salary of employee which is greater than >120000
//  Questions 8.	Display name of employee in descending order
//  Question 9.	    Display details of employee where name is AMIT and salary greater then 50000

1)Select * from Employee ;
2)Select EMPNO , SALARY from Employee;
3)Select avg(Salary) from Employee;
4)Select count(*) from Employee;
5)Select Distinct (EMPNO) from Employee ;
6)Select EMP_NAME , SUM (SALARY) , Count(EMP_NAME) from Employee group by EMP_NAME;
7)Select EMPNO , SUM (SALARY) from Employee group by EMP_NAME having SUM(SALARY) > 120000;
8)Select EMP_NAME from Employee order by EMP_NAME desc;
9)Select * from Employee where EMP_NAME="AMIT" and SALARY > 50000






//   3.	    Consider the following database schema to write nested queries in SQL

Supplier (id, name, city)
Parts (pno, pname, pdescription)
Supply (id, pno, cost)

//  i) Find the names of the parts supplied by “RamRaj”
//  ii) Find the names of the suppliers who supply “Nuts”
//  iii) Find the cost of bolts being supplied by Nagpur suppliers.


1) select pname from Parts where pno in (select pno from Supply where id in (select id from Supplier where name = "RamRaj")) ;
2) select name from Supplier where id in (select id from Supply where pno in (select pno from Parts where pname = "Nuts")) ;
3) select cost from Supply where id in (select id from Supplier where city="Nagpur" ) and  pno in (select pno from Parts where pname = "bolts") ;






//   4.	    Write a queries for implementing the following functions 
//           (a)	MAX (b) MIN (c) AVG (d) COUNT (e) SUM

(a)	MAX –  Select max(column_name) from tablename
(b)	MIN – Select min(column_name) from tablename
(c)	AVG – Select Avg(column_name) from tablename
(d)	SUM – Select count(*) from tablename
(e)	COUNT – Select Sum(column_name) from tablename



