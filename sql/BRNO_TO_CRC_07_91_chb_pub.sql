SELECT '�п��' AS BRNAME, '-1' AS BRNO UNION SELECT BRNO + '_' + BRNAME AS BRNAME, BRNO
FROM chb_pub.dbo.BRANCH
WHERE (BRNO IN(
	SELECT DISTINCT CRCNO 
	FROM chb_pub.dbo.crc_rel_br)) 
ORDER BY BRNO

--SELECT '�п��' AS BRNAME, '-1' AS BRNO UNION SELECT BRNO + '_' + BRNAME AS BRNAME, BRNO 
--FROM BRANCH 
--WHERE (BRNO IN (SELECT DISTINCT CRCNO FROM crc_rel_br)) 
--ORDER BY BRNO