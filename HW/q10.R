theta <- 0.5  # Shape parameter
omega <- 1    # Scale parameter
time_threshold <- 10  # Time threshold in seconds

probability_viewed_more_than_10_seconds <- 1 - plnorm(time_threshold, meanlog = theta, sdlog = omega)
cat("Question 10: Probability that a page is viewed for more than 10 seconds:", probability_viewed_more_than_10_seconds, "\n")
