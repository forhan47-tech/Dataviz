# Basic R Script: Vectors

# Using the colon operator to create sequences
vec1 <- 1:5
print(vec1)

# Using seq() to create sequences with specific increments
vec2 <- seq(1, 5, by = 2)
print(vec2)

# Using rep() to repeat elements
vec3 <- rep(4, times = 5)
print(vec3)

# Repeating each element a specific number of times
vec4 <- rep(c(1, 2), each = 3)
print(vec4)