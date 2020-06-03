use FlowerShop
go

select * from Colour
select * from Flower

CREATE VIEW [Flower_Color] AS
select Flower.ID,Flower.Flower_name,Colour.color_name,Colour.Hex_Code
from Flower,Colour
where Flower.Flower_color_ID=Colour.color_ID

select * from Flower_Color