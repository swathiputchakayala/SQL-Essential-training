--Creating View

--General Practise is to use V_ for views
-- One after running you can chekc it in your database with Viwe section

CREATE VIEW V_Avg_total AS
SELECT round(avg(total),2) as 'AVG_Total' FROM Invoice

--Editing View

--we cannot modify we need to DELETE and create new one
DROP VIEW IF EXISTS "main"."V_Avg_total";
CREATE VIEW V_Avg_total AS
SELECT avg(total),2 as 'AVG_Total' FROM Invoice

-- Joining VIEW

CREATE VIEW V_InvoiceLine AS
SELECT il.InvoiceId, il.UnitPrice,il.Quantity,t.Name,t.Composer,t.Milliseconds
from InvoiceLine il INNER JOIN Track  t on il.TrackId=t.TrackId

--Deleting View
DROP VIEW V_Avg_total 
