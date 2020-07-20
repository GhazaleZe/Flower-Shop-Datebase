use FlowerShop
Go


create trigger BirthdayDiscount
ON FlowersInOrder
after insert
AS
begin
	declare @sdate date;
	declare @Bdate date;
	set @sdate = (select [Order].Shop_date from [Order],inserted where [Order].ID=inserted.Order_ID );
	set @Bdate = (select Customer.birthdate from Customer,inserted where Customer.ID=[Order].Customer_ID)--heare
	if MONTH(@sdate)=MONTH(@Bdate) and DAY(@sdate)=DAY(@Bdate)
		begin
			update [Order]
			set Discount =  [Order].Total_Cost * 0.3, Final_Cost= [Order].Total_Cost * 0.7
			from [Order],inserted
			where [Order].ID=inserted.Order_ID
		end

end

select * from [order]
insert into [Order] (Customer_ID,Order_type,Shop_date,Package_ID,Total_Cost,Discount,Final_Cost,Occasion_ID,Wrapping_price)
Values (102,'Online','1398-12-03',NULL,100000,0,100000,2,780000)
insert into FlowersInOrder(Order_ID,Flower_ID,Number) values(12,14,1)

declare @a int
set @a=12
exec Price_NumberOK 12