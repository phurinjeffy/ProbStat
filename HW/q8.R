mean_lifetime <- 6  # Mean lifetime in years
time_period <- 3    # Time period in years

probability_failure_in_next_3_years <- pexp(time_period, rate = 1 / mean_lifetime)
cat("Question 8: Probability that the CPU fails in the next three years?", probability_failure_in_next_3_years, "\n")
