DECLARE @brno nvarchar(4)

SET @brno = '5!47';
--�Ѥ���N���d��CRC�N��


SELECT CHBSC.dbo.FnQueryCRCFromBrno(Replace(@brno,'!','6')) AS [CRC�N��]
