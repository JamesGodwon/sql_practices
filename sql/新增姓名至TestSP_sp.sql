declare @EMPID nvarchar(6), @EMPNAME nvarchar(10), @rtn int
set @EMPID = '166282'
set @EMPNAME = '���p��'
set @rtn = -1

exec SP_TestSP @EMPID, @EMPNAME, @rtn output

select *, @rtn AS �Ǧ^��
from TestSP


