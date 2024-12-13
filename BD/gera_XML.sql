SELECT
    (SELECT 
        *
    FROM BDSWITCH.dbo.DADOS_SWITCH
    FOR XML PATH('Dado'), ROOT('Dados'), TYPE
    )
FOR XML PATH('');