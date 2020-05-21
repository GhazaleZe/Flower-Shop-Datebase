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
	[role] varchar(20) in ('florist','cashier','purchaser','ShopPerson','trainee'),
	salary int,
	birthdate date,
	gender varchar(8) in ('Fmale' , 'Male'),
	hiring_date date 
	 PRIMARY KEY (ID)
);