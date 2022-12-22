create table testecte()

WITH cte AS (
  SELECT * FROM table1 WHERE column1 = 'value1'
)
SELECT * FROM cte WHERE column2 = 'value2';


