SELECT FirstName, LastName, Email
FROM Customer;

SELECT FirstName AS [Customer First Name], LastName AS 'Customer Last Name', Email AS EMAIL
FROM Customer;

SELECT FirstName AS [Customer First Name], LastName AS 'Customer Last Name', Email AS EMAIL
FROM Customer
ORDER BY LastName

SELECT FirstName AS [Customer First Name], LastName AS 'Customer Last Name', Email AS EMAIL
FROM Customer
ORDER BY LastName DESC, FirstName asc;

SELECT FirstName AS [Customer First Name], LastName AS 'Customer Last Name', Email AS EMAIL
FROM Customer
ORDER BY LastName DESC, FirstName ASC
LIMIT 10

SELECT InvoiceDate, BillingAddress,BillingCity,total
from Invoice
where total == 1.98
ORDER by InvoiceDate

SELECT InvoiceDate, BillingAddress,BillingCity,total
from Invoice
where total BETWEEN 1.98 AND 5
ORDER by InvoiceDate

SELECT InvoiceDate, BillingAddress,BillingCity,total
from Invoice
where total == 1.98 AND 5
ORDER by InvoiceDate

SELECT InvoiceDate, BillingAddress,BillingCity,total
from Invoice
where total in (1.98,3.96)
ORDER by InvoiceDate

SELECT InvoiceDate, BillingAddress,BillingCity,total
from Invoice
where BillingCity = 'Oslo'
ORDER by InvoiceDate

SELECT InvoiceDate, BillingAddress,BillingCity,total
from Invoice
where BillingCity IN ('Oslo' , 'Paris')
ORDER by InvoiceDate

--here there can be anything after b. i dont care what comes after b.
SELECT InvoiceDate, BillingAddress,BillingCity,total
from Invoice
where BillingCity like 'b%'
ORDER by InvoiceDate

--here a can be anywhere 7 case in-sensitive.
SELECT InvoiceDate, BillingAddress,BillingCity,total
from Invoice
where BillingCity like '%a%'
ORDER by InvoiceDate

-- wrt dates
SELECT InvoiceDate, BillingAddress,BillingCity,total
from Invoice
where InvoiceDate = '2010-05-22 00:00:00'
ORDER by InvoiceDate

-- "Date()" date function already includes the time in it.so that we nned not write in oyr where 
SELECT InvoiceDate, BillingAddress,BillingCity,total
from Invoice
where Date(InvoiceDate) = '2010-05-22'
ORDER by InvoiceDate

SELECT InvoiceDate, BillingAddress,BillingCity,total
from Invoice
where Date(InvoiceDate) > '2010-05-22' and total < 3.00
ORDER by InvoiceDate

SELECT InvoiceDate, BillingAddress,BillingCity,total
from Invoice
where BillingCity like 'P%' or BillingCity like 'D%' 
ORDER by InvoiceDate

SELECT InvoiceDate, BillingAddress,BillingCity,total
from Invoice
where total >1.98 and (BillingCity like 'P%' or BillingCity like 'D%')
ORDER by InvoiceDate

--IF THEN
SELECT InvoiceDate, BillingAddress,BillingCity,total,
CASE
WHEN total < 2.00 THEN 'BaselinePurchase'
WHEN total BETWEEN 2.00 AND 6.99 THEN 'Low Purchase'
WHEN total BETWEEN 7.00 AND 15.00 THEN 'Target Purchase'
ELSE 'Top Perfirmer'
END AS 'Purchase Type'
from Invoice
where total >1.98 and (BillingCity like 'P%' or BillingCity like 'D%')
ORDER by InvoiceDate

SELECT InvoiceDate, BillingAddress,BillingCity,total,
CASE
WHEN total < 2.00 THEN 'BaselinePurchase'
WHEN total BETWEEN 2.00 AND 6.99 THEN 'Low Purchase'
WHEN total BETWEEN 7.00 AND 15.00 THEN 'Target Purchase'
ELSE 'Top Performer'
END AS Purchase_Type
from Invoice
WHERE Purchase_Type= 'Top Performer'
ORDER by InvoiceDate

