USE FlowerShop
Go
select * from FlowersInOrder
select * from Flower
--function to trigger
with T (p,o,f)
as
(select Flower.Price ,FlowersInOrder.Order_ID,FlowersInOrder.Flower_ID  from Flower,FlowersInOrder  where Flower.ID=FlowersInOrder.Flower_ID )
update FlowersInOrder
set Price = Number * t.p
from   T,FlowersInOrder
where  FlowersInOrder.Order_ID=T.o and FlowersInOrder.Flower_ID=T.f

