# Create a function, my.mode(), to identify the mode of a given data set.
my.mode <- function(data) {
  # Create a vector of unique values from the input data.
  unique_vals <- unique(data)
  
  # Check if there's only one unique value, if so return that value as the mode.
  if (length(unique_vals) == 1) { 
    return(unique_vals)
  }
  
  # Calculate a frequency table for the data using table(data) to count occurrences of each unique value.
  freq_table <- table(data) 
  # Find the maximum frequency (the mode) from the frequency table.
  max_freq <- max(freq_table) 
  # Extract the unique values that have a frequency equal to the maximum frequency, which gives you the mode(s).
  modes <- unique_vals[freq_table == max_freq]
  
  # Check if all unique values are modes (no distinct mode)
  if (length(modes) == length(unique_vals) && all(unique_vals == modes)) {
    return("none") # if so return "none" to indicate that there is no mode.
  } 
  else { # Otherwise, return the modes as a vector.
    return(modes)
  }
}

# Test the function, and print out the modes of each set
s1 <- c(1, 2, 3, 4, 5) # no mode
cat("Set 1 |", my.mode(s1), "\n")

s2 <- c(3, 3, 3, 3, 3) # 3
cat("Set 2 |", my.mode(s2), "\n")

s3 <- c(1, 2, 2, 3, 4, 4, 5) # 2, 4
cat("Set 3 |", my.mode(s3), "\n")

s4 <- c(1, 1, 2, 2, 3, 3, 4, 4, 5) # 1, 2, 3, 4
cat("Set 4 |", my.mode(s4), "\n")

s5 <- c(1, 1, 2, 2, 3, 3, 4, 4, 5, 5) # no mode
cat("Set 5 |", my.mode(s5), "\n")