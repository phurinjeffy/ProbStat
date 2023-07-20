n <- 4 # Assign 4 to 'n', which is the number of trials or bit transmitted

prob_error <- 0.1 # Assign 0.1 to 'prob_error', meaning there's 0.1 error rate

X <- c(0,1,2,3,4) # Assign vector containing (0, 1, 2, 3, 4) to 'X', meaning from 0 to 4 errors.

# Calculating the probability mass function of the binomial distribution at each value in the vector 'X',
# where 'size = n' represents the number of trials, and 'prob = prob_error' the probability of error in each trial. 
# It returns a vector containing the probabilities of getting an error for each value in 'X'.
pmf = dbinom(X, size = n, prob = prob_error)

# Print out the probability mass function
print(pmf)

# Simulate the transmission of 100,000 sets of 4 bits using the binomial distribution,
# where 'size' represents the number of trials in each sample, and 'prob' is the probability of error in each trial.
# It returns a vector 'transmissions' contains the number of errors in each set of 4 bits transmitted.
transmissions <- rbinom(100000, size = n, prob = prob_error)

# Calculate the mean and variance of the simulated data from vector 'transmissions'
mean_transmissions <- mean(transmissions)
var_transmissions <- var(transmissions)

# Print out the mean and variance
print(paste("Mean:", mean_transmissions))
print(paste("Variance:", var_transmissions))

# Calculate the cumulative probability of obtaining at most 3 error in 'n' trials (4), 
# with 'prob = prob_error' being the probability of error in each trial, 
# meaning sum the probabilities of getting number of errors from 0 to 3
cumulative <- pbinom(q = 3, size = n, prob = prob_error)

# Print out the cumulative probability of obtaining at most 3 error
print(cumulative)

# Plot the bar graph for the probability mass function (PMF) of the binomial distribution at each value in the vector 'X',
# 'xlab' 'ylab' and 'main' are the labels of the graph, in x-axis, y-axis and title respectively.
barplot(pmf, names.arg = X, xlab = "Number of Error", ylab = "Probability", main = "Binomial Distribution PMF")