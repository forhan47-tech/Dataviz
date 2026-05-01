library(ggplot2)

# Sample dataset
students <- data.frame(
  hours = c(5, 6, 4, 7, 6),
  score = c(85, 90, 78, 95, 88)
)

# Basic scatter plot
ggplot(students, aes(x = hours, y = score)) +
  geom_point(color = "blue", size = 3) +
  labs(title = "Study Hours vs Score", x = "Hours", y = "Score")
