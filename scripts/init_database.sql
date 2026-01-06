/*
============================
Create Database and Schemas 
============================ 

Script Purpose: 
	This script creates a new database named 'DataWarehouse' after checking if it already exists.
	If the database exists, it is dropped and recreated. Aditionally, the script sets up 
	three schemas within the database: 'bronze', 'silver' and 'gold'.

Warning:
	Running ths script will drop the entire 'DataWarehouse database if it exists.
	All data in the database will be permantly deleted. Ensure you have proper backups before running this script.
*/


USE master;
Go

-- Drop and recreate the 'DataWarehouse' database
If EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
Begin
	Alter Database DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
End;
Go

--Create the database 'DataWarehouse'
Create Database DataWarehouse;
Go

USE DataWarehouse;
Go 

-- Create the schemas 
Create Schema bronze; 
Go

Create Schema silver; 
Go

Create Schema gold; 
Go
