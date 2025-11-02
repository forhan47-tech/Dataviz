# Load ggplot2
library(ggplot2)

# Create sample data
month <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun")
sales <- c(120, 135, 150, 160, 155, 170)
df <- data.frame(month, sales)

# Ensure month is an ordered factor for correct x-axis order
df$month <- factor(df$month, levels = month)

# Generate line plot using ggplot2
ggplot(df, aes(x = month, y = sales, group = 1)) +
  geom_line(color = "darkgreen", size = 1.2) +     # Line
  geom_point(color = "darkgreen", size = 3) +      # Points
  labs(
    title    = "Monthly Sales Trend",
    x        = "Month",
    y        = "Sales (Units)",
    caption  = "Line plot using ggplot2"
  ) +
  theme_minimal()