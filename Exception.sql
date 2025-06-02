-----EXCEPTION HANDLING---

SELECT
    *
FROM
    customers;

DECLARE
    c_name customers.name%TYPE;
BEGIN
    SELECT
        name
    INTO c_name
    FROM
        customers
    WHERE
        id = 7;

    dbms_output.put_line(c_name);
EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('NO Data Found');
    WHEN OTHERS THEN
        dbms_output.put_line('Exception occured');
END;