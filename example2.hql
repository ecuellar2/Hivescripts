use schema_data;
!echo starting script unix_timestamp; 
SELECT from_unixtime(unix_timestamp()); 
SET hive.mapred.supports.subdirectories=true;
SET mapred.input.dir.recursive=true;
select * from table_name where column = 'value'  limit 100;
select * from table_name where column = 'value'  limit 100;
select * from table_name where column = 'value'  limit 100;
select * from table_name where column = 'value'  limit 100;
!echo finishing script unix_timestamp; 
SELECT from_unixtime(unix_timestamp()); 
!echo done;
