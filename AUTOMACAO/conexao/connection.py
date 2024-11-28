from sqlalchemy import create_engine
import urllib

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
