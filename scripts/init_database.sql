/*
===============================================================
CREATE Database & Schemas
========================================================================================================
Script Purpose:
	This script creates a new database named 'DataWarehouse' after checking if it already exists.
	If the database exists, it is dropped and recreated. Additionally, the scripts sets up three schemas
	within the database: 'bronze', 'silver', 'gold'.

WARNING:
	Running this scripts will drop the entire 'DataWarehouse' database if it exists.
	All data in the database will be permanently deleted. Procced with caution
	and ensure you have proper backups before running the scripts.
*/


USE master;
GO

-- Drop & Recreate the 'Data Warehouse' Database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Data Warehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse
END;
GO

-- Create Database 'Data Warehouse'
CREATE DATABASE DataWarehouse;

USE DataWarehouse;
GO

-- Create Schemas

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
