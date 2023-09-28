# Create function 'my.mean' to find mean which is the 'mx' value at mean point when sum of differences = 0
my.mean <- function(x) {
  # Generate a sequence of 'mx' values from min to max of sample data, increment by 0.01
  mx <- seq(min(x), max(x), by = 0.01)
  
  for (i in 1:length(mx)) {  # Loop through 'mx' values
    # Calculates the differences between each element of 'x' and the current 'mx' value
    diff <- x - mx[i] # Store the differences as vector in 'diff'
    sum.diff <- sum(diff) # Sum of all the differences calculated in 'diff' vector
    
    if (sum.diff == 0) {  # Check if 'sum.diff' is 0, which would be where the mean is
      cat("Mean =", round(mx[i], 2), "\n")  # Print 'mx' value as the mean, when 'sum.diff' = 0 (at mean point)
      break  # Exit loop
    }
  }
}

# Sample Data
x <- c(4.9, 6.8, 1.3, 7.4, 2.5)

my.mean(x)  # Call function 'my.mean' to find mean 'mx'

mean_x <- mean(x)  # Calculate actual mean using built-in function
cat("Actual Mean of x:", round(mean_x, 2), "\n")  # Print actual mean
