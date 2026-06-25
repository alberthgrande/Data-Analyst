## Resources

- [Mockaroo](https://mockaroo.com/) — Fake data generator for creating realistic test datasets.

## Docker MySQL Database | PowerShell Command

- docker start <container-name>
- docker exec -it <container-name> mysql -u root -p
- Get-Content "K:\My Files\Data-Analyst\SQL\Employee-Database-Analysis\databases\departments.sql" -Raw | docker exec -i local-mysql mysql -u root -pmysqlpassword employee_database_analysis

## MySQL command

- CREATE DATABASE <database-name>; Create database
- USE <database-name>; — Use to change database
- SELECT DATABASE(); — Check if the database is selected
- SHOW TABLES; — Check database tables
- SELECT COUNT(\*) FROM orders;
