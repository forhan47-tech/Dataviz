# Density Plot
library(ggplot2)

# Sample dataset
scores <- c(85, 90, 78, 95, 88, 70, 92, 80, 76, 89)

data <- data.frame(scores)

# Basic density plot
ggplot(data, aes(x = scores)) +
  geom_density(fill = "lightblue", alpha = 0.5, color = "darkblue") +
  labs(title = "Score Density Plot", x = "Scores", y = "Density")
