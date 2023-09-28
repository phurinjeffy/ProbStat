alpha <- 2  # Shape parameter
beta <- 3   # Shape parameter
max_time <- 2.5  # Maximum time in days
time_threshold <- 2  # Time threshold in days

probability_more_than_2_days <- 1 - pbeta(time_threshold / max_time, shape1 = alpha, shape2 = beta)
cat("Question 7: Probability that the task requires more than two days to complete:", probability_more_than_2_days, "\n")
