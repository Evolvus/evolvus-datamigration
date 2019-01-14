SELECT
  table_name, owner
FROM
  dba_tables
WHERE
  owner='FRAMWORKDB'
ORDER BY
  owner, table_name
