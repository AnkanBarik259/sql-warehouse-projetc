/*

==========================================================================
Create DataBase and Schemas
===========================================================================

Script purpose:
     These these Script creates a new database Named'DataWarehouse' After checking it If already exist.
     If the database exists it is dropped and recreated. Additionally, The script sets up three 
     schemers within the database: 'bronze','silver',and 'gold'.


WARNING:
      Running the script will drop the entire database named as 'DataWarehouse' after checking if it exists. 
      All data in the database will be permanently deleted. 
      Proceed with caution and ensure you have a proper backups before running the script
*/

USE master;
GO

--Drop and Recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
     ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
     DROP DATABASE DataWarehouse;
END;
GO

--creating the database 'DataWarehouse'
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO



