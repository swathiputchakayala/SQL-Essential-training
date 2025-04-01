--Inner Join  
--Joins only matched data like AnB in venn diagram
select * 
From Invoice INNER JOIN Customer on Invoice.CustomerId=Customer.CustomerId

SELECT * 
FROM Invoice as i INNER JOIN Customer as c on i.CustomerId=c.CustomerId
ORDER by c.CustomerId DESC;

SELECT c.LastName,c.FirstName,i.InvoiceId,i.CustomerId,i.InvoiceDate,i.total
FROM Invoice as i INNER JOIN Customer as c on i.CustomerId=c.CustomerId
ORDER by c.CustomerId DESC;

--LEFT Outer join
-- total left table + matching records of right table  
SELECT c.LastName,c.FirstName,i.InvoiceId,i.CustomerId,i.InvoiceDate,i.total
FROM Invoice as i LEFT OUTER JOIN Customer as c on i.CustomerId=c.CustomerId
ORDER by c.CustomerId DESC;

--Right Outer join
-- total right table + matching records of left table  
SELECT c.LastName,c.FirstName,i.InvoiceId,i.CustomerId,i.InvoiceDate,i.total
FROM Invoice as i RIGHT OUTER JOIN Customer as c on i.CustomerId=c.CustomerId
ORDER by c.CustomerId DESC;

------------------------------------------------
SELECT c.SupportRepId, e.FirstName, e.LastName, c.FirstName, c.LastName, c.CustomerId, i.total
FROM Invoice AS i
INNER JOIN Customer AS c ON i.CustomerId = c.CustomerId
INNER JOIN Employee AS e ON c.SupportRepId = e.EmployeeId
ORDER BY i.total DESC
LIMIT 10;
