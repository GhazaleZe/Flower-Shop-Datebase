use FlowerShop
go

select * from Colour
select * from Flower

CREATE VIEW [Flower_Color] AS
select Flower.ID,Flower.Flower_name,Colour.color_name,Colour.Hex_Code
from Flower,Colour
where Flower.Flower_color_ID=Colour.color_ID

select * from Flower_Color

select * from Buy
select * from SalesPerson
select * from GreenHouse
CREATE VIEW [Responsible_for_the_purchase] AS
select Buy.ID,Buy.Buy_date,GreenHouse.[name],SalesPerson.first_name,SalesPerson.last_name 
from Buy, SalesPerson ,GreenHouse
where Buy.SalesPerson_ID=SalesPerson.ID and Buy.Greenhouse_ID= GreenHouse.ID

select * from Responsible_for_the_purchase

