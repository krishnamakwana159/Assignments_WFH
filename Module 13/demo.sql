sp_configure;
go

sp_configure 'show advanced option',1;
reconfigure

sp_configure 'clr enabled',1;
reconfigure

sp_configure 'clr strict security',0;
reconfigure

select dbo.HelloWorld();