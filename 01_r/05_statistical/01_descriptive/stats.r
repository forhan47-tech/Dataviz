# Sample data frame
students <- data.frame(
  score = c(85, 90, 78, 95, 88)
)

# Calculate mean, median, standard deviation
mean_score   <- mean(students$score)
median_score <- median(students$score)
sd_score     <- sd(students$score)

cat("Mean:", mean_score, "\n")
cat("Median:", median_score, "\n")
cat("Standard Deviation:", sd_score, "\n")