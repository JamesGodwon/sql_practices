--���ճ���Ƭd�ߵ��G
DECLARE @brno nvarchar(4)
SET @brno = '0551';
--�d�߳��t�d�H
SELECT *
FROM
	CHBSC.dbo.FnBrnoMgrList(@brno)
