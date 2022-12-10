use master
GO

BACKUP DATABASE AdventureWorks2019
	TO DISK = 'D:\MSSQL NEW\Backup Tests\AdventureWorks2019.bak'
WITH	
	NOFORMAT, 
	COMPRESSION, 
	NOINIT, 
	NAME = 'Full Adventure Backup',
	SKIP, 
	STATS = 10;
GO

exec sp_addumpdevice 'disk', 'AdventureData',
'D:\MSSQL NEW\Backup Tests\AdventureBackupDevice.bak';
go

BACKUP DATABASE AdventureWorks2019
	TO AdventureData
With FORMAT, INIT, NAME = 'backup_num1';
go

BACKUP DATABASE AdventureWorks2019
	TO AdventureData
With FORMAT, INIT, NAME = 'backup_num2';
go

BACKUP DATABASE AdventureWorks2019
	TO AdventureData
With FORMAT, INIT, NAME = 'backup_num3';
go

BACKUP DATABASE AdventureWorks2019
	TO AdventureData
With FORMAT, INIT, NAME = 'backup_num4';
go