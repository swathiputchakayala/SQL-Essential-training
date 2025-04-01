-- In order to write any sub query we need to just use "()" open&close brackets and write code inside of it.

--Writing subquery in "WHERE"
SELECT BillingCountry, BillingCity, total
FROM Invoice
WHERE total < (SELECT avg(total) FROM Invoice)
ORDER by total DESC


--Writing subquery in "SELECT"

SELECT BillingCity, avg(total) as ' City Avg',
(SELECT avg(total) from invoice) as 'Global Avg'
FROM Invoice
GROUP by BillingCity
ORDER by BillingCity


--Writing subquery with non-aggrogate

select InvoiceDate, BillingAddress,BillingCity
from Invoice
where InvoiceDate > (select InvoiceDate from Invoice WHERE InvoiceId = 251)


--Using "IN" it can handel multiple records in sub-query

SELECT InvoiceDate BillingAddress,BillingCity
FROM Invoice
WHERE InvoiceDate IN (SELECT InvoiceDate from Invoice WHERE InvoiceId in (251,260,295))


-- DISTINCT & NOT

select TrackId, Composer,Name
FROM Track
WHERE TrackId NOT IN (SELECT DISTINCT(TrackId) from InvoiceLine ORDER by TrackId)


