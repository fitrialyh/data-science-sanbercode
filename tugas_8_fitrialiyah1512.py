from urllib.request import urlopen
from bs4 import BeautifulSoup
import pandas as pd
from tabulate import tabulate

alamat = "https://www.kompas.com/"
html = urlopen(alamat)
data = BeautifulSoup(html, 'html.parser')

div = data.findAll("div", {"class":"most"})[0]
titles = div.findAll("h4", {"class":"most__title"})

result = []

for title in titles:
    result.append(title.get_text())

df = pd.DataFrame(result, columns=['Judul Berita Populer'])
print(df)