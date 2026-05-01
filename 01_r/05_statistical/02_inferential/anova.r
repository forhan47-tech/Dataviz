# ANOVA
scores <- data.frame(
  group = rep(c("A", "B", "C"), each = 5),
  value = c(85, 90, 78, 95, 88, 80, 82, 79, 85, 83, 70, 75, 72, 68, 74)
)

anova_result <- aov(value ~ group, data = scores)
summary(anova_result)