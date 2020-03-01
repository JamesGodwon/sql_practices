DECLARE @brno nvarchar(4)

SET @brno = '5!47';
--由分行代號查詢CRC代號


SELECT CHBSC.dbo.FnQueryCRCFromBrno(Replace(@brno,'!','6')) AS [CRC代號]
