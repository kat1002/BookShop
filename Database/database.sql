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
  [id] INT PRIMARY KEY AUTO_INCREMENT,
  [username] VARCHAR(255) NOT NULL,
  [password] VARCHAR(255) NOT NULL,
  [role] INT NOT NULL,
  [email] NVARCHAR(255) NOT NULL,
  [full_name] NVARCHAR(255) NOT NULL,
  [address] NVARCHAR(255) NOT NULL,
  [phone_number] NVARCHAR(20) NOT NULL,
  [birthday] date,
)
GO

CREATE TABLE [accounts] (
  [id] integer IDENTITY(1,1) PRIMARY KEY,
  [username] nvarchar(255),
  [password] nvarchar(255),
  [full_name] nvarchar(255), 
  [phone_number] nvarchar(20),
  [email] nvarchar(255),
  [gender] nvarchar(255),
  [birthday] date,
  [image] nvarchar(255),
  [role] integer
)
GO

CREATE TABLE [books] (
  [id] integer IDENTITY(1,1) PRIMARY KEY,
  [title] nvarchar(255),
  [price] money,
  [stock] integer,
  [genres] integer,
  [publisherId] integer,
  [seriesId] nvarchar(255),
  [translator] nvarchar(255),
  [releaseYear] date,
  [language] nvarchar(255),
)
GO

CREATE TABLE [book_images] (
  [href] nvarchar(255) PRIMARY KEY,
  [book_id] integer
)
GO

CREATE TABLE [book_authors] (
  [book_id] integer,
  [author_id] integer,
  PRIMARY KEY ([book_id], [author_id])
)
GO

CREATE TABLE [authors] (
  [id] integer IDENTITY(1,1) PRIMARY KEY,
  [name] nvarchar(255)
)
GO

CREATE TABLE [book_genres] (
  [book_id] integer FOREIGN KEY,
  [genre_id] integer FOREIGN KEY,
  PRIMARY KEY ([book_id], [genre_id])
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

CREATE TABLE [carts]{

}

CREATE TABLE [items]{

}

CREATE TABLE [orders] (
  [id] integer IDENTITY(1,1) PRIMARY KEY,
  [customer] integer,
  [created] date,
  [order_status] nvarchar(255)
)
GO

CREATE TABLE [orderDetails] (
  [book_id] integer,
  [order_id] integer,
  [amount] integer,
  PRIMARY KEY ([book_id], [order_id])
)
GO

CREATE TABLE [customerAddress] (
  [id] integer IDENTITY(1,1),
  [customer] integer,
  [street_number] integer,
  [street_name] nvarchar(255),
  [city] nvarchar(255),
  [country] nvarchar(255),
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [country] (
  [name] nvarchar(255) PRIMARY KEY
)
GO

CREATE TABLE [city] (
  [name] nvarchar(255) PRIMARY KEY,
  [country] nvarchar(255)
)
GO

ALTER TABLE [books] ADD FOREIGN KEY ([publisher]) REFERENCES [publishers] ([id])
GO

ALTER TABLE [book_authors] ADD FOREIGN KEY ([book_id]) REFERENCES [books] ([id])
GO

ALTER TABLE [book_authors] ADD FOREIGN KEY ([author_id]) REFERENCES [authors] ([id])
GO

ALTER TABLE [reviews] ADD FOREIGN KEY ([book_id]) REFERENCES [books] ([id])
GO

ALTER TABLE [reviews] ADD FOREIGN KEY ([customer_id]) REFERENCES [accounts] ([id])
GO

ALTER TABLE [book_genres] ADD FOREIGN KEY ([book_id]) REFERENCES [books] ([id])
GO

ALTER TABLE [book_genres] ADD FOREIGN KEY ([genre_title]) REFERENCES [genres] ([title])
GO

ALTER TABLE [book_images] ADD FOREIGN KEY ([book_id]) REFERENCES [books] ([id])
GO

ALTER TABLE [orders] ADD FOREIGN KEY ([customer]) REFERENCES [accounts] ([id])
GO

ALTER TABLE [orderDetails] ADD FOREIGN KEY ([book_id]) REFERENCES [books] ([id])
GO

ALTER TABLE [orderDetails] ADD FOREIGN KEY ([order_id]) REFERENCES [orders] ([id])
GO

ALTER TABLE [customerAddress] ADD FOREIGN KEY ([city]) REFERENCES [city] ([name])
GO

ALTER TABLE [customerAddress] ADD FOREIGN KEY ([customer]) REFERENCES [accounts] ([id])
GO

ALTER TABLE [city] ADD FOREIGN KEY ([country]) REFERENCES [country] ([name])
GO
