SELECT * FROM Customers;
​
SELECT firstname FROM Customers;
​
SELECT firstname FROM Customers WHERE Customerid=1;

​UPDATE customers SET firstname = 'Nothile Ngcobo' WHERE customerid=1;

​DELETE FROM Customers WHERE Customerid=1;
​
SELECT COUNT(Status) FROM Orders;
​
SELECT MAX(Amount) FROM Payments;
​
SELECT * FROM Customers ORDER BY Country ASC;
​
SELECT * FROM products WHERE price BETWEEN '100' AND '600';


SELECT * FROM customers
WHERE city='Berlin'
AND country='Germany';

SELECT * FROM Customers
WHERE city='Cape Town'
or city='durban';

SELECT * FROM products
WHERE buyprice > '500';

SELECT SUM(amount) FROM payments;

SELECT count(*) FROM orders
WHERE parcelStatus='Shipped';

SELECT AVG(price) FROM products;

SELECT customers.customerId, payments.paymentid
FROM customers
INNER JOIN payments
ON customers.customerid = payments.customerid;

SELECT * FROM products 
WHERE descriptions LIKE 'Turnable front wheels%';