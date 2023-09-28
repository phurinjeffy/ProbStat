lambda <- 1 / 100000  # Error rate (errors per bit)
desired_errors <- 5  # Desired number of errors

mean_bits <- (desired_errors / lambda)
cat("Question 5: Mean number of bits until five errors occur:", mean_bits, "\n")