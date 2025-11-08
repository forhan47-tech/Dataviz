# Basic R Script: Vectors
vec <- c(1, 2, 3, 4, 5)

# Modify specific elements
vec[2] <- 10                # Change second element to 10
vec[vec > 4] <- 0           # Set elements greater than 4 to 0
vec[c(1, 3)] <- c(20, 30)    # Change first and third elements

# Print the vector
print(vec)

# Access specific elements
print(vec[1])              # positional indexing
print(vec[2:4])            # range indexing
print(vec[-2])             # exclude second element
print(vec[c(1, 3, 5)])     # specific positions
print(vec[vec >= 3])       # logical indexing