--In the update.sql file, write out the code for the following problems:

--These questions reference both the customer table and track table.

--1. Find all customers with fax numbers and set those numbers to null.
UPDATE customer SET fax = null

--2. Find all customers with no company (null) and set their company to “Self”.
UPDATE customer SET company = 'Self' WHERE company IS NULL

--3. Find the customer Julia Barnett and change her last name to Thompson.
UPDATE customer SET last_name = 'Thompson' WHERE first_name = 'Julia' AND last_name = 'Barnett'

--4. Find the customer with this email luisrojas@yahoo.cl and change his support rep to 4.
UPDATE customer SET support_rep_id = 4 WHERE email = 'luisrojas@yahoo.cl'

--5. Find all tracks that are the genre Metal and have no composer. Set the composer to “The darkness around us”.
UPDATE tracks SET composer = "The darkness around us" WHERE genre = 3 AND composer IS NULL






