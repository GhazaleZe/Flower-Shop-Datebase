USE FlowerShop
Go
select * from FlowersInOrder
select * from Flower;
--function to trigger

CREATE PROCEDURE PriceToFlowersInOrder
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
	where  FlowersInOrder.Order_ID=T.o and FlowersInOrder.Flower_ID=T.f  and FlowersInOrder.Order_ID=@OrderID
END
GO

--exec  PriceToFlowersInOrder(4)
select * from [Order]
select * from  FlowersInOrder


