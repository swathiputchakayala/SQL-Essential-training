------ Connecting Strings -----Concatinating-----
SELECT FirstName, LastName,Address, FirstName||''||LastName||''||Address||','||City||''||State||''||PostalCode AS 'Mailing Address'
FROM Customer
WHERE Country ='USA'

----Shrinking text----Truncate text ------

SELECT FirstName, LastName,Address, FirstName||''||LastName||''||Address||','||City||''||State||''||PostalCode AS 'Mailing Address',
substr(PostalCode ,1,5) as [5-DigitPOstalCode]
FROM Customer
WHERE Country ='USA'

----Date Function----

SELECT LastName, FirstName, BirthDate,
strftime('%Y-%m-%d',BirthDate) as 'Birth Date', 
strftime('%Y-%m-%d','now')as 'CURRENT DATE', 
( strftime('%Y-%m-%d','now') - strftime('%Y-%m-%d',BirthDate)) as 'Age' --used to convert date and time objects to their string representation
FROM Employee

--Aggregate funtion---
SELECT 
    sum(total) as 'Total_sales', 
    avg(total) as 'Avg_Sales', 
    round(avg(total),2)  as 'Rounded_Avg_Sales',
    max(total) as 'Max_sale', 
    min(total) as 'Min_sales', 
    count(*) as 'Sales_Count'
FROM Invoice



