import pandas as pd
from sqlalchemy import create_engine, text

# Função para criar a engine de conexão com o banco de dados
def criar_conexao():
    conn_str = (
        "mssql+pyodbc:///?odbc_connect="
        "DRIVER={ODBC Driver 17 for SQL Server};" 
        "SERVER=DESKTOP-2MF5QCV;"  
        "DATABASE=BDSWITCH;"  
        "Trusted_Connection=yes;" 
    )
    return create_engine(conn_str)

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

# Função principal para executar as operações de conversão, deletar e inserir dados
def processar_dados():
    # Criando a engine de conexão
    engine = criar_conexao()

    caminho_xlsx = r'C:\Users\João Pedro Cordeiro\Desktop\ARTHUR\SWITCH\BdSwitchBackup-1\AUTOMACAO\ARUIVO_XLSX\Teste_Padrão de BD_v2.xlsx'
    caminho_csv = r'C:\Users\João Pedro Cordeiro\Desktop\ARTHUR\SWITCH\BdSwitchBackup-1\csv_bd.csv'
    
    # Nome da tabela no SQL Server
    table_name = 'DADOS_SWITCH'

    df = carregar_xlsx(caminho_xlsx)
    
    if df is not None:
        # Salvando os dados como CSV
        salvar_csv(df, caminho_csv)
        
        # Criando uma tabela temporária para testar
        inserir_dados(engine, df.head(10), 'TempTable', if_exists='replace')

        # Inserindo os dados na tabela principal
        inserir_dados(engine, df, table_name, if_exists='append')

# Executa o processo
processar_dados()
