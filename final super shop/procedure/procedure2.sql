/* top selling */
SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE top_selling (
    fromdate   DATE,
    todate     DATE,
    cat_name   VARCHAR,
    site       VARCHAR2
) IS

    CURSOR my_cur IS
    SELECT
        p.p_name
    FROM
        product@site_link1       p
        INNER JOIN goes_in@site_link1       g ON g.p_id = p.p_id
        INNER JOIN category@site_link1      c ON c.c_id = p.c_id
        INNER JOIN transaction@site_link1   t ON t.t_id = g.t_id
    WHERE
        t.t_date BETWEEN fromdate AND todate
        AND c.c_name = cat_name
        AND ROWNUM <= 1
    GROUP BY
        p.p_name
    ORDER BY
        SUM(g.quantity) DESC;

    CURSOR my_cur1 IS
    SELECT
        p.p_name
    FROM
        product@site_link2       p
        INNER JOIN goes_in@site_link2       g ON g.p_id = p.p_id
        INNER JOIN category@site_link2      c ON c.c_id = p.c_id
        INNER JOIN transaction@site_link2   t ON t.t_id = g.t_id
    WHERE
        t.t_date BETWEEN fromdate AND todate
        AND c.c_name = cat_name
        AND ROWNUM <= 1
    GROUP BY
        p.p_name
    ORDER BY
        SUM(g.quantity) DESC;

    p_name VARCHAR(50);
BEGIN
    IF site = 'dhanmondi' THEN
        OPEN my_cur;
        LOOP
            FETCH my_cur INTO p_name;
            EXIT WHEN my_cur%notfound;
            dbms_output.put_line('Top Selling ' || p_name);
        END LOOP;

        CLOSE my_cur;
    ELSIF site = 'mohammadpur' THEN
        OPEN my_cur1;
        LOOP
            FETCH my_cur1 INTO p_name;
            EXIT WHEN my_cur1%notfound;
            dbms_output.put_line('Top Selling ' || p_name);
        END LOOP;

        CLOSE my_cur1;
    END IF;
END top_selling;
/