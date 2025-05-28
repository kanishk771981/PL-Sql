----LOOP
DECLARE 
 i number :=1;
BEGIN
 WHILE i<=5 LOOP
 dbms_output.put_line('i = ' || i);
 i := i + 1;
 END LOOP;
END;
/

DECLARE 
VAR1 number;
var2 number;
BEGIN
VAR1 :=7;
VAR2 :=1;
WHILE (VAR2<=10) LOOP
dbms_output.put_line(VAR1*VAR2);
VAR2 := VAR2 + 1;
END LOOP;
END;
/

-----FOR LOOP-----
DECLARE
 VAR1 number;
BEGIN
VAR1 :=5;
FOR VAR2 IN 1..10 LOOP
 dbms_output.put_line(VAR1 * VAR2);
END LOOP;
END;
/


-----USING LOOP WITH SQL QUERY------
CREATE TABLE customers (
   id      NUMBER PRIMARY KEY,
   name    VARCHAR2(100),
   age     NUMBER,
   address VARCHAR2(200),
   salary  NUMBER(10, 2)
);

-- Insert sample customer records
INSERT INTO customers (id, name, age, address, salary)
VALUES (1, 'John Doe', 30, '123 Elm Street, New York', 50000.00);

INSERT INTO customers (id, name, age, address, salary)
VALUES (2, 'Jane Smith', 25, '456 Oak Avenue, Los Angeles', 62000.50);

INSERT INTO customers (id, name, age, address, salary)
VALUES (3, 'Michael Johnson', 40, '789 Pine Road, Chicago', 75000.75);

INSERT INTO customers (id, name, age, address, salary)
VALUES (4, 'Emily Davis', 35, '321 Maple Blvd, Houston', 58000.00);

INSERT INTO customers (id, name, age, address, salary)
VALUES (5, 'David Miller', 28, '555 Birch Street, Miami', 47000.25);

-- Save the changes
COMMIT;


SELECT * FROM  customers;

BEGIN 

FOR cust IN ( SELECT name,age FROM customers) 
LOOP

dbms_output.put_line(cust.name || ' ' || cust.age);
END LOOP;
END;
/



















