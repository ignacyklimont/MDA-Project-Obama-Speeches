# This is a sample Python script.
print('Hello')
print('Uploading')
import pandas as pd

url = 'https://github.com/lukes/ISO-3166-Countries-with-Regional-Codes/blob/master/all/all.csv'
df = pd.read_csv(url, )
# df = pd.read_csv(url)

print(df.head(5))
