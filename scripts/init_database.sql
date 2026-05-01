/*
    purpose:
        This will drop the 'DataWarehouse' Database if present and create new Database.
        It will define schema for deifferent layer of the warehouse. It will create schema for Bronze, Silver
        and Gold layer
    Warning:
        It will drop the existing 'DataWarehouse' database 
        so keep backup
 */
USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWareHouse;


-- Create schema within 'DataWarehouse' database
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
