library(ggplot2)

# Sample dataset
months <- 1:5
sales  <- c(200, 220, 250, 270, 300)

data <- data.frame(months, sales)

# Basic line chart
ggplot(data, aes(x = months, y = sales)) +
  geom_line(color = "darkgreen", linewidth = 1) +
  geom_point(color = "black", size = 3) +
  labs(title = "Monthly Sales Trend", x = "Month", y = "Sales")
