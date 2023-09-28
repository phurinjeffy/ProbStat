# Create a function to calculate a confidence interval with given sample 'x' and the desired confidence level 'conf'
int.est = function(x, conf) { 
  # Calculate the area under the distribution curve, by dividing the confidence level by 100,
  # and adding half of the remaining probability on each tail.
  area = (conf/100) + ((1-(conf/100))/2)
  
  # Calculate the standard error, by dividing the standard deviation of the sample
  # by the square root of the size of sample.
  se = sd(x)/sqrt(length(x))
  
  # Calculate the margin of error, using the quantile function 'qt' to find the critical t-value, 
  # and multiply it by 'se' to determine the margin of error.
  margin = qt(area, length(x)-1)*se
  
  # Calculate the lower and upper bounds of the confidence interval,
  # by subtracting the calculated margin from the mean of sample for 'lower'
  # and adding the calculated margin to the mean of sample for 'upper'
  lower = mean(x) - margin
  upper = mean(x) + margin
  
  # Print the lower and upper value as results
  cat("lower=", lower, "\nupper=", upper)
}

# Sample Data
score = c(83, 73, 62, 63, 71, 77, 77, 59, 92)

# Print results from the 'int.est' function
# Pass in the parameters, sample 'score' and '95%' confidence interval
cat("Result from function:\n")
int.est(score, 95)

# Print results from the t.test function, where it performs a t-test on the sample 'score', 
# then extracts and returns the confidence interval of the data.
cat("\n\nResult from t.test:\n", t.test(score)$conf.int)
