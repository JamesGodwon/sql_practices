declare @EMPID nvarchar(6), @EMPADDR nvarchar(50), @output1 int
set @EMPID = '166282'
set @EMPADDR = '台北市大同區XX路一段XX巷XX號X樓'
set @output1 = -1

exec SP_TestSPAddr @EMPID, @EMPADDR, @output1 output

select *, @output1 AS 傳回值
from TestSPAddr
