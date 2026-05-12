# Pie Chart
library(ggplot2)

# Sample dataset
sections <- c("X", "Y", "Z")
scores   <- c(85, 90, 78)

data <- data.frame(sections, scores)

# Basic pie chart using bar + polar coordinates
ggplot(data, aes(x = "", y = scores, fill = sections)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  labs(title = "Scores by Section") +
  theme_void()   # removes background and axes
