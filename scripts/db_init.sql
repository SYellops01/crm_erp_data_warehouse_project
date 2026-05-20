/*
=============================================
Create Database and Schemas
=============================================
This script creates a new database 'crm_erp_db' after checking if it exists.
If the database exists it is started and recreated. 
Within the database, this script also creates three schemas - 'bronze', 'silver' and 'gold'.
*/

--Delete database if not exists
USE master;
GO
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'crm_erp_db')
BEGIN
	DROP DATABASE crm_erp_db;
END;
GO

--Create database
CREATE DATABASE crm_erp_db;
GO
USE crm_erp_db;
GO

--Create bronze, silver and gold schema
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
