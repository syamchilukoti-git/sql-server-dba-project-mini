USE [master]
RESTORE DATABASE [Restaurant Management] 
FROM  DISK = N'C:\SQL Backups\Restaurent management.bak' 
WITH  FILE = 1,
NOUNLOAD,  
STATS = 5
GO


