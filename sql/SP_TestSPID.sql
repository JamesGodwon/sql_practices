USE [iom]
GO
/****** Object:  StoredProcedure [dbo].[SP_TestSPPhone]    Script Date: 2015/7/31 下午 04:33:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER procedure [dbo].[SP_TestSPID]
@EMPID char(6),
@ID nvarchar(20),
@output1 int output
as 
declare
@tmpEMPID char(6),
@tmpID nvarchar(20)

if(EXISTS(select * from TestSPID where EMPID=@EMPID))
begin
	select @tmpEMPID=EMPID , @tmpID=ID from TestSPID where EMPID=@EMPID
	if(@tmpEMPID=@EMPID and @tmpID =@ID)--資料完全相同
		begin
			set @output1=0 
		end
	else
		begin
			update TestSPID set ID = @ID where EMPID=@EMPID --執行更新
			set @output1=2 
		end
end
else --執行新增
	begin
		insert into TestSPID values(@EMPID,@ID)
		set @output1=1
	end
