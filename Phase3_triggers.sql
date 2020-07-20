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
	set @Bdate = (select Customer.birthdate from Customer,inserted, [Order] where Customer.ID=[Order].Customer_ID and [Order].ID=inserted.Order_ID)--heare
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
Values (102,'Online','1399-12-03',NULL,100000,0,100000,2,780000)
declare @a int;
EXECUTE  lastOrderID  @a output 
insert into FlowersInOrder(Order_ID,Flower_ID,Number) values( @a ,14,1)


create trigger zeroFlower
ON Flower
after insert
AS
begin
	declare @fn int;
	declare @i int;
	set @fn=(select Number from inserted)
	set @i=(select ID from inserted)
	if @fn=0
		print 'There is no more flower with ID:' + str(@i);

end