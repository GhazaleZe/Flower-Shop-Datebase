USE FlowerShop
Go

CREATE FUNCTION CheckPhone
(
	-- Add the parameters for the function here
	@HOME varchar(15)
)
RETURNS varchar(100)
AS
BEGIN
	DECLARE  @Result varchar(100);
	Declare @LenH int;

	if (@LenH<>11 or @HOME <> '0%')
	begin
		set @Result='Please Enter a Right Phone Number with its city code.';
	end
	ElSE
		set @Result='True';
	Return @Result
END
GO
CREATE FUNCTION CheckMobile
(
	-- Add the parameters for the function here
	@Mobile varchar(15)
)
RETURNS varchar(105)
AS
BEGIN
	DECLARE  @Result varchar(105);
	Declare @LenM int;
	set @LenM = LEN(@Mobile);
	if (@LenM<>11 or @Mobile <> '09%'  )
	begin
		set @Result='Please Enter a Right Mobile Number starts with 0';
	end
	ElSE
		set @Result='True';
	Return @Result
END
GO
select dbo.CheckPhone('33333333333')
select dbo.CheckMobile('09130759757')

CREATE FUNCTION 
(
	-- Add the parameters for the function here
	@Mobile varchar(15)
)
RETURNS varchar(105)
AS
BEGIN
	DECLARE  @Result varchar(105);
	Declare @LenM int;
	set @LenM = LEN(@Mobile);
	if (@LenM<>11 or @Mobile <> '09%'  )
	begin
		set @Result='Please Enter a Right Mobile Number starts with 0';
	end
	ElSE
		set @Result='True';
	Return @Result
END
GO