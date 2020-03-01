--測試單位資料查詢結果
DECLARE @brno nvarchar(4)
SET @brno = '0551';
--查詢單位負責人
SELECT *
FROM
	CHBSC.dbo.FnBrnoMgrList(@brno)
