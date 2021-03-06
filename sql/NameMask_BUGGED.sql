USE [CustMgr]
GO
/****** Object:  StoredProcedure [dbo].[NameMask]    Script Date: 2015/7/30 下午 01:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[NameMask] 
	-- Add the parameters for the stored procedure here
	@paraTable table (
		EMPID char(6) ,
		EMPNAME nvarchar(10)
	), 
	@Field nvarchar(50) = 'EMPNAME'
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @TABLE table (
		EMPID char(6) ,
		EMPNAME nvarchar(10)
	)

	set @TABLE = @paraTable
    -- Insert statements for procedure here
	
	update @TABLE set @Field = LEFT(ltrim(rtrim(@Field)), 1) + REPLICATE('0', LEN(ltrim(rtrim(@Field))) - 1) 

END

