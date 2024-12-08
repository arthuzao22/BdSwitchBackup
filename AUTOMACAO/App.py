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


def gerarOp(df, caminho_csv):
    try:
        # Salvar o DataFrame em um arquivo CSV
        df.to_csv(caminho_csv, index=False)
        
        # Concatenar as colunas selecionadas em uma string
        df2 = (df['SEGMENTO'].astype(str) + 
               df['ENSINO'].astype(str) + 
               df['TURNO'].astype(str) + 
               df['MODELO'].astype(str) + 
               df['MATERIAL'].astype(str) + 
               df['MIOLO_PAPEL'].astype(str) + 
               df['MIOLO_FORMATO'].astype(str) + 
               df['MIOLO_GRAMATURA'].astype(str) + 
               df['MIOLO_COR'].astype(str) + 
               df['DATA_SAIDA'].astype(str))
        
        print(df2)
        
        
        
        return df

    except Exception as e:
        return f"Geração de 'COD_OP' deu erro! Erro: {str(e)}"


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

    caminho_xlsx = r'C:\Users\João Pedro Cordeiro\Desktop\ARTHUR\SWITCH\BdSwitchBackup-1\AUTOMACAO\ARUIVO_XLSX\Teste_Padrão de BD_v2.xlsx'
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
        gerarOp(df, caminho_csv)
        
        #Gerar 'SKU'
        gerarSku(df, caminho_csv)
        
        # Criando uma tabela temporária para testar
        inserir_dados(engine, df.head(10), 'TempTable', if_exists='replace')

        # Inserindo os dados na tabela principal
        inserir_dados(engine, df, table_name, if_exists='append')

# Executa o processo
processar_dados()
