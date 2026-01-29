/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'AirlineLoyaltyDW' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'AirlineLoyaltyDW' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'AirlineLoyaltyDW' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'AirlineLoyaltyDW')
BEGIN
    ALTER DATABASE AirlineLoyaltyDW SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE AirlineLoyaltyDW;
END;
GO

-- Create the 'AirlineLoyaltyDW' database
CREATE DATABASE AirlineLoyaltyDW;
GO

USE AirlineLoyaltyDW;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
