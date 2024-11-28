SELECT
    (SELECT 
        COD_SAIDA AS 'CodigoSaida',
        COD_OP AS 'CodigoOperacao',
        SKU AS 'SKU',
        NOME_ARQUIVO AS 'NomeArquivo',
        MARCA AS 'Marca',
        ESCOLA AS 'Escola',
        REGIAO AS 'Regiao',
        TIRAGEM AS 'Tiragem',
        SEGMENTO AS 'Segmento',
        ENSINO AS 'Ensino',
        TURNO AS 'Turno',
        MODELO AS 'Modelo',
        MATERIAL AS 'Material',
        MIOLO_PAPEL AS 'MioloPapel',
        MIOLO_FORMATO AS 'MioloFormato',
        MIOLO_GRAMATURA AS 'MioloGramat',
        MIOLO_COR AS 'MioloCor',
        DATA_SAIDA AS 'DataSaida',
        DATA_ENTREGA AS 'DataEntrada'
    FROM BDSWITCH.dbo.DADOS_SWITCH
    FOR XML PATH('Dado'), ROOT('Dados'), TYPE
    )
FOR XML PATH('');