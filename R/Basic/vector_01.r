# Create a numeric vector
vec <- c(1, 2, 3, 4, 5)

# Print the vector
print(vec)

# Access specific elements
print(vec[1])              # First element
print(vec[2:4])            # Elements from index 2 to 4
print(vec[-2])             # All elements except the second
print(vec[c(1, 3, 5)])     # Elements at indices 1, 3, and 5
print(vec[vec >= 3])       # Elements greater than or equal to 3
