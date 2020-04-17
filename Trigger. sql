alter trigger TR_viewDemo
ON dbo.vDemo
INSTEAD OF UPDATE AS
BEGIN
	SET NOCOUNT ON;
	if(UPDATE(CourseName))
	begin
		declare @CId varchar(20) =	(select CourseId from inserted);
		UPDATE vDemo set CourseName = (select CourseName from inserted) where CourseId = @CId;		
	end
	if(UPDATE(Name))
	begin		
		declare @Id int = (select StudentId from inserted);
		UPDATE vDemo set Name = (select Name from inserted) where StudentId =  @Id;
	end
END;
update vDemo set Name='hi', CourseName='mechanical' where StudentId = 3; 

select * from vDemo
select * from Courses
select * from Students;
