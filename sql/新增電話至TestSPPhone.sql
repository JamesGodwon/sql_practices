declare @EMPID nvarchar(6), @EMPPHONE nvarchar(50), @output1 int
set @EMPID = '166745'
set @EMPPHONE = '02-27312211#5132'
set @output1 = -1

exec SP_TestSPPhone @EMPID, @EMPPHONE, @output1 output

select *, @output1 AS ¶Ç¦^­È
from TestSPPhone