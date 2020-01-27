
-- #1 select all records from the customer 
SELECT * FROM Customer;
​
-- #2 select name column from customer 
SELECT First_Name FROM Customer;
​
-- #3 dispaly the result for ID=1
SELECT First_Name FROM Customer WHERE Customer_ID=1;

-- #4 update record from id=1
​UPDATE Customer SET First_Name='Nothile Ngcobo' WHERE Customer_ID=1;

-- #5 delete record for id=1 
​DELETE FROM Customer WHERE Customer_ID=1;
​
-- #6 display all unique status from orders
SELECT COUNT(Status) FROM Orders;
​
-- #7 dispaly the max payment from payments
SELECT MAX(Amount) FROM Payments;
​
 -- #8 arange data from customer by country
SELECT * FROM Customer ORDER BY Country ASC;
​
-- #9  select all products with price 
SELECT * FROM products WHERE price BETWEEN '100' AND '600';

-- #10 Select * from “Customers” where country is “Germany” AND city is “Berlin”.
SELECT * FROM customer
WHERE city='Berlin'
AND country='Germany';

-- #11 Select  * from “Customers” where city is “Cape Town” OR “Durban”.
SELECT * FROM customer
WHERE city='Cape Town'
or city='durban';

-- #12 Select * records from Products where the Price is GREATER than R500.
SELECT * FROM products
WHERE price > '500';

-- #13 Return the sum of the Amounts on the Payments table.

SELECT SUM(amount) FROM payments;

-- #14 Count the number of shipped orders in the Orders table.
SELECT count(*) FROM orders
WHERE status='Shipped';

-- #15 Return the avg price of * Products, in R 


SELECT AVG(price) FROM products

-- #16 Using INNER JOIN create a query that selects * Payments with Customer information.
SELECT customer.customer_ID, payments.payment_ID
FROM customer
INNER JOIN payments
ON customer.customer_ID = payments.customer_ID

--  #17 Select all products that have turnable front wheels.
SELECT * FROM products 
WHERE descriptions LIKE 'Turnable front wheels%';