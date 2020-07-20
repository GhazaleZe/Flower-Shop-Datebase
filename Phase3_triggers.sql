use FlowerShop
Go



ALTER trigger insertPurchuse
ON   [Order]
after insert
AS
begin
	update Customer
	set total_purchase=inserted.Final_Cost
	from  Customer,inserted
	where Customer.ID=inserted.Customer_ID;

	with T (p,o,f)
	as
	(select Flower.Price ,FlowersInOrder.Order_ID,FlowersInOrder.Flower_ID 
	from Flower,FlowersInOrder,inserted 
	where Flower.ID=FlowersInOrder.Flower_ID and FlowersInOrder.Order_ID=inserted.ID)
	update FlowersInOrder
	set Price = Number * t.p
	from   T,FlowersInOrder,inserted
	where  FlowersInOrder.Order_ID=T.o and FlowersInOrder.Flower_ID=T.f  and FlowersInOrder.Order_ID=inserted.ID;	
	with Ta(o,p) as 
	(
		select Order_ID,sum(Price)
		from FlowersInOrder,inserted
		where Order_ID=inserted.ID
		group by Order_ID

	)
	UPdate [Order]
	set Total_Cost=Ta.p+[Order].Wrapping_price
	from [Order],Ta,inserted
	where [Order].ID=Ta.o and [Order].ID=inserted.ID;


	UPdate [Order]
	set Final_Cost= inserted.Total_Cost-inserted.Discount
	from [Order],inserted
	where[Order].ID=inserted.ID;

	update Flower
	set Flower.Number=Flower.Number-FlowersInOrder.Number
	from Flower,FlowersInOrder,inserted
	where Flower.ID=FlowersInOrder.Flower_ID and FlowersInOrder.Order_ID= inserted.ID;
end


--***********************************************************************

create trigger InsertBuy 
ON  Buy
after insert
AS
begin
	with T(i) as
	(select Buy.ID from Buy,inserted where Buy.Buy_date=inserted.Buy_date),
	T1(fi,n) as
	(select  BoughtFlower.FlowerID, BoughtFlower.Number from BoughtFlower,T where BoughtFlower.BuyID=T.i )
	update Flower
	set Number=Number+T1.n
	from Flower,T1
	where  Flower.ID=T1.fi
end