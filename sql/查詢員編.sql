/****** SSMS 中 SelectTopNRows 命令的指令碼  ******/
SELECT [STATUS]
      ,[STAFF]
      ,[NAME]
      ,[BRNO]
      ,[ID]
      ,[CHECKNO]
      ,[BIRTHDA]
      ,[ENTERDA]
      ,[ASSIGNDA]
      ,[POST]
      ,[BASPAY]
      ,[POINT]
      ,[JOBPAY]
      ,[HEXFEE]
      ,[LINSAMT]
      ,[HINSAMT]
      ,[RAISEN]
      ,[FAMYNO]
      ,[SALDEB]
      ,[SPERAMT]
      ,[CRINSFLG]
      ,[EXPPAY]
      ,[SEPARAT]
      ,[SEPARDA]
      ,[DISCOUNT]
      ,[ARRIVEDA]
      ,[RESTDATE]
      ,[RESTDAY]
      ,[JOBCODE]
      ,[DEPTID]
      ,[EMP_TYPE]
      ,[GRADE]
      ,[MAIL]
      ,[STATUS_CODE]
      ,[DWUpdateDatetime]
      ,[MANAGER_LEVEL]
      ,[SyncDeptToSPUpdateTime]
      ,[BRNOUpdateTime]
  FROM [chb_pub].[dbo].[EMPLOYEE]
  where [NAME] = '張小盛'