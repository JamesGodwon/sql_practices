USE [CustMgr]
GO
/****** Object:  StoredProcedure [dbo].[SpHiddenCustUnNameMask]    Script Date: 2015/7/31 上午 11:29:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[SpHiddenCustUnNameMask] 
	-- Add the parameters for the stored procedure here
	--@Table nvarchar(50) = 'TestSP', 
	--@Field nvarchar(50) = 'EMPNAME'
	@rtn int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	

	update [dbo].[TestSP] set [dbo].[TestSP].[EMPNAME] =(select EMPNAME from #TempTestSPTable)
	set @rtn = @@Rowcount
	SELECT [EMPNAME],@rtn AS 受影響的數量
	FROM [dbo].[TestSP].[EMPNAME]

END
