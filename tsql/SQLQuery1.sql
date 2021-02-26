SELECT * FROM HR.Employees; 
/* selecting the data from the table hr employee*/


SELECT COUNT(empid) AS empid,city FROM HR.Employees GROUP BY city HAVING COUNT(empid)<3;
/*It lists the no of customers in each country. I have used to display the countries which has less than 3 employees*/


SELECT COUNT(empid) AS empid,city FROM HR.Employees GROUP BY city ORDER BY COUNT(empid) DESC;
/*It can be used to print either in ascending order or descending order. I have used to display the no of employees in the descending order.*/

SELECT COUNT(empid) AS Numbers, city FROM HR.Employees GROUP BY city;
/*The GROUP BY statement groups rows that have the same values into summary rows*/

SELECT DISTINCT title FROM HR.Employees ORDER BY title;
/*Distinct keyword, which selects different values only, no repitition of the same*/

SELECT CHARINDEX('y', firstname) as 'Y Letter at index', firstname  lastname FROM HR.Employees 
WHERE (empid=3);
/*The CHARINDEX() function searches for a substring in a string, and returns the position.*/

SELECT CONCAT (firstname, ' ', lastname, ' is from ', city) AS Result
FROM HR.Employees;
/*The CONCAT() function adds two or more strings together.*/

SELECT LEFT (firstname, 3) AS Result
FROM HR.Employees;
/*LEFT,returns the left part of a character string. */

SELECT  firstname, lastname, LEN (firstname) AS 'Length of FirstName'
FROM HR.Employees;
/*LEN,returns the number of characters from a string expression, excluding trailing spaces.*/

SELECT LOWER ( lastname ) FROM HR.Employees;
/*convert to lowercase*/

SELECT UPPER ( lastname ) FROM HR.Employees;
/*converts to uppercase*/

SELECT firstname, lastname, SUBSTRING(firstname, 1, 1) AS Initial, SUBSTRING(firstname, 1, 3) AS Short_name
FROM HR.Employees;
/* SUBSTRING,  returns part of a character.*/


SELECT city, PATINDEX('%a%',city) as 'Starting Index'
FROM HR.Employees;
/*PATINDEX, returns the starting position of the first occurrence of a pattern in a specified expression or return zero if the pattern is not found.*/


SELECT city, REPLACE(city,'a','X') FROM HR.Employees;
/*Replace,  change a specified string value with another string value.*/

SELECT c.categoryid, categoryname,productid,productname
 FROM Production.Categories c,Production.Products p
WHERE c.categoryid =productid;
/* INNER JOIN :FOR JOINING TWO TABLES  */

 
 SELECT c.categoryid, categoryname,productid,productname
 FROM Production.Categories c LEFT JOIN Production.Products p
 ON c.categoryid =productid
 /* LEFT JOIN: JOINS TABLE FROM LEFT  */


 SELECT c.categoryid, categoryname,productid,productname
 FROM Production.Categories c RIGHT JOIN Production.Products p
 ON c.categoryid =productid
  /*RIGHT JOIN: JOINS TABLE FROM RIGHT  */

 
 SELECT e.empid,e.lastname,m.address,m.firstname
 FROM HR.Employees e, HR.Employees m
 WHERE e.empid=m.empid;
  /*SELF JOIN: JOINS TABLE WITH ITSELF  */

 
SELECT AVG(unitprice) AS Average FROM Sales.OrderDetails;
 /*AVG-Find the average price of unitprice */

SELECT COUNT(orderid) AS Countt FROM Sales.OrderDetails;
/*Count-Find out the count of orderId*/

SELECT SUM(unitprice) AS Total FROM Sales.OrderDetails;
/*Sum-To find the sum of unitprice*/

SELECT MIN(unitprice) as minimum FROM Sales.OrderDetails;
/*MIN-Find out the minimum value of unitprice*/


SELECT MAX(unitprice) AS MAXIMUM FROM Sales.OrderDetails;
/*MAX-Find out the maximum value of unitprice*/


SELECT orderid FROM Sales.OrderDetails LIMIT2 ;
/*LIMIT-It select limited data */
 
 SELECT * from Sales.OrderDetails ORDERBY unitprice DESE 
/*OrderBy-it returns the order value in acsending or desending*/

SELECT * FROM HR.Employees WHERE empid BETWEEN 1 AND 3;
/*BETWEEN-it select the data from a particular value*/

SELECT firstname from HR.Employees WHERE firstname LIKE '%sa%';
/* LIKE-Find the first name that contain letters: sa.*/













