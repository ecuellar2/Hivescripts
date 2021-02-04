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
----------------------------

sql (" EXPLAIN FORMATTED querygoeshere  ").show(false)
----------------------------
def analyzeTables(databaseAndTable: String)
{
  //sql("DROP TABLE IF EXISTS table_name");
  sql("CREATE TABLE IF NOT EXISTS  table_name USING DELTA LOCATION '/mnt/folder' ")
  sql("ANALYZE TABLE table_name COMPUTE STATISTICS") //help query optimizer collect stats about table, can be scheduled daily 
  sql("REFRESH TABLE table_name")  // use db name.db if not in default db, refreshes delta cache for the table
  sql("UNCACHE TABLE table_name")
  sql("FSCK REPAIR TABLE table_name ")
  sql("Cache select * from table_name where filterdate < xxx ");  // use for delta cache
  sql("explain formatted " + query).show(false) // show query in a clean format with detailed info
  sql("optimize  table_name ");  // compact files to 1gb

}
