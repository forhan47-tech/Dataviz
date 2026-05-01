# Monthly sales data (12 months)
sales <- c(200, 220, 250, 270, 300, 320, 310, 330, 340, 360, 370, 400)

# Create time series object (start Jan 2025, frequency = 12 months)
ts_sales <- ts(sales, start = c(2025, 1), frequency = 12)

print(ts_sales)
