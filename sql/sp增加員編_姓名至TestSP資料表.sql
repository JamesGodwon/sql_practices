USE [CustMgr]
GO
/****** Object:  StoredProcedure [dbo].[SP_TestSP]    Script Date: 2015/7/30 下午 04:10:33 ******/
/*20150730 return value works just fine */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER procedure [dbo].[SP_TestSP]
@EMPID char(6),
@EMPNAME nvarchar(10),
@rtn int output
as 
declare
@tmpEMPID char(6),
@tmpEMPNAME nvarchar(10)

if(EXISTS(select * from TestSP where EMPID=@EMPID))
begin
	select @tmpEMPID=EMPID , @tmpEMPNAME=EMPNAME from TestSP where EMPID=@EMPID
	if(@tmpEMPID=@EMPID and @tmpEMPNAME =@EMPNAME)--資料完全相同
		begin
			set @rtn=0 
		end
	else
		begin
			update TestSP set EMPNAME = @EMPNAME where EMPID=@EMPID --執行更新
			set @rtn=2 
		end
end
else --執行新增
	begin
		insert into TestSP values(@EMPID,@EMPNAME)
		set @rtn=1
	end


