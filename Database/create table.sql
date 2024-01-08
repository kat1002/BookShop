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
  [birthday] date
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
  [user] varchar(50),
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

ALTER TABLE [series] ADD FOREIGN KEY ([title]) REFERENCES [books] ([series])
GO

ALTER TABLE [publishers] ADD FOREIGN KEY ([id]) REFERENCES [books] ([publisher])
GO

ALTER TABLE [books] ADD FOREIGN KEY ([id]) REFERENCES [book_authors] ([book_id])
GO

ALTER TABLE [authors] ADD FOREIGN KEY ([id]) REFERENCES [book_authors] ([author_id])
GO

ALTER TABLE [country] ADD FOREIGN KEY ([name]) REFERENCES [city] ([country])
GO

ALTER TABLE [accounts] ADD FOREIGN KEY ([username]) REFERENCES [customerAddress] ([user])
GO

ALTER TABLE [address] ADD FOREIGN KEY ([id]) REFERENCES [customerAddress] ([address])
GO

ALTER TABLE [city] ADD FOREIGN KEY ([name]) REFERENCES [address] ([city])
GO

ALTER TABLE [books] ADD FOREIGN KEY ([id]) REFERENCES [orderDetails] ([book_id])
GO

ALTER TABLE [orders] ADD FOREIGN KEY ([id]) REFERENCES [orderDetails] ([order_id])
GO

ALTER TABLE [accounts] ADD FOREIGN KEY ([username]) REFERENCES [orders] ([customer])
GO

ALTER TABLE [discounts] ADD FOREIGN KEY ([id]) REFERENCES [customer_discounts] ([discount_id])
GO

ALTER TABLE [books] ADD FOREIGN KEY ([id]) REFERENCES [book_discounts] ([book_id])
GO

ALTER TABLE [discounts] ADD FOREIGN KEY ([id]) REFERENCES [book_discounts] ([discount_id])
GO

ALTER TABLE [books] ADD FOREIGN KEY ([id]) REFERENCES [book_genres] ([book_id])
GO

ALTER TABLE [genres] ADD FOREIGN KEY ([title]) REFERENCES [book_genres] ([genre_title])
GO

ALTER TABLE [accounts] ADD FOREIGN KEY ([username]) REFERENCES [customer_discounts] ([customer])
GO

ALTER TABLE [accounts] ADD FOREIGN KEY ([username]) REFERENCES [reviews] ([customer])
GO

ALTER TABLE [books] ADD FOREIGN KEY ([id]) REFERENCES [reviews] ([book_id])
GO
