import pandas as pd
df = pd.read_csv("Data/superstore_sales.csv")
df['Order_Date'] = pd.to_datetime(df['Order_Date'], format='%m/%d/%Y')
df.to_csv("Data/cleaned_data.csv", index=False)
print("Data cleaned successfully!")
