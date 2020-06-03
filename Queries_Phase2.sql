use FlowerShop
go


CREATE VIEW [Flower_Color] AS
select Flower.ID,Flower.Flower_name,Colour.color_name,Colour.Hex_Code
from Flower,Colour
where Flower.Flower_color_ID=Colour.color_ID

select * from Flower_Color

--************************************************************************************

CREATE VIEW [Responsible_for_the_purchase] AS
select Buy.ID,Buy.Buy_date,GreenHouse.[name],SalesPerson.first_name,SalesPerson.last_name 
from Buy, SalesPerson ,GreenHouse
where Buy.SalesPerson_ID=SalesPerson.ID and Buy.Greenhouse_ID= GreenHouse.ID

select * from Responsible_for_the_purchase

--************************************************************************

CREATE VIEW [Order_with_Customer's_name] AS
select [Order].ID,[Order].Customer_ID,Customer.first_name,Customer.last_name,[Order].Shop_date
from [Order],Customer
where [Order].Customer_ID=Customer.ID

select * from [Order_with_Customer's_name]

--*******************************************************************

CREATE FUNCTION Final_Price
(
	-- Add the parameters for the function here
	@shopID int
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE  @Result int
	-- Add the T-SQL statements to compute the return value here
    set @Result= (select [Order].Total_Cost from [Order] where [Order].ID=@shopID) - (select [Order].Discount from [Order] where [Order].ID=@shopID)

	RETURN @Result

END
GO


select dbo.Final_Price(49)

--*******************************************************************************************