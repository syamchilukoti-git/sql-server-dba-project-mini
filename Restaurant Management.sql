CREATE DATABASE [Restaurant Management];
USE  [Restaurant Management];

DROP DATABASE  [Restuarent Management];


CREATE TABLE Restaurant (

	[Restaurant Id] INT IDENTITY(1,1) PRIMARY KEY,
	[Restaurant Name] VARCHAR(20) UNIQUE,
	Address VARCHAR(20) NOT NULL,
	[Phone Number] BIGINT UNIQUE
	);

CREATE TABLE customers (

	[Customer ID] INT IDENTITY(1,1) PRIMARY KEY,
	[First Name] VARCHAR(50) NOT NULL,
	[Last Name] VARCHAR(50) NOT NULL,
	Email VARCHAR(100) UNIQUE,
	[Phone Number] VARCHAR(15),
	Address VARCHAR(255)
	);

CREATE TABLE orders (

	[Order ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Customer ID] INT,
	[Restaurant ID] INT,
	[Order Date] DATE,
	[Total Amount] DECIMAL(10, 2),
	Status VARCHAR(20),
	FOREIGN KEY ([Customer ID]) REFERENCES customers ([Customer ID]),
	FOREIGN KEY ([Restaurant ID]) REFERENCES Restaurant ([Restaurant ID])
	);