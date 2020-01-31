SELECT * FROM Customers;

SELECT first_Name FROM Customers;

SELECT first_Name FROM Customers WHERE customerid= 1;

UPDATE Customers SET first_Name= 'nomvelo' WHERE customerid=1;

DELETE FROM Customers WHERE customerid= 2;

SELECT COUNT(parcelStatus) FROM orders;

SELECT MAX(amount) FROM payments;

SELECT * FROM Customers ORDER BY country ASC;

SELECT * FROM products WHERE buyPrice BETWEEN 100 AND 600;

SELECT * FROM Customers WHERE  city='Berlin' AND country='Germany';

SELECT * FROM Customers WHERE city='Durban' or city='cape town';



SELECT * FROM products WHERE buyPrice > 500;

SELECT SUM(amount) FROM payments;
 
 SELECT COUNT(*) FROM orders 
 WHERE parcelStatus='Shipped';

 SELECT AVG(buyPrice) FROM products;

 SELECT Customers.customerid,payments.paymentid 
 FROM Customers 
 INNER JOIN payments 
 ON Customers.customerid=payments.customerid;

 
 SELECT * FROM products
 WHERE descriptions LIKE
 'Turnable front wheels%';




