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




/*SELECT * FROM employees;


