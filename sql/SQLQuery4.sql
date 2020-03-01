DECLARE @cmd varchar(50),  
		@schema varchar(10),  
		@table varchar(20)  


SET @cmd = 'SELECT * FROM ';  

SET @schema = 'dbo';  

SET @table = 'CUSTMGR_GROUP';

 -- 建構陳述式：SELECT COUNT(*) AS rows FROM [dbo].[Categories]  

SET @cmd = @cmd + QUOTENAME(@schema) + '.' + QUOTENAME(@table) + ';';  

EXEC (@cmd);  

 -- 底下為錯誤用法  
 --EXEC (@cmd + QUOTENAME(@schema) + '.' + QUOTENAME(@table) + ';'); 
