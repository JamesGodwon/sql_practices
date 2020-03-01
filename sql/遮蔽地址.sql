/****** 7_177 chb_eform ¨ç¼Æ-¯Â¶q­È¨ç¦¡*****/

update [dbo].[CUSTMGR_HIDDENCUST]
SET [ENTADDRESS] =  left(ltrim(rtrim([ENTADDRESS])), 6)
					  + case when len(ltrim(rtrim([ENTADDRESS]))) <= 6 then ''
	 						 else replicate('*', LEN(ltrim(rtrim([ENTADDRESS]))) - 6)
						end