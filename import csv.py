import pandas as pd
import glob, os
from sqlalchemy import create_engine

file = 'enter file path'

df = pd.read_csv('file', on_bad_lines='skip')

  
engine = create_engine("mysql+mysqldb://root:<password>@localhost:3306/airbnb")
                                        
df.to_sql('enter file name', engine, index=False)
        
print('done')