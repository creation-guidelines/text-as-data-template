-- Both ends of every relation must be an existing concept id.
SELECT 'from_id' AS end_, from_id AS missing_id FROM relations WHERE from_id NOT IN (SELECT id FROM concepts)
UNION ALL
SELECT 'to_id', to_id FROM relations WHERE to_id NOT IN (SELECT id FROM concepts);
