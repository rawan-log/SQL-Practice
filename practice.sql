/*LETE FROM customers
WHERE customer_id=4;
SELECT*FROM customers;

/*ROLLUP,extension of the GROUP BY clause, produces another row and shows the GRAND TOTAL (super-aggregate value)
SELECT SUM(hourly_paid) AS "hourly_pay",employee_id
FROM employees
GROUP BY employee_id WITH ROLLUP;
SELECT COUNT(transaction_id) AS "# of orders",customer_id
FROM transactions
GROUP BY customer_id WITH ROLLUP;
SELECT SUM(amount),order_date
FROM transactions
GROUP BY order_date WITH ROLLUP;

/*SELECT COUNT(amount), customer_id
FROM transactions
GROUP BY customer_id
HAVING COUNT(amount)>1;

/*YOU Ccannot use a WHERE clause when Grouping BY instead use HAVING

SELECT SUM(amount),customer_id
FROM transactions
GROUP BY customer_id;      select how much money did each customer spend here and use COUNT() for how many orders each customer made

/*SELECT SUM(amount),order_date   or MIN(),MAX(),AVG(),COUNT()
FROM transactions
GROUP BY order_date;  select the total amount of each date 

/*UPDATE transactions
SET order_date = "2023-01-01"
WHERE transaction_id=1;
SELECT * FROM transactions;
/*ALTER TABLE transactions
ADD order_date DATE ;

/*SELECT first_name,last_name
FROM customers
WHERE customer_id IN(SELECT DISTINCT customer_id     select customers who their id's are'nt in transactions(did'nt order )
FROM transactions
WHERE customer_id IS NOT NULL);

/*SELECT first_name,last_name,hourly_paid
FROM employees
WHERE hourly_paid > (SELECT AVG(hourly_paid)FROM employees);
/*SELECT first_name,last_name,hourly_paid,
(SELECT AVG(hourly_paid)FROM employees) AS avg_pay
FROM employees;     A query(a sub query);

/*REmember: MySQL normally searches sequentially and UPDATE takes more time that SELECT.
SELECT * FROM customers
WHERE first_name="Poppy" AND last_name="Puff";
ALTER TABLE customers
DROP INDEX last_name_firdt_name_idx;   DELETING A MISTAKE I MADE 
SHOW INDEXES FROM customers
/*CREATE INDEX last_name_first_name_idx    creating multiple indexes 
ON customers(last_name,first_name);    index searching is faster 

/*Views: they're virtual tables that can be interacted with
/*SELECT *FROM employee_attendance
ORDER BY last_name ASC;
/*CREATE VIEW employee_attendance AS 
SELECT first_name,last_name
FROM employees;

/*SELECT a.customer_id,a.first_name,a.last_name,
CONCAT(b.first_name," ", b.last_name) AS reffered_by
FROM customers AS a  --a is the original copy
INNER JOIN customers AS b  -- b will be the copy
ON a.referral_id=b.customer_id;

/*SELF JOIN: join another copy of a table to itself
/*SELECT * 
FROM customers AS a 
INNER JOIN customers AS b
ON a.referral_id=b.customer_id;       look at table b customer id = referral id

/*SELECT first_name,last_name FROM employees
UNION        to union two tables they must have the same number of columns or specify the columns you want tow combine
SELECT first_name,last_name FROM customers;    Also you can use UNION ALL to include any duplicates if there is any 

/*SELECT * FROM customers
LIMIT 3,1;  using an offset (array) helps with a large dataset

/*SELECT * FROM customers
ORDER BY last_name DESC LIMIT 1;

/*SELECT * FROM customers
ORDER BY last_name LIMIT 1; show only one customer using the last name which is arranged alphabetically

/*SELECT * FROM customers
LIMIT 3; show only three customers

/*SELECT *FROM transactions
ORDER BY amount,customer_id;  if amount row share the same number then order it by customer id

/*SELECT *FROM employees
ORDER BY last_name DESC;   reverse alphabetic order

/*SELECT *FROM employees
WHERE job LIKE "_a%";

/*SELECT * FROM employees 
WHERE job LIKE "_ook";

/*SELECT * FROM employees
WHERE last_name LIKE "k%";

/* Wild card characters % _  used to substitute one or more characters in a string 
/*SELECT *
FROM employees
WHERE job IN ("cook","cashier","janitor");

/*SELECT *
FROM employees
WHERE hire_date BETWEEN "2023-01-04" AND "2023-01-07";

/*SELECT *
FROM employees
WHERE NOT job ="manager";

/*SELECT *
FROM employees
WHERE job="cook" OR job="cashier";
/*SELECT *
FROM employees
WHERE hire_date<"2023-01-05" AND job="cook"
/*ALTER TABLE employees
ADD COLUMN job VARCHAR(25) AFTER hourly_paid;

/*SELECT CONCAT(first_name,"  ",last_name)AS full_name
FROM employees;

/*SELECT MAX(amount) AS "Maximum"
FROM transactions;        SUM/MIN/AVG Functions aswell

/*SELECT COUNT(amount) AS "today's transactions"
FROM transactions;

/*SELECT transaction_id, amount, first_name, last_name
FROM transactions INNER JOIN customers
ON transactions.customer_id=customers.customer_id; you can join specific columns only
/*SELECT *
FROM transactions (LEFT/RIGHT OR INNER) JOIN customers 
ON transactions.customer_id=customers.customer_id;  join these two tables using the foreign key (customer_id)
/*INSERT INTO customers (first_name,last_name)
VALUES ("poppy","puff");
SELECT * FROM customers;
/*INSERT INTO transactions (amount,customer_id)
VALUES (1.00,NULL);
/*INSERT INTO transactions(amount,customer_id)
VALUES (4.99,3),
       (2.89,2),
	(3.38,3),
	  (4.99,1);
SELECT*FROM transactions;

/*ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id the name of the key (not neccesary)
FOREIGN KEY (customer_id)REFERENCES customers(customer_id); to apply a new foreign key 
/*ALTER TABLE transactions
DROP FOREIGN KEY transactions_ibf; to get rid of a foregin key
/*CREATE TABLE transactions (
      transaction_id INT PRIMARY KEY AUTO_INCREMENT,
      amount DECIMAL(5,2),
      customer_id INT,
      FOREIGN KEY (customer_id)REFERENCES customers(customer_id) a forregin key is a key link between two tables
      );
      SELECT*FROM transactions;

/*INSERT INTO customers (first_name,last_name)
VALUES ("Fred","Fish"),
      ("Larry","Lobster"),
      ("Bubble","BASS");
SELECT *FROM customers;
      

/*CREATE TABLE customers(
customer_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50),
last_name VARCHAR(50)
);
/*INSERT INTO transactions (amount)
VALUES (6.89);
SELECT*FROM transactions;
/*DELETE FROM transactions;
/*ALTER TABLE transactions if i've already made my table and wanted to add auto increment 
AUTO_INCREMENT=1000; starting from 1000
/*INSERT INTO transactions (amount)
VALUES (4.99);
SELECT *FROM transactions; the transaction id has been automatically set to 1 fot the first row and the second to 2 and etc

/*CREATE TABLE transactions (
  transaction_id INT PRIMARY KEY AUTO_INCREMENT, we need primary key for auto increment to work
  amount DECIMAL(5,2) 
  );

/* INSERT INTO transactions
 VALUES (1003,4.99); if i try to type in the same transaction id (primary key) or Null it will show an error though they can share the same data but not the primary key
 /* ALTER TABLE transactions 
 ADD CONSTRAINT 
 PRIMARY KEY (transaction_id);  if i want to add primary key constraint after creating the table /

 /*CREATE TABLE transactions (
  transaction_id INT PRIMARY KEY,
  amount DECIMAL(5,2) we added primary key while creating the table
  );
 
 /*INSERT INTO products (product_id,product_name)
 VALUES (104,"straw"),
 (105,"napkin");
 SELECT *FROM products;
/*ALTER TABLE products 
ALTER price SET DEFAULT 0;

/*CREATE TABLE products (
product_id INT,
product_name VARCHAR(25),
price DECIMAL (4,2) DEFAULT 0

/*ALTER TABLE employees
DROP CHECK chk_hourly_pay; to delete the check 
chk_hourly_pay is the name of the check that i gave

/*INSERT INTO employees
VALUES (6,"Sheldon","Plankton", "sheldon @gmail.com",10.00,"2023-01-07"); if i typed for example 5.00 instead of 10.00 it would show an error 

SELECT *FROM employees;
/*ALTER TABLE  employees
ADD CONSTRAINT chk_hourly_pay CHECK (hourly_paid>=10.00);


/* You can add a check constraint next to a column to ensure that all values stored in a specific column satisfy a defined boolean condirion
to limit what the values of a column
/*ALTER TABLE products
MODIFY price DECIMAL (4,2) 	NOT NULL;

/*INSERT INTO products 
VALUES (100,"burger",3.99),
(101,"fries",1.99),
(102,"icecream",1.00); for example if i try to add fries again it would show an error
SELECT *FROM products;
/*ALTER TABLE products 
ADD CONSTRAINT
UNIQUE (product_name); or you can add a unique constraint like that


/*CREATE TABLE products(
product_id INT ,
product_name VARCHAR(25) UNIQUE,   product name is unique which means the product name cannot be repeated
price DECIMAL(4,2) if  i dont want this table to have null values i add NOT NULL next to to the column
);

/*DROP TABLE test;
INSERT INTO test
VALUES(CURRENT_DATE()+1,Null,Null);
SELECT * FROM test;
/*VALUES(CURRENT_DATE(),CURRENT_TIME(),NOW());
SELECT * FROM test;

/*COMMIT;
/*ROLLBACK;
/*DELETE FROM employees;
/*SET AUTOCOMMIT=OFF;

/*DELETE FROM employees 
WHERE employee_id=6;



/*UPDATE employees
SET hourly_paid=10.50;


/*UPDATE employees
SET hourly_paid=NULL,
       hire_date="2023-01-07"
WHERE employee_id=6;




/*SELECT *
FROM employees
WHERE hire_date IS NULL; or IS NOT NULL 

/*SELECT *
FROM employees
WHERE hourly_paid>=15;

/*INSERT INTO employees (employee_id,first_name,last_name)
/*VALUES(6,"Sheldon","Plankton");*/
/*VALUES (1,"EUGENE","Krabs","krab@gmail.com",25.50,"2023-01-02");*/
/*VALUES (2,"Squidward","Tentacles","squidward@gmail.com",15.00,"2023-01-03"),(3,"Spongebob","Squarepants","spongebob@gmail.com",15.00,"2023-01-03");*/