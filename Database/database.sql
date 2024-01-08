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
CREATE TABLE [books] (
  [id] integer PRIMARY KEY,
  [ageRate] nvarchar(255),
  [inPrice] money,
  [stock] integer,
  [outPrice] money,
  [publisher] integer,
  [series] nvarchar(255),
  [translator] nvarchar(255),
  [releaseYear] date,
  [language] nvarchar(255),
  [coverType] nvarchar(255)
)
GO

CREATE TABLE [book_images] (
  [href] nvarchar PRIMARY KEY,
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
  [id] integer PRIMARY KEY,
  [name] nvarchar(255)
)
GO

CREATE TABLE [series] (
  [title] nvarchar(255) PRIMARY KEY
)
GO

CREATE TABLE [book_genres] (
  [book_id] integer,
  [genre_title] nvarchar(255),
  PRIMARY KEY ([book_id], [genre_title])
)
GO

CREATE TABLE [genres] (
  [title] nvarchar(255) PRIMARY KEY
)
GO

CREATE TABLE [publishers] (
  [id] integer PRIMARY KEY,
  [name] nvarchar(255)
)
GO

CREATE TABLE [orders] (
  [id] integer PRIMARY KEY,
  [customer] nvarchar(255),
  [created] date,
  [discount_id] integer
)
GO

CREATE TABLE [orderDetails] (
  [book_id] integer,
  [order_id] integer,
  [amount] integer,
  PRIMARY KEY ([book_id], [order_id])
)
GO

CREATE TABLE [accounts] (
  [username] nvarchar(255) PRIMARY KEY,
  [password] nvarchar(255),
  [first_name] nvarchar(255),
  [last_name] nvarchar(255),
  [email] nvarchar(255),
  [gender] nvarchar(255),
  [birthday] date,
  [image] nvarchar(255)
)
GO

CREATE TABLE [discounts] (
  [id] integer PRIMARY KEY,
  [name] nvarchar(255),
  [value] money
)
GO

CREATE TABLE [customer_discounts] (
  [customer] nvarchar(255),
  [discount_id] integer,
  PRIMARY KEY ([customer], [discount_id])
)
GO

CREATE TABLE [book_discounts] (
  [book_id] integer,
  [discount_id] integer,
  PRIMARY KEY ([book_id], [discount_id])
)
GO

CREATE TABLE [customerAddress] (
  [user] nvarchar(255),
  [address] integer,
  PRIMARY KEY ([user], [address])
)
GO

CREATE TABLE [address] (
  [id] integer PRIMARY KEY,
  [street_number] integer,
  [street_name] nvarchar(255),
  [city] nvarchar(255)
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

CREATE TABLE [reviews] (
  [id] integer PRIMARY KEY,
  [customer] nvarchar(255),
  [book_id] integer,
  [review] integer,
  [reviewDate] date,
  [detail] text
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

ALTER TABLE [reviews] ADD FOREIGN KEY ([customer]) REFERENCES [accounts] ([username])
GO

ALTER TABLE [book_genres] ADD FOREIGN KEY ([book_id]) REFERENCES [books] ([id])
GO

ALTER TABLE [book_genres] ADD FOREIGN KEY ([genre_title]) REFERENCES [genres] ([title])
GO

ALTER TABLE [book_images] ADD FOREIGN KEY ([book_id]) REFERENCES [books] ([id])
GO

ALTER TABLE [orders] ADD FOREIGN KEY ([customer]) REFERENCES [accounts] ([username])
GO

ALTER TABLE [orders] ADD FOREIGN KEY ([discount_id]) REFERENCES [discounts] ([id])
GO

ALTER TABLE [orderDetails] ADD FOREIGN KEY ([book_id]) REFERENCES [books] ([id])
GO

ALTER TABLE [orderDetails] ADD FOREIGN KEY ([order_id]) REFERENCES [orders] ([id])
GO

ALTER TABLE [book_discounts] ADD FOREIGN KEY ([book_id]) REFERENCES [books] ([id])
GO

ALTER TABLE [book_discounts] ADD FOREIGN KEY ([discount_id]) REFERENCES [discounts] ([id])
GO

ALTER TABLE [customer_discounts] ADD FOREIGN KEY ([customer]) REFERENCES [accounts] ([username])
GO

ALTER TABLE [customer_discounts] ADD FOREIGN KEY ([discount_id]) REFERENCES [discounts] ([id])
GO

ALTER TABLE [customerAddress] ADD FOREIGN KEY ([user]) REFERENCES [accounts] ([username])
GO

ALTER TABLE [customerAddress] ADD FOREIGN KEY ([address]) REFERENCES [address] ([id])
GO

ALTER TABLE [address] ADD FOREIGN KEY ([city]) REFERENCES [city] ([name])
GO

ALTER TABLE [city] ADD FOREIGN KEY ([country]) REFERENCES [country] ([name])
GO