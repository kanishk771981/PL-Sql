-----Cursor----

SELECT
    *
FROM
    customers;

DECLARE
    rowcount INTEGER;
BEGIN
    UPDATE customers
    SET
        salary = salary + 1000;

    IF SQL%found THEN
        rowcount := SQL%rowcount;
        dbms_output.put_line(rowcount);
    END IF;

END;


---EXPLICIT CURSOR-----
DECLARE
    c_id   customers.id%TYPE;
    c_name customers.name%TYPE;
    CURSOR cus_cursor IS
    SELECT
        id,
        name
    FROM
        customers
    WHERE
        age > 30;

BEGIN
    OPEN cus_cursor;
    LOOP
        FETCH cus_cursor INTO
            c_id,
            c_name;
        EXIT WHEN cus_cursor%notfound;
        dbms_output.put_line(c_id
                             || ' '
                             || c_name);
    END LOOP;

    CLOSE cus_cursor;
END;