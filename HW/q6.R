shape_parameter <- 1 # Shape parameter
scale_parameter <- 300 # Scale parameter
time_threshold <- 240 # Time threshold in seconds (4 minutes)

probability_more_than_4_minutes <- 1 - pweibull(time_threshold, shape = shape_parameter, scale = scale_parameter)
cat("Question 6: Probability that a user spends more than four minutes:", probability_more_than_4_minutes, "\n")