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
-- Description:	<For calculating total money a consumer should pay>

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


-- Description:	<For calculating sum of the customer payments>

CREATE FUNCTION  Total_Payment
(
	-- Add the parameters for the function here
	@Customer_ID int
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE  @Result int
	set @Result= (select Sum(Final_Cost) as t from [Order] group by Customer_ID having [Order].Customer_ID=@Customer_ID)

	RETURN @Result

END
GO

select dbo.Total_Payment(110) as total_Purchase
select * from Customer

--****************************************************************************
-- Description:	<With name and last name of a customer show all of her/his shops>
CREATE FUNCTION Orders_with_Name
(	
	-- Add the parameters for the function here
	@name varchar(20),
	@family varchar(20)
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT [Order].ID,[Order].Customer_ID,[Order].Flower_ID,[Order].Order_type,[Order].Shop_date,[Order].Number,[Order].Occasion_ID,
	[Order].Package_ID,[Order].Total_Cost,[Order].Discount,[Order].Final_Cost,[Order].More
	from [Order],Customer
	where [Order].Customer_ID=Customer.ID and Customer.first_name=@name and Customer.last_name=@family
)
GO

select * from  Orders_with_Name('Neda','Ahadi')

--*****************************************************************

-- Description:	<Show all online shops in the specific date>
CREATE FUNCTION Online_in_date
(	
	-- Add the parameters for the function here
	@when date
)
RETURNS TABLE 
AS
RETURN 
(
	select * from [Order] where Order_type='Online'
)
GO

select * from  Online_in_date('1398-12-02')

--**********************************************************************


select [Order].ID,[Order].Shop_date,[Order].Total_Cost,
avg(Discount) OVER (PARTITION by [Order].Shop_date ORDER BY [Order].ID) as AverageDiscount,
sum(Total_Cost) OVER (PARTITION by month([Order].Shop_date) ORDER BY [Order].ID) as TotalPaymentPerDay
from [Order]
order by [Order].ID

--*********************************************************************************
select * from Buy
SELECT CASE GROUPING(Buy.Greenhouse_ID)
WHEN 0 THEN Buy.Greenhouse_ID
WHEN 1 THEN '0000' --total
END AS GreenhouseTotal,
CASE GROUPING(month(Buy.Buy_date))
WHEN 0 THEN month(Buy.Buy_date)
WHEN 1 THEN '13' --all month
END AS BuyPerMonth,
SUM(Buy.Total_peyment)AS SumOfTotal_peyment
FROM Buy
GROUP BY ROLLUP(Buy.Greenhouse_ID,month(Buy.Buy_date))

--*****************************************************************
-- number of flower selling each month

select [monthofsell],[Cut Flowers ],[Potted plant],[Cactus/Succulent],[Terrarium],[Potted plant Flower],[Flowers] from
(select FlowerType.Title,[Order].Number,month([Order].Shop_date) as monthofsell
from [Order],FlowerType,Flower
where [Order].Flower_ID=Flower.ID and Flower.[Type_ID]=FlowerType.ID ) as T
PIVOT
(
Sum (T.Number)
for T.Title in ([Cut Flowers ],[Potted plant],[Cactus/Succulent],[Terrarium],[Potted plant Flower],[Flowers])
)as PVT

--*******************************************************************
