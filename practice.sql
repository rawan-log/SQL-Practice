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