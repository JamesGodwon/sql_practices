--���խ��u��Ƭd�ߵ��G
DECLARE @STAFF nvarchar(6)
DECLARE @NAME nvarchar(6)
SET @STAFF = '146768';
SET @NAME = '�¤p��';

--SELECT STAFF AS [���s]
--	 , NAME AS [�m�W]
--	 , CHBSC.dbo.FnGenEmpSTATUS_CODEDesc(@STAFF) AS [�H�����A]
SELECT *
FROM
	chb_pub.dbo.EMPLOYEE
WHERE
	--STAFF = @STAFF
	NAME = @NAME

