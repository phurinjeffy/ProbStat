# Create the sample data
diameter = c(8.24, 8.25, 8.20, 8.23, 8.24,
           8.21, 8.26, 8.26, 8.20, 8.25,
           8.23, 8.23, 8.19, 8.28, 8.24)

# Use the built-in t.test() function and print out the result
result = t.test(diameter, mu = 8.25, alter = "greater")
print(result)