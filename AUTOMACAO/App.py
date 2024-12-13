import pandas as pd
from sqlalchemy import create_engine, text
from conexao.connection import criar_conexao
import hashlib


# Função para carregar dados do arquivo XLSX
def carregar_xlsx(caminho_xlsx):
    try:
        df = pd.read_excel(caminho_xlsx)
        print("Arquivo XLSX carregado com sucesso.")
        print("Tipos de dados do DataFrame:")
        print(df.dtypes)
        return df
    except Exception as e:
        print(f"Erro ao carregar o arquivo XLSX: {e}")
        return None

# Função para salvar o DataFrame como CSV
def salvar_csv(df, caminho_csv):
    try:
        df.to_csv(caminho_csv, index=False)
        print(f"Arquivo CSV salvo em {caminho_csv}.")
    except Exception as e:
        print(f"Erro ao salvar o arquivo CSV: {e}")

# Função para inserir os dados do DataFrame no banco de dados
def inserir_dados(engine, df, table_name, if_exists='append'):
    try:
        df.to_sql(table_name, con=engine, if_exists=if_exists, index=False)
        print(f"Dados inseridos com sucesso na tabela {table_name}!")
    except Exception as e:
        print(f"Erro ao inserir dados na tabela {table_name}: {e}")
        

def geracaoCod(df, caminho_csv):
    try:
        df.to_csv(caminho_csv, index=False)
        
        #GERA O CODIGO DE SAIDA
        df['COD_SAIDA'] = df['MARCA'].str.upper()+''+df['DATA_SAIDA'].astype(str)
        
        return df
    except:
        return "Geração de 'COD_SAIDA' deu erro!'"


def gerarCodOp(df, caminho_csv, engine):
    try:
        # Salvar o DataFrame inicial em CSV
        df.to_csv(caminho_csv, index=False)
        
        # Executar as consultas SQL
        query_marca = "SELECT * FROM BDSWITCH.dbo.CODIGOS_GERACAO_MARCA"
        cod_table_marca = pd.read_sql_query(query_marca, engine)
        
        query_regiao = "SELECT * FROM BDSWITCH.dbo.CODIGOS_GERACAO_REGIAO" 
        cod_table_regiao = pd.read_sql_query(query_regiao, engine)
        
        query_segmento = "SELECT * FROM BDSWITCH.dbo.CODIGOS_GERACAO_SEGMENTO"
        cod_table_segmento = pd.read_sql_query(query_segmento, engine)
        
        query_turno = "SELECT * FROM BDSWITCH.dbo.CODIGOS_GERACAO_TURNO"
        cod_table_turno = pd.read_sql_query(query_turno, engine)
        
        query_modelo = "SELECT * FROM BDSWITCH.dbo.CODIGOS_GERACAO_MODELO"
        cod_table_modelo = pd.read_sql_query(query_modelo, engine)
        
        query_especificacoes = "SELECT * FROM BDSWITCH.dbo.CODIGOS_GERACAO_ESPECIFICACOES"
        cod_table_especificacoes = pd.read_sql_query(query_especificacoes, engine)
        
        query_unidade = "SELECT * FROM BDSWITCH.dbo.CODIGOS_GERACAO_UNIDADE"
        cod_table_unidade = pd.read_sql_query(query_unidade, engine)
        
        
        # Mapear os códigos de MARCA e REGIAO
        COD_MARCA = df['MARCA'].map(cod_table_marca.set_index('MARCA_NOME')['MARCA_COD'].astype(str)).fillna("00")
        COD_REGIAO = df['REGIAO'].map(cod_table_regiao.set_index('REGIAO_NOME')['REGIAO_COD'].astype(str)).fillna("00")
        COD_SEGMENTO = df['SEGMENTO'].map(cod_table_segmento.set_index('SEGMENTO_NOME')['SEGMENTO_COD'].astype(str)).fillna("0")
        COD_TURNO = df['TURNO'].map(cod_table_turno.set_index('TURNO_NOME')['TURNO_COD'].astype(str)).fillna("0")
        COD_MODELO = df['MODELO'].map(cod_table_modelo.set_index('MODELO_NOME')['MODELO_COD'].astype(str)).fillna("0")
        
        ESPECIFICACOES = df['MIOLO_PAPEL'] +'-'+ df['MIOLO_FORMATO'] +'-'+ df['MIOLO_GRAMATURA'] +'-'+ df['MIOLO_COR'] 
        COD_ESPECIFICACOES = ESPECIFICACOES.map(cod_table_especificacoes.set_index('ESPECIFICACOES_NOME')['ESPECIFICACOES_COD'].astype(str)).fillna("000")
        
        UNIDADE = df['MARCA'] +'-'+ df['ESCOLA']
        COD_UNIDADE = UNIDADE.map(cod_table_unidade.set_index('UNIDADE_NOME')['UNIDADE_COD'].astype(str)).fillna("000")
        
        # Verificar e utilizar 'DATA_ENTREGA'
        COD_ENTREGA = df['DATA_ENTREGA'].dt.strftime('%Y%m%d').fillna("")
        
        # Verificar se há dados faltantes antes da concatenação
        if COD_MARCA.isnull().any() or COD_REGIAO.isnull().any():
            print("Atenção: Alguns códigos de marca ou região não foram encontrados.")
        
        # Concatenar os códigos para gerar 'COD_OP'
        df['COD_OP'] = COD_MARCA + COD_REGIAO + COD_ENTREGA + COD_SEGMENTO + COD_TURNO + COD_MODELO + COD_ESPECIFICACOES + COD_UNIDADE
        
        # Salvar novamente o DataFrame com a nova coluna
        df.to_csv(caminho_csv, index=False)
        
        print("CSV atualizado com sucesso!")
        return df
    
    except Exception as e:
        print(f"Ocorreu um erro: {e}")
        raise
    



def gerarSku(df, caminho_csv):
    try:
        # Gera o campo 'SKU' combinando 'COD_SAIDA' e o hash de 'NOME_ARQUIVO'
        df['SKU'] = df.apply(
            lambda row: row['COD_SAIDA'] + hashlib.sha256(row['NOME_ARQUIVO'].encode()).hexdigest(),
            axis=1
        )
        
        # Salva o DataFrame atualizado em CSV
        df.to_csv(caminho_csv, index=False)
        
        return df
    except Exception as e:
        return f"Geração de 'SKU' deu erro: {e}"
    
# Função principal para executar as operações de conversão, deletar e inserir dados
def processar_dados():
    # Criando a engine de conexão
    engine = criar_conexao()

    caminho_xlsx = r'C:\Users\João Pedro Cordeiro\Desktop\ARTHUR\SWITCH\BdSwitchBackup-1\AUTOMACAO\ARUIVO_XLSX\Cópia de Teste_Padrão_de_BD_13-12.xlsx'
    caminho_csv = r'C:\Users\João Pedro Cordeiro\Desktop\ARTHUR\SWITCH\BdSwitchBackup-1\AUTOMACAO\ARUIVO_CSV\csv_bd.csv'
    
    # Nome da tabela no SQL Server
    table_name = 'DADOS_SWITCH'

    df = carregar_xlsx(caminho_xlsx)
    
    if df is not None:        
        # Salvando os dados como CSV
        salvar_csv(df, caminho_csv)
        
        #Gerar 'COD_SAIDA'
        geracaoCod(df, caminho_csv)

        #Gerar 'COD_OP'
        gerarCodOp(df, caminho_csv, engine)
        
        #Gerar 'SKU'
        gerarSku(df, caminho_csv)
        
        # Criando uma tabela temporária para testar
        inserir_dados(engine, df.head(10), 'TempTable', if_exists='replace')

        # Inserindo os dados na tabela principal
        inserir_dados(engine, df, table_name, if_exists='append')

# Executa o processo
processar_dados()
