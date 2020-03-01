declare @EMPID nvarchar(6), @EMPNAME nvarchar(10), @rtn int
set @EMPID = '166282'
set @EMPNAME = '陳小葦'
set @rtn = -1

exec SP_TestSP @EMPID, @EMPNAME, @rtn output

select *, @rtn AS 傳回值
from TestSP


