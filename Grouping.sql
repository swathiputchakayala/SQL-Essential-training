SELECT BillingCity, round(avg(total),2)
FROM Invoice
GROUP by BillingCity
ORDER by BillingCity


SELECT BillingCity, round(avg(total),2)
FROM Invoice
GROUP by BillingCity
HAVING BillingCity like 'L%'
ORDER by BillingCity

SELECT BillingCity, round(avg(total),2)
FROM Invoice
WHERE BillingCity like 'A%'
GROUP by BillingCity
HAVING avg(total)>5
ORDER by BillingCity


SELECT BillingCountry, BillingCity, round(avg(total),2)
FROM Invoice
GROUP by BillingCountry, BillingCity
HAVING avg(total)>5
ORDER by BillingCountry


