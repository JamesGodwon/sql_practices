/****** SSMS 中 SelectTopNRows 命令的指令碼  ******/
SELECT TOP 1000 [STATUS]
      ,[STAFF]
      ,[NAME]
      ,[BRNO]    
  FROM [chb_pub].[dbo].[EMPLOYEE]
  WHERE STAFF LIKE 166184
