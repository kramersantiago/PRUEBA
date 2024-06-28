# Importo librerías necesarias
import pandas as pd
from sqlalchemy import create_engine

# Cargo los datos del archivo .csv en un DataFrame "df"
df = pd.read_csv("../Prueba técnica/Online Sales Data.csv")

# Transformo los datos de la columna "Date" a datetime
df['Date'] = pd.to_datetime(df['Date'])

# Creo una conexión a PostgreSQL
engine = create_engine('postgresql://postgres:password@localhost:5432/postgres')

# Los datos se guardan en una tabla llamada "Sales"
df.to_sql('Sales', engine, if_exists='replace', index=False)


'''
Primero, se importan las librerías necesarias.
Luego, se lee el archivo .csv utilizando Pandas.
Se comprobaron los tipos de datos de cada columna y se transformó la columna "Date" de formato object a datetime.
Finalmente, se guarda el DataFrame transformado en una base de datos PostgreSQL utilizando SQLAlchemy.
'''