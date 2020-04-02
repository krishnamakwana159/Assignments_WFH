-- Module 3 - Lab Exercise 6 - Compress Partitions



-- Compress Partitions
USE HumanResources
GO

-- FG0
ALTER TABLE Payment.Timesheet REBUILD PARTITION = 1 WITH (DATA_COMPRESSION = ROW)
GO
-- FG2
ALTER TABLE Payment.Timesheet REBUILD PARTITION = 2 WITH (DATA_COMPRESSION = PAGE)
GO
-- FG3
ALTER TABLE Payment.Timesheet REBUILD PARTITION = 3 WITH (DATA_COMPRESSION = PAGE)
GO
-- FG1
ALTER TABLE Payment.Timesheet REBUILD PARTITION = 4 WITH (DATA_COMPRESSION = ROW)
GO
