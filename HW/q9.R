mean_lifetime <- 7000  # Mean lifetime in hours
std_dev <- 600         # Standard deviation in hours
time_threshold <- 5800 # Time threshold in hours

probability_failure_before_5800_hours <- pnorm(time_threshold, mean = mean_lifetime, sd = std_dev)
cat("Question 9: Probability that a laser fails before 5800 hours:", probability_failure_before_5800_hours, "\n")
