DECLARE @cmd varchar(50),  
		@schema varchar(10),  
		@table varchar(20)  


SET @cmd = 'SELECT * FROM ';  

SET @schema = 'dbo';  

SET @table = 'CUSTMGR_GROUP';

 -- �غc���z���GSELECT COUNT(*) AS rows FROM [dbo].[Categories]  

SET @cmd = @cmd + QUOTENAME(@schema) + '.' + QUOTENAME(@table) + ';';  

EXEC (@cmd);  

 -- ���U�����~�Ϊk  
 --EXEC (@cmd + QUOTENAME(@schema) + '.' + QUOTENAME(@table) + ';'); 
