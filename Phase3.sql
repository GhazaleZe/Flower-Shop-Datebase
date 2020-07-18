USE FlowerShop
Go
select * from FlowersInOrder
select * from Flower;
--function to trigger

CREATE PROCEDURE PriceOK
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
END
GO

--exec  PriceToFlowersInOrder(4)
select * from [Order]
select * from  FlowersInOrder

