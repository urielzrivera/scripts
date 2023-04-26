# import modules
import os
import pandas as pd

# master dataframe
master_df = pd.DataFrame()

# setting variable for path to csv files
''' path = 'C:\Users\<user_directory>\Downloads'
for file in os.listdir(path):
          if file.endswith('.csv'):
                    master_df.append(pd.read_csv(files)) '''

# reads and merges csv files from current working directory
for file in os.listdir(getcwd()):
          if file.endswith('.csv'):
                    master_df.append(pd.read_csv(file))

# saves merged csv file to current working directory
master_df.to_csv('<Final CSV.csv', index=False)
