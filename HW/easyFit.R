# Sets the seed for the random number generator to 463
set.seed(463)

# Generates a random sample of 400 values from a Weibull distribution. 
# 'n' parameter specifies the number of values to generate (400)
# 'shape' parameter determines the shape of the Weibull distribution (9) 
# 'scale' parameter sets the scale of the distribution (5).
# Store the generated sample as a vector to variable 'wb'
wb <- rweibull(n = 400, shape = 9, scale = 5)

# Converts the generated 'wb' vector into a data frame and then 
# writes it to a CSV file named "wdata.csv" in the current working directory.
# Each value in the 'wb' vector will be stored as a row in the CSV file.
write.csv(data.frame(wb), file = "wdata.csv")