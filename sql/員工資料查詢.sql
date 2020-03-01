--測試員工資料查詢結果
DECLARE @STAFF nvarchar(6)
DECLARE @NAME nvarchar(6)
SET @STAFF = '146768';
SET @NAME = '謝小翔';

--SELECT STAFF AS [員編]
--	 , NAME AS [姓名]
--	 , CHBSC.dbo.FnGenEmpSTATUS_CODEDesc(@STAFF) AS [人員狀態]
SELECT *
FROM
	chb_pub.dbo.EMPLOYEE
WHERE
	--STAFF = @STAFF
	NAME = @NAME

