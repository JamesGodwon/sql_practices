SELECT invoice
            , name_f_chi
            , chi_add
            , chief
			, stk_amt * 1000
            , estb_date
            FROM
            vi_crmstd
			WHERE
				invoice IN (SELECT invoice COLLATE Chinese_Taiwan_Stroke_BIN AS SERNO
				FROM
					vi_crmstd EXCEPT
            SELECT DISTINCT SERNO COLLATE Chinese_Taiwan_Stroke_BIN AS SERNO
            FROM
            CUSTMGR_HIDDENCUST)
            