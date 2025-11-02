# Create sample data
month <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun")
sales <- c(120, 135, 150, 160, 155, 170)

# Create a data frame
df <- data.frame(month, sales)

# Convert month to numeric positions for plotting
month_pos <- seq_along(month)

# Generate line plot
plot(month_pos, df$sales,
     type = "o",                      # Overplotted points and lines
     xaxt = "n",                     # Suppress x-axis
     main = "Monthly Sales Trend",
     xlab = "Month",
     ylab = "Sales (Units)",
     col = "darkgreen",
     pch = 16,
     lwd = 2)

# Add custom x-axis labels
axis(1, at = month_pos, labels = df$month)

# Add grid for clarity
grid()
