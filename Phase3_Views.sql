use FlowerShop
go
create view [Buy_Per_Month] as
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

select * from Buy_Per_Month
select * from FlowersInOrder
-- number of flower selling each month

Create view selling_Flower_PerMonth as
select [monthofsell],[Cut Flowers ],[Potted plant],[Cactus/Succulent],[Terrarium],[Potted plant Flower],[Flowers] from
(select FlowerType.Title,ISNULL(FlowersInOrder.Number,0) as Number,month([Order].Shop_date) as monthofsell
from [Order],FlowerType,Flower,FlowersInOrder
where FlowersInOrder.Flower_ID=Flower.ID and Flower.[Type_ID]=FlowerType.ID ) as T
PIVOT
(
Sum (T.Number)
for T.Title in ([Cut Flowers ],[Potted plant],[Cactus/Succulent],[Terrarium],[Potted plant Flower],[Flowers])
)as PVT

select * from selling_Flower_PerMonth;

Create View Monthly_Final_cost as
select [Order].ID,[Order].Shop_date,[Order].Final_Cost,
avg(Discount) OVER (PARTITION by [Order].Shop_date ORDER BY [Order].ID) as AverageDiscount,
sum(Final_Cost) OVER (PARTITION by month([Order].Shop_date) ORDER BY [Order].ID) as TotalPaymentPerDay
from [Order]
--order by [Order].ID

select * from Monthly_Final_cost

