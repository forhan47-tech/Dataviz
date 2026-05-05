# Histogram
library(ggplot2)

# Sample dataset
scores <- c(85, 90, 78, 95, 88, 70, 92, 80, 76, 89)

data <- data.frame(scores)

# Basic histogram
ggplot(data, aes(x = scores)) +
  geom_histogram(binwidth = 5, fill = "lightblue", color = "black") +
  labs(title = "Score Distribution", x = "Scores", y = "Count")
