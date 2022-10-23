import numpy as np
import pandas as pd

data = pd.read_csv('./Food_Establishment_Inspection_Scores.csv')

data = data.drop(['Inspection Date', 'Address', 'Facility ID', 'Process Description'], axis = 1)

x = data['Zip Code'].values

# y = np.unique(x, return_counts = True)
# inp = y[0][np.argmax(y[1])]

inp = input('Enter geographical location: ')
inp = int(float(inp))

dist = np.abs(x - inp)

ind = np.argsort(dist)

ans = data.iloc[ind[:5], [0, 2]]
scor = ans['Score'].values
ans = ans.drop(['Score'], axis = 1)
ind = np.argsort(scor)[::-1]
ans = ans.iloc[ind, :]
ans = ans['Restaurant Name'].values
print("Top rated restaurants nearby[in decreasing order]:")
for i in ans:
    print(i)