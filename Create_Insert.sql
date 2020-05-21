USE FlowerShop
Go

CREATE TABLE SalesPerson (
	ID varchar(10),
	[first_name] varchar(20),
	[last_name] varchar(20),
	[national_code] char(10) Not null,
	working_hour varchar(20),
	[role] varchar(20) ,
	salary int,
	birthdate date,
	gender varchar(8),
	hiring_date date 
	PRIMARY KEY (ID),
	Check ([role] in ('florist','cashier','purchaser','ShopPerson','trainee')),
	Check (gender in  ('Fmale' , 'Male'))
);
drop table SalesPerson
select * from SalesPerson

CREATE TABLE Colour (
	color_ID int IDENTITY(100,1) PRIMARY KEY,
	color_name varchar(20)
);
drop table Colour
select * from Colour

CREATE TABLE FlowerType (
	ID int IDENTITY(1,1) PRIMARY KEY,
	Title varchar(20),
	WaterDescription varchar(100),
	LightDescription varchar(100),
	More_Info varchar(100)
);

select * from FlowerType

CREATE TABLE Occasion (
	ID int IDENTITY(1,1) PRIMARY KEY,
	Title varchar(20) ,
	Occasion_Description varchar(100),
	check (Title in ('Birthdate','Anniversary','Valentine','Funeral','ChampionShip','Other'))
);

CREATE TABLE Customer (
	ID int IDENTITY(100,1) PRIMARY KEY,
	[first_name] varchar(20),
	[last_name] varchar(20),
	Addess varchar(50),
	phone varchar(15),
	birthdate date,
	gender varchar(8),
	hiring_date date,
	Check (gender in  ('Fmale' , 'Male'))	
);

CREATE TABLE GreenHouse (
	ID int IDENTITY(1,1) PRIMARY KEY,
	[name] varchar(20),
	[Manager] varchar(20),
	[Owner] varchar(20),
	Addess varchar(50),
	phone varchar(15)
);

CREATE TABLE Buy (
	ID int IDENTITY(1,1) PRIMARY KEY,
	Greenhouse_ID int,
	SalesPerson_ID varchar(10),
	Total_peyment int,
	FOREIGN KEY (Greenhouse_ID) REFERENCES GreenHouse(ID),
	FOREIGN KEY (SalesPerson_ID) REFERENCES SalesPerson(ID)
);
select * from Buy

CREATE TABLE Packaging (
	ID int IDENTITY(1,1) PRIMARY KEY,
	Packag_Type varchar(20),
	Occasion_ID int,
	Paper_Color_ID int,
	String_Color_ID int,
	Design varchar(20),
	Package_Description varchar(100),
	[Card] varchar(4),
	Check ([Card] in ('Yes','No')),
	Check (Design in ('I design myself','I trust on florist')),
	FOREIGN KEY (Occasion_ID) REFERENCES Occasion(ID),
	FOREIGN KEY (Paper_Color_ID) REFERENCES Colour(color_ID),
	FOREIGN KEY (String_Color_ID) REFERENCES Colour(color_ID)
);