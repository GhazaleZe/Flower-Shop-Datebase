USE FlowerShop
Go

CREATE FUNCTION CheckPhone
(
	-- Add the parameters for the function here
	@HOME varchar(15)
)
RETURNS varchar(100)
AS
BEGIN
	DECLARE  @Result varchar(100);
	Declare @LenH int;

	if (@LenH<>11 or @HOME <> '0%')
	begin
		set @Result='Please Enter a Right Phone Number with its city code.';
	end
	ElSE
		set @Result='True';
	Return @Result
END
GO
CREATE FUNCTION CheckMobile
(
	-- Add the parameters for the function here
	@Mobile varchar(15)
)
RETURNS varchar(105)
AS
BEGIN
	DECLARE  @Result varchar(105);
	Declare @LenM int;
	set @LenM = LEN(@Mobile);
	if (@LenM<>11 or @Mobile <> '09%'  )
	begin
		set @Result='Please Enter a Right Mobile Number starts with 0';
	end
	ElSE
		set @Result='True';
	Return @Result
END
GO
select dbo.CheckPhone('33333333333')
select dbo.CheckMobile('09130759757')

CREATE FUNCTION Profit
(
	-- Add the parameters for the function here
	@today date
)
RETURNS int
AS
BEGIN
	DECLARE  @Result int;
	DECLARE  @kharid int;
	DECLARE  @Phoroosh int;
	set @kharid= (select SUM(Total_peyment) from Buy group by Buy_date having Buy_date=@today)
	Set @Phoroosh = (select SUM(Final_Cost) from [Order] group by Shop_date having Shop_date=@today)
	set  @Result=@Phoroosh-@kharid
	Return @Result
END
GO


select * from Buy
select * from [Order]


CREATE FUNCTION Receipt
(
	-- Add the parameters for the function here
	@OrderID int
)
RETURNS table
AS
	return(
		select [Order].ID, Customer_ID,Order_type ,Flower_ID ,Flower.Flower_name,Colour.color_name,FlowersInOrder.Number ,FlowersInOrder.Price
		,Shop_date, Occasion_ID, Package_ID,Packaging.Packag_Type,Packaging.Design,Packaging.[Card], Wrapping_price, Total_Cost, Discount, Final_Cost, More_info
		from [Order],FlowersInOrder,Flower,Colour,Packaging
		where [Order].ID=FlowersInOrder.Order_ID and FlowersInOrder.Flower_ID=Flower.ID and
		Flower.Flower_color_ID=Colour.color_ID  and [Order].Package_ID=Packaging.ID
		and [Order].ID=@OrderID
	)

GO