/* warehouse distribution */
SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE warehouse_dis (
    pro_name      VARCHAR,
    pro_quan      INT,
    branch_name   VARCHAR
) IS
    pid1   INT;
    pid2   INT;
  
BEGIN
    SELECT
        p_id
    INTO pid1
    FROM
        product@site_link1
    WHERE
        p_name = pro_name;

    SELECT
        p_id
    INTO pid2
    FROM
        product@site_link2
    WHERE
        p_name = pro_name;


    IF (branch_name = 'dhanmondi' ) THEN
        INSERT INTO stores_in@site_link1 VALUES (
            pid1,
            pro_quan,
            1
        );

    ELSE
        INSERT INTO stores_in@site_link2 VALUES (
            pid2,
            pro_quan,
            2
      );

    END IF;

    dbms_output.put_line('Inserted Successfully ' || pro_name);
    commit;
END warehouse_dis;
/