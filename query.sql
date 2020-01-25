
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

-- #10
SELECT * FROM customer
WHERE city='Berlin'
AND country='Germany';

-- #11
SELECT * FROM customer
WHERE city='Cape Town'
or city='durban';

-- #12
SELECT * FROM products
WHERE price > '500';

-- #13
SELECT SUM(amount) FROM payments;

-- #14
SELECT count(*) FROM orders
WHERE status='Shipped';

-- #15
SELECT AVG(price) FROM products

-- #16 
SELECT customer.customer_ID, payments.payment_ID
FROM customer
INNER JOIN payments
ON customer.customer_ID = payments.customer_ID

--  #17 
SELECT * FROM products 
WHERE descriptions LIKE 'Turnable front wheels%';