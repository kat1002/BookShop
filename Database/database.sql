USE [master]
GO

/*******************************************************************************
   Drop database if it exists
********************************************************************************/
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'Book_Shop')
BEGIN
	ALTER DATABASE [Book_Shop] SET OFFLINE WITH ROLLBACK IMMEDIATE;
	ALTER DATABASE [Book_Shop] SET ONLINE;
	DROP DATABASE [Book_Shop];
END

GO

CREATE DATABASE [Book_Shop]
GO

USE [Book_Shop]
GO

/*******************************************************************************
	Drop tables if exists
*******************************************************************************/
DECLARE @sql nvarchar(MAX) 
SET @sql = N'' 

SELECT @sql = @sql + N'ALTER TABLE ' + QUOTENAME(KCU1.TABLE_SCHEMA) 
    + N'.' + QUOTENAME(KCU1.TABLE_NAME) 
    + N' DROP CONSTRAINT ' -- + QUOTENAME(rc.CONSTRAINT_SCHEMA)  + N'.'  -- not in MS-SQL
    + QUOTENAME(rc.CONSTRAINT_NAME) + N'; ' + CHAR(13) + CHAR(10) 
FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS AS RC 

INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS KCU1 
    ON KCU1.CONSTRAINT_CATALOG = RC.CONSTRAINT_CATALOG  
    AND KCU1.CONSTRAINT_SCHEMA = RC.CONSTRAINT_SCHEMA 
    AND KCU1.CONSTRAINT_NAME = RC.CONSTRAINT_NAME 

EXECUTE(@sql) 

GO
DECLARE @sql2 NVARCHAR(max)=''

SELECT @sql2 += ' Drop table ' + QUOTENAME(TABLE_SCHEMA) + '.'+ QUOTENAME(TABLE_NAME) + '; '
FROM   INFORMATION_SCHEMA.TABLES
WHERE  TABLE_TYPE = 'BASE TABLE'

Exec Sp_executesql @sql2 
GO 

CREATE TABLE [accounts] (
  [id] INT IDENTITY(1, 1) PRIMARY KEY,
  [username] VARCHAR(255) NOT NULL,
  [password] VARCHAR(255) NOT NULL,
  [role] INT NOT NULL,
  [email] NVARCHAR(255),
  [full_name] NVARCHAR(255),
  [address] NVARCHAR(255),
  [phone_number] NVARCHAR(20),
  [birthday] date,
)
GO

CREATE TABLE [authors] (
  [id] integer IDENTITY(1,1) PRIMARY KEY,
  [name] nvarchar(255)
)
GO

CREATE TABLE [genres] (
  [id] integer IDENTITY(1, 1) PRIMARY KEY,
  [title] nvarchar(255)
)
GO

CREATE TABLE [publishers] (
  [id] integer IDENTITY(1,1) PRIMARY KEY,
  [name] nvarchar(255)
)
GO

CREATE TABLE [books] (
  [id] integer IDENTITY(1,1) PRIMARY KEY,
  [title] nvarchar(255),
  [price] money,
  [stock] integer,
  [genre_id] integer,
  [publisher_id] integer,
  [author_id] int,
  FOREIGN KEY ([genre_id]) REFERENCES [genres]([id]),
  FOREIGN KEY ([publisher_id]) REFERENCES [publishers]([id]),
  FOREIGN KEY ([author_id]) REFERENCES [authors]([id])
)
GO

CREATE TABLE [book_images] (
  [href] nvarchar(255) PRIMARY KEY,
  [book_id] integer,
  FOREIGN KEY ([book_id]) REFERENCES [books]([id]) 
)
GO

CREATE TABLE [carts] (
	[id] INT IDENTITY(1, 1) PRIMARY KEY,
	[account_id] INT,
	FOREIGN KEY ([account_id]) REFERENCES [accounts]([id])
)

CREATE TABLE [items](
	[cart_id] INT,
	[book_id] INT,
	[amout] INT,
	PRIMARY KEY([cart_id], [book_id]),
	FOREIGN KEY ([cart_id]) REFERENCES [carts]([id]),
	FOREIGN KEY ([book_id]) REFERENCES [books]([id]),
)

CREATE TABLE [accountAddress] (
  [id] INT IDENTITY(1,1) PRIMARY KEY,
  [account_id] INT,
  [street_number] nvarchar(255),
  [street_name] nvarchar(255),
  [city] nvarchar(255),
  [country] nvarchar(255),
  FOREIGN KEY ([account_id]) REFERENCES [accounts]([id])
)
GO
