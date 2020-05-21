use FlowerShop
Go
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);

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

