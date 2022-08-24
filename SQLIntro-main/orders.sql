--In the orders.sql file, write out the code for the following problems:

--1. Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders(
    order_id SERIAL,
    person_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(30),
    product_price FLOAT(2),
    quantity INT
  );

--2. Add 5 orders to the orders table.

--2a. Make orders for at least two different people.

--2b. person_id should be different for different people.

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES ('Person 1', 'Pizza', 3.55, 1);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES ('Person 2', 'Cheeseburger', 4.50, 2);

--3. Select all the records from the orders table.
SELECT * FROM orders

--4. Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders

--5. Calculate the total order price.
SELECT SUM(product_price * quantity) FROM orders

--6. Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 'Person 2'