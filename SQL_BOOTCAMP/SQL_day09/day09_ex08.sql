CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop integer DEFAULT 10)
RETURNS TABLE(fibonacci_number integer) AS
$$
    WITH RECURSIVE fibonacci_cte AS (
        SELECT 0 AS fib, 1 AS next_fib
        UNION ALL
        SELECT next_fib, fib + next_fib
        FROM fibonacci_cte
        WHERE fib < pstop
    )
    SELECT fib 
    FROM fibonacci_cte
    WHERE fib < pstop;
$$
LANGUAGE SQL;

-- To check yourself and call a function, you can make a statements like below.
select * from fnc_fibonacci(100);
select * from fnc_fibonacci();

