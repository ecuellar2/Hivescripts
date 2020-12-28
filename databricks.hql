EXPLAIN select * from default.table_name
EXPLAIN EXTENDED select * from default.table_name
SELECT * FROM default.table_name TABLESAMPLE (2 ROWS);
SHOW COLUMNS IN default.table_name;
SHOW CREATE TABLE default.table_name;
SHOW TABLE EXTENDED LIKE 'day*';
SHOW TABLES FROM default LIKE 'day*';

GRANT SELECT ON DATABASE default TO `person@email.com`
SHOW GRANT `person@email.com` ON DATABASE default
GRANT SELECT ON TABLE default.table_name TO `person@email.com`
SHOW GRANT `person@email.com` on TABLE default.table_name
REVOKE SELECT ON default.table_name FROM `person@email.com`
If admin revokes SELECT privilege on db, user will be able to access table1 if there is an explicit GRANT on table1
