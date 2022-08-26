--In the group_by.sql file, write out the code for the following problems:

--These questions reference the invoice, track and album tables.

--1. Find the sum of totals in the invoice table grouped by billing_state.
SELECT SUM(total) FROM invoice GROUP BY billing_state

--2. Find the average track length (in milliseconds) by album. Order the table by the averages.
SELECT AVG(milliseconds), name FROM track GROUP BY name ORDER BY AVG(milliseconds)

--3. Find a count of how many albums the artists with the ids 8 and 22 have respectively. Use COUNT, WHERE/IN, and GROUP BY.
--so two rows showing the count of how many albums have an id. The first row will be an id of 8, the second row will be an id of 22?? No...
--not sure if this is worded properly
--note to self: next time I get stuck with wording, just do what most interpret it to be then open solution. No point on getting stuck on the wording when I already know how to solve the problem.
SELECT COUNT(*), title FROM album WHERE artist_id = 8 OR artist_id = 22 GROUP BY title
