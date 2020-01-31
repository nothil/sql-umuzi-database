 
DROP TABLE IF EXISTS Customers, employees, payments, products, Orders;


CREATE TABLE Customers(
customerid     SERIAL PRIMARY KEY,
first_Name      VARCHAR (50),
lastname       VARCHAR(50),
gender          VARCHAR,
addresses       VARCHAR(200),
phone           bigint,
email           VARCHAR(100),
city            VARCHAR(20),
country         VARCHAR(50)
);


CREATE TABLE employees(
employeeid     SERIAL primary key,
first_Name      VARCHAR(50),
lastName       VARCHAR(50),
email         VARCHAR,
jobTitle       varchar
);




CREATE TABLE payments(
customerId     INT REFERENCES Customers(customerId),
paymentId      SERIAL primary key,
paymentDate    date,
amount          decimal

);

CREATE TABLE products(
productId     SERIAL primary key,
productName   VARCHAR (50),
descriptions   VARCHAR(200),
buyPrice      decimal
);

CREATE TABLE orders(
orderId           SERIAL primary key,
productId         INT  REFERENCES products(productId),
paymentId         INT  REFERENCES payments(paymentId),
employeeId        INT   REFERENCES employees(employeeId),
dateRequired      date,
dateShipped       date,
parcelStatus      VARCHAR(100)

);


--#5 insert the data to the tables
--INSERTING INTO TABLES
INSERT INTO customers(customerid,first_Name,lastname,gender,addresses,phone,email,city,country)
                  VALUES(1, 'John','Hibert','Male','284 chaucer st',084789657,'john@gmail.com','Johannesburg','South'),
                        (2, 'Thando','Sithole','Female','240 Sect 1',0794445584,'thando@gmail.com','Cape Town','South Africa'),
                        (3, 'Leon','Glen','Male','81 Everton Rd,Gillits',0820832830,'Leon@gmail.com','Durban','South Africa'),
                        (4, 'Charl','Muller','Mal','290A Dorset Ecke',+44856872553,'Charl.muller@yahoo.com','Berlin','Germany'),
                        (5, 'Julia','Stein','Female','2 Wernerring',+448672445058,'Js234@yahoo.com','Frankfurt','Germany');
INSERT INTO employees(employeeId,first_Name,lastname,email,jobtitle)
            VALUES(1,'Kani','Matthew','mat@gmail.com','Manager'),
                  (2,'Lesly','Cronje','LesC@gmail.com','Clerk'),
                  (3,'Gideon','Maduku','m@gmail.com','Accountant');
INSERT INTO payments(customerId,paymentDate,amount)
            VALUES(1,'01-09-2018',150.75),
                  (5,'03-09-2018',150.75),
                  (4,'03-09-2018',700.60);
INSERT INTO PRODUCTS(productName,descriptions,buyPrice)
            VALUES('Harley Davidson Chopper','This replica features working kickstand, front suspension, gear-shift lever',150.75),
                  ('Classic Car','Turnable front wheels, steering function',550.75),
                  ('Sports car','Turnable front wheels, steering function',700.60);
INSERT INTO Orders(productId,paymentId,employeeId,dateRequired,dateShipped,parcelStatus)
            VALUES(1,1,2,'05-09-2018',NULL,'Not shipped'),
                  (1,2,2,'04-09-2018','03-09-2018','Shipped'),
                  (3,3,3,'06-09-2018',NULL,'Not shipped');
      
