# lgbt_casamento 

# Casamento LGBT passou a acontecer com mais frequência nos últimos anos? Podemos ver a distribuição?
import pandas as pd
dados = pd.read_csv ('same-sex-marriage-recognition.csv')
print(dados)
dados.describe()
dados.head ()
from quickda.clean_data import *
dados = clean (dados, method = 'standardize')
from quickda.explore_data import *
explore(dados, method='summarize')
sns.histplot(data=dados)
