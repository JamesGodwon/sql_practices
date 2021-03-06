USE [CustMgr]
GO
/****** Object:  StoredProcedure [dbo].[SpHiddenCustNameMask]    Script Date: 2015/7/31 上午 10:40:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[SpHiddenCustNameMask] 
	-- Add the parameters for the stored procedure here
	--@Table nvarchar(50) = 'TestSP', 
	--@Field nvarchar(50) = 'EMPNAME'
	@rtn int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	--declare @RETURN int
    -- Insert statements for procedure here
	--update [dbo].[CUSTMGR_HIDDENCUST] set [dbo].[CUSTMGR_HIDDENCUST].[CONTRACTPEOPLE] = LEFT(ltrim(rtrim([dbo].[CUSTMGR_HIDDENCUST].[CONTRACTPEOPLE])), 1) + REPLICATE('0', LEN(ltrim(rtrim([dbo].[CUSTMGR_HIDDENCUST].[CONTRACTPEOPLE]))) - 1)
	--SELECT [dbo].[CUSTMGR_HIDDENCUST].[CONTRACTPEOPLE]
	--FROM [dbo].[CUSTMGR_HIDDENCUST]
	set @rtn = 0
	
	SELECT [EMPNAME]  INTO #TempTestSPTable FROM [dbo].[TestSP]

	update [dbo].[TestSP] set [EMPNAME] = LEFT(ltrim(rtrim([EMPNAME])), 1) + REPLICATE('*', LEN(ltrim(rtrim([EMPNAME]))) - 1)
	set @rtn = @@Rowcount
	SELECT [EMPNAME], @rtn AS 受影響的數量
	FROM [dbo].[TestSP]
END
