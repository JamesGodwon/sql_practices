/****** 7_177 chb_eform ���-�¶q�Ȩ禡*****/

update [dbo].[CUSTMGR_HIDDENCUST]
SET [ENTADDRESS] =  left(ltrim(rtrim([ENTADDRESS])), 6)
					  + case when len(ltrim(rtrim([ENTADDRESS]))) <= 6 then ''
	 						 else replicate('*', LEN(ltrim(rtrim([ENTADDRESS]))) - 6)
						end