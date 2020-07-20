USE FlowerShop
Go
select * from FlowersInOrder
select * from Flower;
--function to trigger

CREATE PROCEDURE Price_NumberOK
	-- Add the parameters for the stored procedure here
	 @OrderID int
AS
BEGIN
	SET NOCOUNT ON;
	with T (p,o,f)
	as
	(select Flower.Price ,FlowersInOrder.Order_ID,FlowersInOrder.Flower_ID 
	from Flower,FlowersInOrder 
	where Flower.ID=FlowersInOrder.Flower_ID and FlowersInOrder.Order_ID=@OrderID)
	update FlowersInOrder
	set Price = Number * t.p
	from   T,FlowersInOrder
	where  FlowersInOrder.Order_ID=T.o and FlowersInOrder.Flower_ID=T.f  and FlowersInOrder.Order_ID=@OrderID;

	
	with Ta(o,p) as 
	(
		select Order_ID,sum(Price)
		from FlowersInOrder
		group by Order_ID
		having Order_ID=@OrderID

	)
	UPdate [Order]
	set Total_Cost=Ta.p+[Order].Wrapping_price
	from [Order],Ta
	where [Order].ID=Ta.o and [Order].ID=@OrderID;


	UPdate [Order]
	set Final_Cost= Total_Cost-Discount
	from [Order]
	where[Order].ID=@OrderID;

	update Flower
	set Flower.Number=Flower.Number-FlowersInOrder.Number
	from Flower,FlowersInOrder
	where Flower.ID=FlowersInOrder.Flower_ID and FlowersInOrder.Order_ID= @OrderID;

	update Customer
	set total_purchase=[Order].Final_Cost
	from  Customer,[Order]
	where Customer.ID=[Order].Customer_ID and [Order].ID=@OrderID
END
GO

--exec  PriceToFlowersInOrder(4)
select * from [Order]
select * from  FlowersInOrder
select * from Flower
select * from BoughtFlower


CREATE PROCEDURE AddFlower
	-- Add the parameters for the stored procedure here
	 @Bdate date
AS
BEGIN
	SET NOCOUNT ON;
	with T(i) as
	(select Buy.ID from Buy where Buy.Buy_date=@Bdate),
	T1(fi,n) as
	(select  BoughtFlower.FlowerID, BoughtFlower.Number from BoughtFlower,T where BoughtFlower.BuyID=T.i )
	update Flower
	set Number=Number+T1.n
	from Flower,T1
	where  Flower.ID=T1.fi
END
GO

select * from Buy;

CREATE PROCEDURE BirthdateDis
		@OrderID int,
		@CustomerID int
AS
BEGIN
	SET NOCOUNT ON;
	declare @sdate date;
	declare @Bdate date;
	set @sdate = (select [Order].Shop_date from [Order] where [Order].ID=@OrderID and [Order].Customer_ID=@CustomerID);
	set @Bdate = (select Customer.birthdate from Customer where Customer.ID=@CustomerID)
	if MONTH(@sdate)=MONTH(@Bdate) and DAY(@sdate)=DAY(@Bdate)
		begin
			update [Order]
			set Discount = Total_Cost * 0.3, Final_Cost=Total_Cost * 0.7
			from [Order]
			where ID=@OrderID
		end

END
GO

CREATE PROCEDURE lastOrderID( @lastID int output)
AS
BEGIN
	SET NOCOUNT ON;
    set @lastID =(SELECT TOP 1 [Order].ID FROM [Order] ORDER BY ID DESC )
END
GO
