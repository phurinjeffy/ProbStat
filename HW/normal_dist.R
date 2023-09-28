# Create function 'normal_empirical_rule' which takes in parameter 'mu' and 'sigma',
# to calculate the probabilities that data from a normal distribution with mean
# 'mu' and standard deviation 'sigma' falls within 1, 2, and 3 standard deviations from mean.
normal_empirical_rule <- function(mu, sigma) {
  
  # Generate random sample of 10,000,000 data points from a normal distribution 
  # using the rnorm() function, with the specified mean 'mu' and standard deviation 'sigma'.
  # And store the vector into variable 'X'
  X <- rnorm(10000000, mean = mu, sd = sigma)

  # Calculate the number of data points which fall within one standard deviation from the mean.
  # By taking the absolute between each data point in 'X' and the mean, and check if it is less than or equal
  # to the standard deviation. Then, using sum() count the number which satisfies the condition.
  within_1_sd <- sum(abs(X - mu) <= sigma)
  within_2_sd <- sum(abs(X - mu) <= 2 * sigma) # Similar to the above, but for two standard deviations
  within_3_sd <- sum(abs(X - mu) <= 3 * sigma) # Similar to the above, but for three standard deviations
  
  # Calculate the percentage of data points falling within one standard deviation from the mean.
  # By dividing the number of points by the length of the vector 'X', then multiply by 100 to convert into percentage.
  prob_within_1_sd <- within_1_sd / length(X) * 100
  prob_within_2_sd <- within_2_sd / length(X) * 100 # Similar to the above, but for two standard deviations
  prob_within_3_sd <- within_3_sd / length(X) * 100 # Similar to the above, but for three standard deviations
  
  # Store the probabilities into vector 'result'
  result <- c(prob_within_1_sd, prob_within_2_sd, prob_within_3_sd)
  
  # Return the result
  return(result)
}

# Call the function 'normal_empirical_rule', and store the returned value into each 'result'
result_0_1 <- normal_empirical_rule(0, 1)
result_5_3 <- normal_empirical_rule(5, 3)
result_16_7 <- normal_empirical_rule(16, 7)

# Loop to print out the probabilities for each result
cat("N(0,1)\n")
x = 1
for (i in result_0_1) {
  cat("Within", x, "SD: ", i, "%\n")
  x = x + 1
}

# Loop to print out the probabilities for each result
cat("\nN(5,3)\n")
x = 1
for (i in result_5_3) {
  cat("Within", x, "SD: ", i, "%\n")
  x = x + 1
}

# Loop to print out the probabilities for each result
cat("\nN(16,7)\n")
x = 1
for (i in result_16_7) {
  cat("Within", x, "SD: ", i, "%\n")
  x = x + 1
}