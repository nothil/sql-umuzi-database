-- 1 create database called umuzi
CREATE  DATABASE umuzi;

-- #2 create the tables 



CREATE TABLE Customer(
Customer_ID     INT,
First_Name      VARCHAR(50),
Last_Name       VARCHAR(50),
Gender          VARCHAR,
Address         VARCHAR(200),
Phone           INTEGER,
Email           VARCHAR(100),
City            VARCHAR(20),
Country         VARCHAR(50)
);


CREATE TABLE employees(
employee_id     INT,
First_Name      VARCHAR(50),
Last_Name       VARCHAR(50),
Email         VARCHAR,
job_title
);


CREATE TABLE orders(
order_id     INT,
product_id      INT,
payment_id       INT,
employee_id      INT,
daterequires     date(200),
dateshipped      INTEGER,
status           VARCHAR(100),

);

CREATE TABLE payments(
Customer_id     INT,
payment_id      INT,
payment_date    datetime,
amount          decimal,

);

CREATE TABLE products(
product_id     INT,
product_name   VARCHAR(50),
descriptions   VARCHAR(50),
buy_price      decimal,

);




-- #5 insert the data to the tables
INSERT INTO Customer(Customer_ID, First_Name, Last_Name, Gender, Address, Phone, Email, City, Country ) VALUES
    (1	'Charl'	'Mullar'	'MALE'	'2 WERNIRRING'	23456789	'charl@gmail.com'	'Springs'	'Germany');
​