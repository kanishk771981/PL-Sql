---PROCEDURE----
CREATE OR REPLACE PROCEDURE myfirstpro
IS
BEGIN
dbms_output.put_line('hello world!!');
END;

EXECUTE myfirstpro;

DROP PROCEDURE myfirstpro;
/


-------PROCEDURE TO ADD USER IN THE TABLE -------

CREATE TABLE userdetail (
   id    NUMBER PRIMARY KEY,
   name  VARCHAR2(100),
   age   NUMBER
);


INSERT INTO userdetail (id , name , age) 
VALUES(123,'Kanishk',22);
COMMIT;

SELECT * FROM userdetail;


-----WITH THE HELP OF PROCEDURES---

CREATE PROCEDURE insertuser

(
u_id number,
u_name varchar2,
u_age number
)
IS

BEGIN
INSERT INTO userdetail (id , name , age) 
VALUES(u_id,u_name,u_age);

END;

EXECUTE insertuser(124,'stuti',23)

SELECT * FROM userdetail;

DECLARE PROCEDURE maxvalue(
m_x int,
m_y int,
v_z OUT int)


BEGIN
IF (X>Y) THEN 
m_z := m_x;
ELSE
v_z := m_y;

END;


















