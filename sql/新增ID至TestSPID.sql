declare @EMPID nvarchar(6), @ID nvarchar(20), @output1 int
set @EMPID = '166745'
set @ID = 'F111111111'
set @output1 = -1

exec SP_TestSPID @EMPID, @ID, @output1 output

select *, @output1 AS ¶Ç¦^­È
from TestSPID


