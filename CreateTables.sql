USE FlowerShop
Go

CREATE TABLE SalesPerson (
	PersonnelCode varchar(10),
	[first_name] varchar(20),
	[last_name] varchar(20),
	[national_code] char(10) Not null,
	working_hour varchar(20),
	[role] varchar(20) ,
	salary int,
	birthdate date,
	gender varchar(8),
	hiring_date date ,
	Mobile_number varchar(15),
	Home_phonenum varchar(15),
	PRIMARY KEY (PersonnelCode),
	Check ([role] in ('florist','cashier','purchaser','ShopPerson','trainee','manager')),
	Check (gender in  ('Female' , 'Male'))
);

CREATE TABLE Colour (
	color_ID int IDENTITY(100,1) PRIMARY KEY,
	color_name varchar(20),
	Hex_Code varchar(10)
);

CREATE TABLE FlowerType (
	ID int IDENTITY(1,1) PRIMARY KEY,
	Title varchar(20),
	WaterDescription varchar(200),
	LightDescription varchar(200),
	More_Info varchar(200)
);

select * from FlowerType

CREATE TABLE Occasion (
	ID int IDENTITY(1,1) PRIMARY KEY,
	Title varchar(20) ,
	Occasion_Description varchar(100),
	check (Title in ('Birthday','Anniversary','Valentine','Funeral','ChampionShip','Appreciation','Other'))
);

CREATE TABLE Customer (
	ID int IDENTITY(100,1) PRIMARY KEY,
	[first_name] varchar(20),
	[last_name] varchar(20),
	Addess varchar(50),
	phone varchar(15),
	birthdate date,
	gender varchar(8),
	total_purchase int,
	Check (gender in  ('Female' , 'Male'))	
);

CREATE TABLE GreenHouse (
	ID int IDENTITY(1,1) PRIMARY KEY,
	[name] varchar(20),
	[Manager] varchar(20),
	[Owner] varchar(20),
	[Address] varchar(100)
);

CREATE TABLE GreenHousePhones (
	GreenHouse_ID int ,
	Manager_phone varchar(15),
	phone1 varchar(15),
	phone2 varchar(15),
	phone3 varchar(15),
	PRIMARY KEY (GreenHouse_ID,Manager_phone),
	FOREIGN KEY (GreenHouse_ID) REFERENCES GreenHouse(ID)
);

CREATE TABLE Buy (
	ID int IDENTITY(1,1) PRIMARY KEY,
	Greenhouse_ID int,
	SalesPerson_ID varchar(10),
	Total_peyment int,
	Buy_date date,
	FOREIGN KEY (Greenhouse_ID) REFERENCES GreenHouse(ID),
	FOREIGN KEY (SalesPerson_ID) REFERENCES SalesPerson(PersonnelCode)
);
select * from Buy

CREATE TABLE Packaging (
	ID int IDENTITY(1,1) PRIMARY KEY,
	Packag_Type varchar(20),
	Paper_Color_ID int,
	String_Color_ID int,
	Design varchar(20),
	Package_Description varchar(100),
	[Card] varchar(4),
	Check ([Card] in ('Yes','No')),
	Check (Design in ('I design myself','I trust on florist')),
	FOREIGN KEY (Paper_Color_ID) REFERENCES Colour(color_ID),
	FOREIGN KEY (String_Color_ID) REFERENCES Colour(color_ID)
);

CREATE TABLE Flower (
	ID int IDENTITY(1,1) PRIMARY KEY,
	Flower_name varchar(30),
	Price int,
	Flower_color_ID int,
	Lasting_Time int,
	Number int,
	[Type_ID] int,
	FOREIGN KEY ([Type_ID]) REFERENCES FlowerType(ID),
	FOREIGN KEY (Flower_color_ID) REFERENCES Colour(color_ID)
);
drop Table [Order]
CREATE TABLE [Order] (
	ID int IDENTITY(1,1) PRIMARY KEY,
	Customer_ID int,
	Order_type varchar(10),
	Shop_date date,
	Occasion_ID int,
	Package_ID int,
	Wrapping_price int,
	Total_Cost int,
	Discount int,
	Final_Cost int,
	More_info varchar(200),
	Check (Order_type in ('Online','Not_Online')),
	FOREIGN KEY (Customer_ID) REFERENCES Customer(ID),
	FOREIGN KEY (Package_ID) REFERENCES Packaging(ID),
	FOREIGN KEY (Occasion_ID) REFERENCES Occasion(ID)
);

select * from [Order]

CREATE TABLE FlowersInOrder (
	Order_ID int,
	Flower_ID int,
	Number int,
	Price int,
	PRIMARY KEY (Order_ID,Flower_ID),
	FOREIGN KEY (Flower_ID) REFERENCES Flower(ID),
);
drop table FlowersInOrder

create table BoughtFlower
(
	BuyID int,
	FlowerID int,
	Number int,
	Price int
	PRIMARY KEY (BuyID,FlowerID,Number),
	FOREIGN KEY (BuyID) REFERENCES Buy(ID),
	FOREIGN KEY (FlowerID) REFERENCES Flower(ID)
);