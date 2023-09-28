# Create function to compute conditional mean and variance of Y when X = x, given a matrix and value x
compute_conditional_stats <- function(data_matrix, x) {
  # Extract from the matrix where the column = x, which is f(x,y)
  filtered_data <- data_matrix[, x]
  #Response time
  y_data <- c(1,2,3,4)
  
  # Sum f(x)
  f_x <- sum(filtered_data)
  # Find f(y|X=x)
  f_y_x <- (filtered_data / f_x)
  
  # Calculate the conditional mean
  conditional_mean <- sum(y_data * f_y_x)
  cat("\nE ( Y | X =", x, ") =", conditional_mean, "\n")
  
  # Calculate the conditional variance
  conditional_variance <- sum((y_data**2) * f_y_x) - (conditional_mean**2)
  cat("V ( Y | X =", x, ") =", conditional_variance, "\n")
}

# Data matrix
joint <- matrix(c(0.01, 0.02, 0.02, 0.15, 
                  0.02, 0.03, 0.10, 0.10, 
                  0.25, 0.20, 0.05, 0.05), nrow = 4, ncol = 3)

# Call the function
compute_conditional_stats(joint, 1) # when X = 1
compute_conditional_stats(joint, 2) # when X = 2
compute_conditional_stats(joint, 3) # when X = 3
