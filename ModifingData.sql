-- DML = Data Modification Language => CREATE, INSERT, UPDATE , DELETE
-- DDL = Data Definition Language => CREATE, ALTER,RENAME,DROP,truncate(delete data from table but do not delete table)

--INSERT INTO = Inserting the data

INSERT INTO Artist(Name)
VALUES ("Swathi")

-- UPDATE = Udating the table
--Used via WHERE clause

UPDATE Artist SET Name = 'Sravanthi'
WHERE ArtistId = (SELECT ArtistId FROM Artist WHERE Name like "Swathi") --tried nested query here 


-- DELETE = Deleting table
DELETE FROM Artist
WHERE ArtistId = 276