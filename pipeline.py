import pandas as pd

#read files
df_ds1 = pd.read_csv("dataset1.csv", sep='\t', index_col=False)
df_ds2 = pd.read_csv("dataset2.csv", sep='\t', index_col=False)

#Concat the files and drop rows which do not have names
df_ds = pd.concat([df_ds1,df_ds2]).dropna().reset_index(drop=True)

# split name into first_name and last_name
df_ds['first_name'] = df_ds['name'].str.split(expand=True)[0]
df_ds['last_name'] = df_ds['name'].str.split(expand=True)[1]

#Flag the row with price greater than 100
df_ds['above_100'] = ['True' if price>100 else 'False' for price in df_ds['price'] ]

#extracting output to csv file
df_outds = df_ds[['first_name','last_name','price', 'above_100']]
df_outds.to_csv('out.csv')



