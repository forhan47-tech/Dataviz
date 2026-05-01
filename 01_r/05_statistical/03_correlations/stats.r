# Create simple datasets
math <- c(85, 90, 78, 95, 88)
science <- c(80, 92, 75, 98, 85)

corr_math <- cor(math, science)
cov_math <- cov(math, science)

cat("Correlation:", corr_math, "\n")
cat("Covariance:", cov_math, "\n")