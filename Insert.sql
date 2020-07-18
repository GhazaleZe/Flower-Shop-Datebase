USE FlowerShop
Go

select * from SalesPerson
insert into SalesPerson(PersonnelCode,first_name,last_name,national_code,working_hour,[role],salary,birthdate,gender,hiring_date,Mobile_number,Home_phonenum )
values ('961111111','Hasti','Gohari','2948201047','8-13','florist','5400000','1988-12-21','Female','1396-07-12','09121111111','02111111111')
insert into SalesPerson(PersonnelCode,first_name,last_name,national_code,working_hour,[role],salary,birthdate,gender,hiring_date,Mobile_number,Home_phonenum)
values ('9673992237','Pedram','Kamyar','1287589023','8-13','florist','5400000','1993-09-11','Male','1396-10-01','09132222222','03122222222')
insert into SalesPerson(PersonnelCode,first_name,last_name,national_code,working_hour,[role],salary,birthdate,gender,hiring_date,Mobile_number,Home_phonenum)
values ('9773992237','Mahta','Yari','1286392649','8-13','cashier','5000000','1996-02-11','Female','1397-02-01','09133333333','03133333333')
insert into SalesPerson(PersonnelCode,first_name,last_name,national_code,working_hour,[role],salary,birthdate,gender,hiring_date,Mobile_number,Home_phonenum)
values ('9373992237','Ahoo','Farmani','1285799221','8-20','ShopPerson','10960000','1992-07-13','Female','1393-01-20','09104444444','01144444444')

insert into SalesPerson(PersonnelCode,first_name,last_name,national_code,working_hour,[role],salary,birthdate,gender,hiring_date,Mobile_number,Home_phonenum)
values ('941111111','Fateme','Bahrami','1677903328','15-19','florist','5400000','1996-01-21','Female','1394-07-01','09135555555','03155555555')
insert into SalesPerson(PersonnelCode,first_name,last_name,national_code,working_hour,[role],salary,birthdate,gender,hiring_date,Mobile_number,Home_phonenum)
values ('9573992237','Armin','Bahrami','1670074271','19-23','florist','5400000','1998-12-11','Male','1395-01-01','09136666666','03166666666')
insert into SalesPerson(PersonnelCode,first_name,last_name,national_code,working_hour,[role],salary,birthdate,gender,hiring_date,Mobile_number,Home_phonenum)
values ('9578992217','Amin','Moradi','1279854321','15-23','cashier','7900000','1996-01-19','Male','1395-02-01','09167777777','0317777777')

insert into SalesPerson(PersonnelCode,first_name,last_name,national_code,working_hour,[role],salary,birthdate,gender,hiring_date,Mobile_number,Home_phonenum)
values ('9378993266','Ramin','Farbod','1286778434','6-10','purchaser','6100000','1996-01-21','Male','1393-07-01','09138888888','03188888888')
insert into SalesPerson(PersonnelCode,first_name,last_name,national_code,working_hour,[role],salary,birthdate,gender,hiring_date,Mobile_number,Home_phonenum)
values ('9473955537','Raha','Yousofi','1280074275','6-10','purchaser','6100000','1990-12-11','Female','1394-01-20','09119999999','03199999999')
insert into SalesPerson(PersonnelCode,first_name,last_name,national_code,working_hour,[role],salary,birthdate,gender,hiring_date,Mobile_number,Home_phonenum)
values ('9678992212','Amin','Moradi','1279856781','6-10','purchaser','6100000','1993-01-19','Male','1396-02-01','09132221111','03121212143')

select * from Colour
insert into Colour(color_name,Hex_Code) values('Red','#FF0000')
insert into Colour(color_name,Hex_Code) values('Maroon','#800000')
insert into Colour(color_name,Hex_Code) values('DarkRed','#8B0000')
insert into Colour(color_name,Hex_Code) values('Pink','#FFC0CB')
insert into Colour(color_name,Hex_Code) values('MediumVioletRed','#C71585')
insert into Colour(color_name,Hex_Code) values('PaleVioletRed','#DB7093')
insert into Colour(color_name,Hex_Code) values('LightSalmon','#FFA07A')
insert into Colour(color_name,Hex_Code) values('Orange','#FFA500')
insert into Colour(color_name,Hex_Code) values('Yellow','#FFFF00')
insert into Colour(color_name,Hex_Code) values('LemonChiffon','#FFFACD')
insert into Colour(color_name,Hex_Code) values('Lavender','#E6E6FA')
insert into Colour(color_name,Hex_Code) values('Orange','#FFA500')
insert into Colour(color_name,Hex_Code) values('Purple','#800080')
insert into Colour(color_name,Hex_Code) values('RebeccaPurple','#663399')
insert into Colour(color_name,Hex_Code) values('LimeGreen','#32CD32')
insert into Colour(color_name,Hex_Code) values('SeaGreen','#2E8B57')
insert into Colour(color_name,Hex_Code) values('Olive','#808000')
insert into Colour(color_name,Hex_Code) values('Teal','#008080')
insert into Colour(color_name,Hex_Code) values('SkyBlue','#87CEEB')
insert into Colour(color_name,Hex_Code) values('Navy','#000080')
insert into Colour(color_name,Hex_Code) values('BlanchedAlmond','#FFEBCD')
insert into Colour(color_name,Hex_Code) values('Sienna','#A0522D')
insert into Colour(color_name,Hex_Code) values('White','#FFFFFF')
insert into Colour(color_name,Hex_Code) values('Snow','#FFFAFA')
insert into Colour(color_name,Hex_Code) values('Gold','#FFD700')


select * from FlowerType
delete from FlowerType 
insert into FlowerType(Title,More_Info) values('Cut Flowers','Shakhe boride/')
insert into FlowerType(Title,More_Info) values('Flowers','golhaye zinati baghche/')
insert into FlowerType(Title,More_Info) values('Potted plant','Goldani bedoone Gol/')
insert into FlowerType(Title) values('Cactus/Succulent')
insert into FlowerType(Title,More_Info) values('Terrarium','Bagh shishei/')
insert into FlowerType(Title,More_Info) values('Potted plant Flower','Goldani ba Gol/')

select * from Occasion

insert into Occasion(Title) values ('Birthday')
insert into Occasion(Title) values ('Anniversary')
insert into Occasion(Title) values ('Valentine')
insert into Occasion(Title) values ('Funeral')
insert into Occasion(Title) values ('ChampionShip')
insert into Occasion(Title) values ('Appreciation')
insert into Occasion(Title) values ('Other')

select * from Customer
delete from Customer
insert into Customer(first_name,last_name,Addess,phone,birthdate,gender) 
values('Neda','Ahadi','Esfahan,Apadana Aval,k32','33575679','1365-09-30','Female')
insert into Customer(first_name,last_name,Addess,phone,birthdate,gender) 
values('Zahra','Baradaran','Tehran,YousofAbad,bisotoon','22575679','1345-11-03','Female') 
insert into Customer(first_name,last_name,Addess,phone,birthdate,gender) 
values('Darab','Lotfi',null,null,'1332-12-03','Male') 
insert into Customer(first_name,last_name,Addess,phone,birthdate,gender) 
values('Mohammad','Rezaie',null,null,'1366-01-13','Male') 
insert into Customer(first_name,last_name,Addess,phone,birthdate,gender) 
values('Mohammad','lolaie',null,null,'1351-11-03','Male') 
insert into Customer(first_name,last_name,Addess,phone,birthdate,gender) 
values('Bahar','Royaie',null,null,'1377-08-03','Female') 
insert into Customer(first_name,last_name,Addess,phone,birthdate,gender) 
values('Soroush','Shafiee','Esfahan,Molasadra,k34','33895679','1370-09-30','Male')
insert into Customer(first_name,last_name,Addess,phone,birthdate,gender) 
values('Hoda','Zaribaf','Shiraz,Sharyati,k144','49575679','1367-11-03','Female') 


select * from GreenHouse

insert into GreenHouse([name],Manager,[Owner],[Address])
values ('SabzKhane','Raha Ahmadi','Narges Taghados','Kashan,Voroodi1')
insert into GreenHouse([name],Manager,[Owner],[Address])
values ('BehtarinGiyah','Ghazale Zehtab','Ghazale Zehtab','Esfahan,Masir1')
insert into GreenHouse([name],Manager,[Owner],[Address])
values ('GoleZendegi','Farimah Ataie','Nasim Zareie','Esfahan,Masir2')

select * from GreenHousePhones
insert into GreenHousePhones([GreenHouse_ID],Manager_phone,phone1,phone2,phone3)
values(1,09134466887,03145564882,03177885594,03144687639)
insert into GreenHousePhones([GreenHouse_ID],Manager_phone,phone1,phone2,phone3)
values(2,09357786773,03179904771,0313378897,03166512789)
insert into GreenHousePhones([GreenHouse_ID],Manager_phone,phone1,phone2)
values(3,09130987698,03166445599,03166776654)

select * from SalesPerson where [role]='purchaser'
select * from GreenHouse
select * from Buy

insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',1900000,'1398-12-02')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',2900000,'1398-12-02')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',1100000,'1398-12-02')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',900000,'1398-12-03')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',500000,'1398-12-03')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',1000000,'1398-12-03')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',1900000,'1398-12-04')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',2900000,'1398-12-04')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',1100000,'1398-12-04')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',900000,'1398-12-05')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',500000,'1398-12-05')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',1000000,'1398-12-05')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',900000,'1398-12-06')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',500000,'1398-12-06')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',600000,'1398-12-06')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',900000,'1398-12-07')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',500000,'1398-12-07')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',600000,'1398-12-07')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',900000,'1398-12-11')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',500000,'1398-12-11')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',600000,'1398-12-11')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',900000,'1398-12-12')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',500000,'1398-12-12')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',600000,'1398-12-12')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',900000,'1398-12-15')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',500000,'1398-12-15')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',600000,'1398-12-15')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',900000,'1398-12-17')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',500000,'1398-12-17')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',600000,'1398-12-17')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',900000,'1398-12-19')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',500000,'1398-12-19')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',600000,'1398-12-19')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',1000000,'1398-12-21')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',500000,'1398-12-21')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',600000,'1398-12-21')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',900000,'1398-12-23')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',500000,'1398-12-23')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',600000,'1398-12-23')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',900000,'1398-12-25')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',500000,'1398-12-25')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',600000,'1398-12-25')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',300000,'1398-12-27')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',500000,'1398-12-27')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',400000,'1398-12-27')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',900000,'1399-01-05')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',500000,'1399-01-05')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',600000,'1399-01-05')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',900000,'1399-01-06')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',500000,'1399-01-07')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',600000,'1399-01-08')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',900000,'1399-01-09')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',500000,'1399-01-10')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',600000,'1399-01-12')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',900000,'1399-01-14')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',500000,'1399-01-15')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',600000,'1399-01-16')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',900000,'1399-01-17')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',500000,'1399-01-18')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',600000,'1399-01-19')

insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(1,'9378993266',900000,'1399-01-26')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(2,'9473955537',500000,'1399-01-29')
insert into Buy(Greenhouse_ID,SalesPerson_ID,Total_peyment,Buy_date) 
values(3,'9678992212',600000,'1399-02-02')


select * from Packaging
select * from Occasion
delete from Packaging
insert into Packaging(Packag_Type,Design,[Card])
values ('Basket','I trust on florist','Yes')
insert into Packaging(Packag_Type,Paper_Color_ID,String_Color_ID,Design,[Card])
values ('Basket',119,102,'I design myself','No')
insert into Packaging(Packag_Type,Design,[Card])
values ('Basket','I trust on florist','No')
insert into Packaging(Packag_Type,Design,[Card])
values ('Bouquet/Dastegol','I trust on florist','Yes')
insert into Packaging(Packag_Type,Design,[Card])
values ('Bouquet/Dastegol','I trust on florist','No')
insert into Packaging(Packag_Type,Paper_Color_ID,String_Color_ID,Design,Package_Description,[Card])
values ('Bouquet/Dastegol',107,106,'I design myself','I Love You on card','Yes')
insert into Packaging(Packag_Type,Paper_Color_ID,String_Color_ID,Design,Package_Description,[Card])
values ('Bouquet/Dastegol',109,114,'I design myself','Proud of you on card','Yes')
insert into Packaging(Packag_Type,Design,[Card])
values ('Single Flower','I trust on florist','No')
insert into Packaging(Packag_Type,Design,Package_Description,[Card])
values ('Single Flower','I trust on florist','Use Red','No')

select * from Flower
select * from Buy
select * from FlowerType
select * from Colour
insert into Flower(Flower_name,Price,Flower_color_ID,Lasting_Time,Number,[Type_ID])
values ('Rose',8000,'102','3',220,2)
insert into Flower(Flower_name,Price,Flower_color_ID,Lasting_Time,Number,[Type_ID])
values ('Rose',8000,'100','3',200,2)

insert into Flower(Flower_name,Price,Flower_color_ID,Lasting_Time,Number,[Type_ID])
values ('Rose',8000,'103','3',200,2)

insert into Flower(Flower_name,Price,Flower_color_ID,Lasting_Time,Number,[Type_ID])
values ('Rose',8000,'122','3',100,2)

insert into Flower(Flower_name,Price,Flower_color_ID,Lasting_Time,Number,[Type_ID])
values ('Aralia',190000,'111','3',180,3)

insert into Flower(Flower_name,Price,Flower_color_ID,Lasting_Time,Number,[Type_ID])
values ('Aralia',210000,'122','3',180,3)

insert into Flower(Flower_name,Price,Flower_color_ID,Lasting_Time,Number,[Type_ID])
values ('Aspidistra elatior',80000,'111','3',100,3)

insert into Flower(Flower_name,Price,Flower_color_ID,Lasting_Time,Number,[Type_ID])
values ('Gazmania',40000,'107','14',20,6)

insert into Flower(Flower_name,Price,Flower_color_ID,Lasting_Time,Number,[Type_ID])
values ('Virziya',60000,'124','14',20,6)

insert into Flower(Flower_name,Price,Flower_color_ID,Lasting_Time,Number,[Type_ID])
values ('Virzayi',600000,'106','14',20,6)

insert into Flower(Flower_name,Price,Flower_color_ID,Lasting_Time,Number,[Type_ID])
values ('Orkide',300000,'108','14',10,6)

insert into Flower(Flower_name,Price,Flower_color_ID,Lasting_Time,Number,[Type_ID])
values ('Orkide',300000,'122','14',10,6)
insert into Flower(Flower_name,Price,Flower_color_ID,Lasting_Time,Number,[Type_ID])
values ('Anar',50000,'100','14',10,6)
insert into Flower(Flower_name,Price,Flower_color_ID,Lasting_Time,Number,[Type_ID])
values ('Sonbol',22000,'108','14',10,6)
insert into Flower(Flower_name,Price,Flower_color_ID,Lasting_Time,Number,[Type_ID])
values ('Havertia',25000,'111','7',20,4)
insert into Flower(Flower_name,Price,Flower_color_ID,Lasting_Time,Number,[Type_ID])
values ('Cerasula',60000,'111','7',100,4)
insert into Flower(Flower_name,Price,Flower_color_ID,Lasting_Time,Number,[Type_ID])
values ('kirsto',90000,'111','7',20,4)
insert into Flower(Flower_name,Price,Flower_color_ID,Lasting_Time,Number,[Type_ID])
values ('Mirtilo',80000,'110','7',10,4)







select * from Customer
select * from Flower
select * from Packaging
select * from [Order]
select * from Occasion
select * from FlowersInOrder
insert into [Order] (Customer_ID,Order_type,Shop_date,Package_ID,Total_Cost,Discount,Final_Cost,Occasion_ID,Wrapping_price)
Values (100,'Online','1398-12-02',2,0,0,0,6,40000)
insert into FlowersInOrder(Order_ID,Flower_ID,Number) values(1,2,20)

insert into [Order] (Customer_ID,Order_type,Shop_date,Package_ID,Total_Cost,Discount,Final_Cost,Occasion_ID,Wrapping_price)
Values (101,'Online','1398-12-03',2,350000,0,350000,1,130000)
insert into FlowersInOrder(Order_ID,Flower_ID,Number) values(1,3,40)

insert into [Order] (Customer_ID,Order_type,Shop_date,Package_ID,Total_Cost,Discount,Final_Cost,Occasion_ID,Wrapping_price)
Values (102,'Not_Online','1398-12-03',6,50000,0,50000,1,20000)
insert into FlowersInOrder(Order_ID,Flower_ID,Number) values(4,4,4)
insert into FlowersInOrder(Order_ID,Flower_ID,Number) values(4,3,4)

insert into [Order] (Customer_ID,Order_type,Shop_date,Package_ID,Total_Cost,Discount,Final_Cost,Occasion_ID,Wrapping_price,More_info)
Values (103,'Not_Online','1398-12-03',6,1500000,0,1500000,6,25000,'All Reses are used')
insert into FlowersInOrder(Order_ID,Flower_ID,Number) values(5,4,150)

insert into [Order] (Customer_ID,Order_type,Shop_date,Package_ID,Total_Cost,Discount,Final_Cost,Occasion_ID,Wrapping_price)
Values (104,'Not_Online','1398-12-04',6,150000,0,150000,2,35000)
insert into FlowersInOrder(Order_ID,Flower_ID,Number) values(6,4,9)

insert into [Order] (Customer_ID,Order_type,Shop_date,Package_ID,Total_Cost,Discount,Final_Cost,Occasion_ID,Wrapping_price)
Values (105,'Not_Online','1398-12-04',6,430000,0,430000,1,40000)
insert into FlowersInOrder(Order_ID,Flower_ID,Number) values(7,3,12)

insert into [Order] (Customer_ID,Order_type,Shop_date,Package_ID,Total_Cost,Discount,Final_Cost,Occasion_ID,Wrapping_price)
Values (100,'Not_Online','1398-12-04',6,30000,0,30000,6,15000)
insert into FlowersInOrder(Order_ID,Flower_ID,Number) values(8,2,2)

insert into [Order] (Customer_ID,Order_type,Shop_date,Package_ID,Total_Cost,Discount,Final_Cost,Occasion_ID,Wrapping_price,More_info)
Values (103,'Not_Online','1398-12-05',NULL,50000,0,50000,6,10000,NULL)
insert into FlowersInOrder(Order_ID,Flower_ID,Number) values(9,19,1)

insert into [Order] (Customer_ID,Order_type,Shop_date,Package_ID,Total_Cost,Discount,Final_Cost,Occasion_ID,Wrapping_price)
Values (104,'Not_Online','1398-12-05',NULL,250000,30000,220000,1,40000)
insert into FlowersInOrder(Order_ID,Flower_ID,Number) values(10,15,4)

insert into [Order] (Customer_ID,Order_type,Shop_date,Package_ID,Total_Cost,Discount,Final_Cost,Occasion_ID,Wrapping_price)
Values (105,'Not_Online','1398-12-05',NULL,100000,0,100000,1,780000)
insert into FlowersInOrder(Order_ID,Flower_ID,Number) values(11,4,2)
/*
insert into [Order] (Customer_ID,Order_type,Shop_date,Package_ID,Total_Cost,Discount,Final_Cost,Occasion_ID,Wrapping_price)
Values (106,55,'Online','1398-12-05',2,NULL,30000,0,30000,6)

insert into [Order] (Customer_ID,Order_type,Shop_date,Package_ID,Total_Cost,Discount,Final_Cost,Occasion_ID,Wrapping_price)
Values (107,3,'Online','1398-12-05',22,7,300000,0,300000,2)

insert into [Order] (Customer_ID,Order_type,Shop_date,Package_ID,Total_Cost,Discount,Final_Cost,Occasion_ID,Wrapping_price)
Values (100,1,'Online','1398-12-06',20,2,250000,0,250000,6)

insert into [Order] (Customer_ID,Order_type,Shop_date,Package_ID,Total_Cost,Discount,Final_Cost,Occasion_ID,Wrapping_price)
Values (101,3,'Online','1398-12-06',40,2,350000,0,350000,6)

insert into [Order] (Customer_ID,Order_type,Shop_date,Package_ID,Total_Cost,Discount,Final_Cost,Occasion_ID,Wrapping_price)
Values (102,1,'Not_Online','1398-12-06',4,6,50000,0,50000,6)

insert into [Order] (Customer_ID,Order_type,Shop_date,Package_ID,Total_Cost,Discount,Final_Cost,Occasion_ID,Wrapping_price)
Values (100,2,'Online','1398-12-09',20,2,250000,0,250000,6)

insert into [Order] (Customer_ID,Order_type,Shop_date,Package_ID,Total_Cost,Discount,Final_Cost,Occasion_ID,Wrapping_price)
Values (101,5,'Online','1398-12-09',40,2,350000,0,350000,6)
*/

with T(id,t) as 
(select Customer_ID,Sum(Final_Cost) as t from [Order] group by Customer_ID)
update Customer
set total_purchase=t
from Customer,T
where Customer.ID=T.id

select * from BoughtFlower;
select * from Buy
select * from Flower
insert into BoughtFlower values(1,2,300,150000)
insert into BoughtFlower values(1,3,900,450000)
insert into BoughtFlower values(1,4,300,150000)
insert into BoughtFlower values(1,5,300,150000)

insert into BoughtFlower values(4,2,600,300000)
insert into BoughtFlower values(4,3,900,450000)
insert into BoughtFlower values(4,4,300,150000)
insert into BoughtFlower values(4,5,300,150000)


insert into BoughtFlower values(7,2,600,300000)
insert into BoughtFlower values(7,3,900,450000)
insert into BoughtFlower values(7,4,300,150000)
insert into BoughtFlower values(7,5,300,150000)

insert into BoughtFlower values(10,2,600,300000)
insert into BoughtFlower values(10,3,900,450000)
insert into BoughtFlower values(10,4,300,150000)
insert into BoughtFlower values(10,5,300,150000)

insert into BoughtFlower values(13,2,600,300000)
insert into BoughtFlower values(13,3,900,450000)
insert into BoughtFlower values(13,4,300,150000)
insert into BoughtFlower values(13,5,300,150000)

insert into BoughtFlower values(16,2,600,300000)
insert into BoughtFlower values(16,3,900,450000)
insert into BoughtFlower values(16,4,300,150000)
insert into BoughtFlower values(16,5,300,150000)

insert into BoughtFlower values(19,2,600,300000)
insert into BoughtFlower values(19,3,900,450000)
insert into BoughtFlower values(19,4,300,150000)
insert into BoughtFlower values(19,5,300,150000)

insert into BoughtFlower values(21,2,600,300000)
insert into BoughtFlower values(21,3,900,450000)
insert into BoughtFlower values(21,4,300,150000)
insert into BoughtFlower values(21,5,300,150000)

insert into BoughtFlower values(24,2,600,300000)
insert into BoughtFlower values(24,3,900,450000)
insert into BoughtFlower values(24,4,300,150000)
insert into BoughtFlower values(24,5,300,150000)

insert into BoughtFlower values(27,2,600,300000)
insert into BoughtFlower values(27,3,900,450000)
insert into BoughtFlower values(27,4,300,150000)
insert into BoughtFlower values(27,5,300,150000)


insert into BoughtFlower values(30,2,600,300000)
insert into BoughtFlower values(30,3,900,450000)
insert into BoughtFlower values(30,4,300,150000)
insert into BoughtFlower values(30,5,300,150000)


insert into BoughtFlower values(2,6,100,1000000)
insert into BoughtFlower values(2,7,200,1000000)
insert into BoughtFlower values(2,8,300,1000000)
insert into BoughtFlower values(2,9,300,1000000)


insert into BoughtFlower values(5,6,100,1000000)
insert into BoughtFlower values(5,7,200,1000000)
insert into BoughtFlower values(5,8,300,1000000)
insert into BoughtFlower values(5,9,300,1000000)

insert into BoughtFlower values(8,6,100,1000000)
insert into BoughtFlower values(8,7,200,1000000)
insert into BoughtFlower values(11,8,300,1000000)
insert into BoughtFlower values(11,9,300,1000000)

insert into BoughtFlower values(3,10,100,1000000)
insert into BoughtFlower values(3,11,200,1000000)
insert into BoughtFlower values(6,12,300,900000)
insert into BoughtFlower values(6,13,300,2000000)

insert into BoughtFlower values(9,10,100,1000000)
insert into BoughtFlower values(9,11,200,1000000)
insert into BoughtFlower values(12,12,300,900000)
insert into BoughtFlower values(12,13,300,2000000)

insert into BoughtFlower values(9,14,500,1000000)
insert into BoughtFlower values(9,15,200,1000000)
insert into BoughtFlower values(12,16,340,780000)
insert into BoughtFlower values(12,17,340,2000000)


insert into BoughtFlower values(15,14,500,1000000)
insert into BoughtFlower values(15,15,200,1000000)
insert into BoughtFlower values(18,16,340,780000)
insert into BoughtFlower values(18,17,340,2000000)


insert into BoughtFlower values(22,14,500,1000000)
insert into BoughtFlower values(22,15,200,1000000)
insert into BoughtFlower values(25,18,340,780000)
insert into BoughtFlower values(25,19,340,2000000)

with T(i,p) as
(
	select BuyID,Sum(Price)
	from BoughtFlower
	group by BuyID
)
update Buy
set Total_peyment=T.p
from Buy,T
Where Buy.ID=T.i

