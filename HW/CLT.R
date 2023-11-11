# Central Limit Theorem (CLT) Proof

# Initialize an empty variable to store sample means
x.bar = 0

# Generates a population of 700 values from a chi-squared distribution with 4 degrees of freedom.
popu.x <- rchisq(n=700, df=4)

# Perform sampling and calculate sample means
for (i in 1:3000) { # Iterate 3000 times
  # Randomly samples 80 values from the population 'popu.x' with replacement, meaning that after each value is sampled, 
  # it is placed back in the population, allowing it to be chosen again in the same sample. 
  samp.x = sample(popu.x, size=80, replace=TRUE)
  # Calculate the mean of the sample and store it in vector 'x.bar',
  # which eventually contain the sample means from all 3000 samples.
  x.bar[i] = mean(samp.x)
}

# Plots histogram of the population distribution
hist(popu.x, main="Population Distribution")

# Plots histogram of the sampling distribution
hist(x.bar, main="Sampling Distribution")

# Rule 1 proof: Compare means
mean_xbar = mean(x.bar) # Calculate the mean of the sample means
cat("Mean X̄:", mean_xbar, "\n")
mean_popu_x = mean(popu.x) # Calculate the mean of the population
cat("Mean Population:", mean_popu_x, "\n")

# Rule 2 proof: Compare standard deviations
sd_xbar = sd(x.bar) # Calculate the standard deviation of the sample means
cat("SD X̄:" , sd_xbar, "\n")
sd_xbar_standard_error = sd(popu.x) / sqrt(80) # Calculate the standard deviation of the sample means based on the CLT
cat("SD X̄ (standard error):", sd_xbar_standard_error, "\n")
