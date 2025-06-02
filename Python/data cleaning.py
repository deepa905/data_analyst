import pandas as pd

# Load and clean data
df = pd.read_csv("Data/superstore.csv")
df['Order_Date'] = pd.to_datetime(df['Order_Date'])
df['Profit_Margin'] = (df['Profit'] / df['Sales']) * 100

# Feature engineering
df['Order_Year'] = df['Order_Date'].dt.year
df['Order_Month'] = df['Order_Date'].dt.month_name()

# Save cleaned data
df.to_csv("Data/cleaned_data.csv", index=False)
