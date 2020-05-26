USE FlowerShop
Go

select * from SalesPerson
insert into SalesPerson(ID,first_name,last_name,national_code,working_hour,[role],salary,birthdate,gender,hiring_date)
values ('961111111','Hasti','Gohari','2948201047','8-13','florist','5400000','1988-12-21','Female','1396-07-12')
insert into SalesPerson(ID,first_name,last_name,national_code,working_hour,[role],salary,birthdate,gender,hiring_date)
values ('9673992237','Pedram','Kamyar','1287589023','8-13','florist','5400000','1993-09-11','Male','1396-10-01')
insert into SalesPerson(ID,first_name,last_name,national_code,working_hour,[role],salary,birthdate,gender,hiring_date)
values ('9773992237','Mahta','Yari','1286392649','8-13','cashier','5000000','1996-02-11','Female','1397-02-01')
insert into SalesPerson(ID,first_name,last_name,national_code,working_hour,[role],salary,birthdate,gender,hiring_date)
values ('9373992237','Ahoo','Farmani','1285799221','8-20','ShopPerson','10960000','1992-07-13','Female','1393-01-20')

insert into SalesPerson(ID,first_name,last_name,national_code,working_hour,[role],salary,birthdate,gender,hiring_date)
values ('941111111','Fateme','Bahrami','1677903328','15-19','florist','5400000','1996-01-21','Female','1394-07-01')
insert into SalesPerson(ID,first_name,last_name,national_code,working_hour,[role],salary,birthdate,gender,hiring_date)
values ('9573992237','Armin','Bahrami','1670074271','19-23','florist','5400000','1998-12-11','Male','1395-01-01')
insert into SalesPerson(ID,first_name,last_name,national_code,working_hour,[role],salary,birthdate,gender,hiring_date)
values ('9578992217','Amin','Moradi','1279854321','15-23','cashier','7900000','1996-01-19','Male','1395-02-01')

insert into SalesPerson(ID,first_name,last_name,national_code,working_hour,[role],salary,birthdate,gender,hiring_date)
values ('9378993266','Ramin','Farbod','1286778434','6-10','purchaser','6100000','1996-01-21','Male','1393-07-01')
insert into SalesPerson(ID,first_name,last_name,national_code,working_hour,[role],salary,birthdate,gender,hiring_date)
values ('9473955537','Raha','Yousofi','1280074275','6-10','purchaser','6100000','1990-12-11','Female','1394-01-20')
insert into SalesPerson(ID,first_name,last_name,national_code,working_hour,[role],salary,birthdate,gender,hiring_date)
values ('9678992212','Amin','Moradi','1279856781','6-10','purchaser','6100000','1993-01-19','Male','1396-02-01')

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


select * from FlowerType
delete from FlowerType
insert into FlowerType(Title,More_Info) values('Cut Flowers','Shakhe boride/')
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
insert into Occasion(Title,Occasion_Description) values ('other','Appreciation')

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

insert into GreenHouse([name],Manager,[Owner],[Address],phone)
values ('SabzKhane','Raha Ahmadi','Narges Taghados','Kashan,Voroodi1','5589611')
insert into GreenHouse([name],Manager,[Owner],[Address],phone)
values ('BehtarinGiyah','Ghazale Zehtab','Ghazale Zehtab','Esfahan,Masir1','33289611')
insert into GreenHouse([name],Manager,[Owner],[Address],phone)
values ('GoleZendegi','Farimah Ataie','Nasim Zareie','Esfahan,Masir2','36680699')