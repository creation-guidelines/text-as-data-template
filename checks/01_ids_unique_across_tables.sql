-- EXAMPLE: replace `concepts` with the tables that share an id namespace in your schema.
SELECT id, count(*) AS n FROM concepts GROUP BY id HAVING count(*) > 1;
