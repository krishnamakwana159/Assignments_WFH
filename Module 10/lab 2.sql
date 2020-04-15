CREATE FUNCTION dbo.IntegerListToTable
( @InputList nvarchar(MAX),@Delimiter nchar(1) = N',')
RETURNS @OutputTable TABLE (PositionInList int IDENTITY(1, 1) NOT NULL,IntegerValue int)
AS BEGIN
		INSERT INTO @OutputTable (IntegerValue)
		SELECT Value FROM STRING_SPLIT ( @InputList , @Delimiter );
	RETURN;
END;
GO


SELECT * FROM dbo.IntegerListToTable('11,45,,330,2',',');
GO

SELECT * FROM dbo.IntegerListToTable('234|354253|3242|2','|');
GO

CREATE function funJoinNames
	(@FirstName varchar(20), @LastName varchar(20))
returns	@result table (FullName varchar(50))
as begin
	insert into @result(FullName) select concat(@FirstName,' ',@LastName) AS FullName;
	Return;
end;
go

select * from dbo.funJoinNames('abc','kbc');
select * from dbo.funJoinNames('xyaaa','kkk');
select * from dbo.funJoinNames('udp','idp');