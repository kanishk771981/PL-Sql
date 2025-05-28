----basics syntax
DECLARE
   message varchar2(20) := 'Hello World teri ma';
BEGIN 
   dbms_output.put_line(message);
   
END;
/
DECLARE
 a integer := 10;
 b integer := 20;
 c integer ;
 
BEGIN
  c:= a + b ;
  dbms_output.put_line('value of c'||c);
END;
/
-----Data types
CREATE TABLE emp (
   name    VARCHAR2(100),
   age     NUMBER,
   address VARCHAR2(200),
   salary  NUMBER(10, 2)
);
INSERT INTO emp (name, age, address, salary)
VALUES ('Test User', 28, 'Test City', 12345.67);

COMMIT;
INSERT INTO emp (name, age, address, salary)
VALUES ('John Doe', 30, '123 Elm Street, New York', 50000.00);

INSERT INTO emp (name, age, address, salary)
VALUES ('Jane Smith', 25, '456 Oak Avenue, Los Angeles', 62000.50);

INSERT INTO emp (name, age, address, salary)
VALUES ('Michael Johnson', 40, '789 Pine Road, Chicago', 75000.75);

INSERT INTO emp (name, age, address, salary)
VALUES ('Emily Davis', 35, '321 Maple Blvd, Houston', 58000.00);

COMMIT;

SELECT * FROM emp;


SELECT * FROM emp where Age = 30;

DECLARE
c_name emp.name%type;
c_age emp.age%type;
c_add emp.address%type;

BEGIN

SELECT  name,age,address INTO c_name,c_age,c_add  FROM emp where Age = 30;
dbms_output.put_line(c_name ||' '|| c_age || ' '|| c_add);


END;
/

DECLARE 
 i number :=1;
BEGIN
 WHILE i<=5 LOOP
 dbms_output.put_line('i = ' || i);
 i := i + 1;
 END LOOP;
END;
/








