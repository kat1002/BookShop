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
DECLARE @sql NVARCHAR(MAX) 
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
DECLARE @sql2 NVARCHAR(MAX)=''

SELECT @sql2 += ' DROP TABLE ' + QUOTENAME(TABLE_SCHEMA) + '.'+ QUOTENAME(TABLE_NAME) + '; '
FROM   INFORMATION_SCHEMA.TABLES
WHERE  TABLE_TYPE = 'BASE TABLE'

EXEC sp_executesql @sql2 
GO 

CREATE TABLE [accounts] (
  [id] INT PRIMARY KEY IDENTITY(1,1),
  [username] VARCHAR(255) NOT NULL,
  [password] VARCHAR(255) NOT NULL,
  [role] INT NOT NULL,
  [email] NVARCHAR(255),
  [fullname] NVARCHAR(255)
)
GO

CREATE TABLE [authors] (
  [id] INT PRIMARY KEY IDENTITY(1,1),
  [name] NVARCHAR(255)
)
GO

CREATE TABLE [categories] (
  [id] INT PRIMARY KEY IDENTITY(1,1),
  [title] NVARCHAR(255)
)
GO

CREATE TABLE [publishers] (
  [id] INT PRIMARY KEY IDENTITY(1,1),
  [name] NVARCHAR(255)
)
GO

CREATE TABLE [books] (
  [id] INT PRIMARY KEY IDENTITY(1,1),
  [title] NVARCHAR(255),
  [price] MONEY,
  [stock] INT,
  [category_id] INT,
  [publisher_id] INT,
  [author_id] INT
)
GO

CREATE TABLE [book_images] (
  [href] NVARCHAR(255) PRIMARY KEY,
  [book_id] INT
)
GO

CREATE TABLE [carts] (
	[id] INT PRIMARY KEY IDENTITY(1, 1),
	[account_id] INT
)
GO

CREATE TABLE [cart_items](
	[cart_id] INT,
	[book_id] INT,
	[amount] INT,
	PRIMARY KEY([cart_id], [book_id])
)
GO

CREATE TABLE [account_addresses] (
  [id] INT PRIMARY KEY IDENTITY(1, 1),
  [account_id] INT,
  [phone_number] NVARCHAR(255),
  [street_number] NVARCHAR(255),
  [street_name] NVARCHAR(255),
  [city] NVARCHAR(255),
  [country] NVARCHAR(255)
)
GO

CREATE TABLE [orders](
  [id] INT PRIMARY KEY IDENTITY(1, 1),
  [account_id] INT,
  [created] DATE,
  [status] NVARCHAR(255),
  [total_price] MONEY,
  [address_id] INT
)
GO

CREATE TABLE [order_details](
  [book_id] INT,
  [order_id] INT,
  [amount] INT,
  PRIMARY KEY ([book_id], [order_id]),
  FOREIGN KEY ([order_id]) REFERENCES [orders] ([id]),
  FOREIGN KEY ([book_id]) REFERENCES [books] ([id])
)
GO

ALTER TABLE [books] ADD FOREIGN KEY ([category_id]) REFERENCES [categories] ([id])
GO

ALTER TABLE [books] ADD FOREIGN KEY ([publisher_id]) REFERENCES [publishers] ([id])
GO

ALTER TABLE [books] ADD FOREIGN KEY ([author_id]) REFERENCES [authors] ([id])
GO

ALTER TABLE [book_images] ADD FOREIGN KEY ([book_id]) REFERENCES [books] ([id])
GO

ALTER TABLE [carts] ADD FOREIGN KEY ([account_id]) REFERENCES [accounts] ([id])
GO

ALTER TABLE [cart_items] ADD FOREIGN KEY ([cart_id]) REFERENCES [carts] ([id])
GO

ALTER TABLE [cart_items] ADD FOREIGN KEY ([book_id]) REFERENCES [books] ([id])
GO

ALTER TABLE [order_details] ADD FOREIGN KEY ([order_id]) REFERENCES [orders] ([id])
GO

ALTER TABLE [order_details] ADD FOREIGN KEY ([book_id]) REFERENCES [books] ([id])
GO

ALTER TABLE [account_addresses] ADD FOREIGN KEY ([account_id]) REFERENCES [accounts] ([id])
GO

ALTER TABLE [orders] ADD FOREIGN KEY ([address_id]) REFERENCES [account_addresses] ([id])
GO



