declare @EMPID nvarchar(6), @EMPADDR nvarchar(50), @output1 int
set @EMPID = '166282'
set @EMPADDR = '�x�_���j�P��XX���@�qXX��XX��X��'
set @output1 = -1

exec SP_TestSPAddr @EMPID, @EMPADDR, @output1 output

select *, @output1 AS �Ǧ^��
from TestSPAddr
