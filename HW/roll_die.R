# HW 1 Empirical Probability
# Phurin Vanasrivilai 65011463

options(scipen=20) # Format the displayed numbers to be without scientific notation

roll.die <- function(n){ # Create a function roll.die(n) where n is no. of rolls
  
  set.seed(463) # Setting the seed for generating random sequence of numbers
  
  die <- c(1,2,3,4,5,6) # A vector 'die' containing the die faces 1 to 6
  
  results <- sample(die, size=n, replace=TRUE) # Simulate rolling die n times, put the sample into vector 'results'
  
  get5 <- sum(results==5) # Sum the numbers of 5 in vector 'results' to variable 'get5'
  
  prob5 <- get5/n # Calculate the probability of getting 5 by dividing 'get5' by n
  
  different <- abs(prob5-(1/6)) # Calculate the difference between 'prob5' and 1/6 into variable 'different'
  
  cat("rolling = ", n, "\n", "Probability of getting 5 = ", prob5, "\n") # display the rolling amount and the probability of rolling to get 5
  
  cat("difference = ", different, "\n\n") # display the value from variable 'different'
}

roll.die(1000) # Calling the function 'roll.die(n)' where n is 1000
roll.die(100000) # Calling the function 'roll.die(n)' where n is 100000
roll.die(1000000) # Calling the function 'roll.die(n)' where n is 1000000