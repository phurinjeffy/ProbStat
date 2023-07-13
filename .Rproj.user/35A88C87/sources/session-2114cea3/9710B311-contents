my.Pi <- function(n) { # Create function called 'my.Pi(n)' which takes in parameter 'n' to find an estimated Pi value, where 'n' is the number of plots to generate
  
  set.seed(463) # Setting the seed number to 463 for generating a random sequence of numbers
  
  x = runif(n ,min=0,max=1) # Use runif(n) to generate 'n' amount of random x coordinates, between 0 and 1, assign it to variable 'x'
  
  y = runif(n) # Use runif(n) to generate 'n' amount of random y coordinates, between 0 and 1, assign it to variable 'y'
  
  r = sqrt((x^2)+(y^2)) # Using Pythagorean theorem to find the radius, by taking the square root of 'x' squared plus 'y' squared
  
  num.circle.dots = sum(r<=1) # Sum the amount of time value, in container 'r', is not more than 1, assign it to variable 'num.circle.dots'
  # Why it need to be at most 1 because a unit circle has radius of 1 and for the plot to be inside the circle it need to be less than 1 otherwise it's outside
  
  num.square.dots = n # Assign 'n', which is the number of plots, to variable 'num.square.dots'
  
  ratio = num.circle.dots / num.square.dots # Calculate the ratio, by dividing 'num.circle.dots' by 'num.square.dots', and assign it to 'ratio'
  
  my.pi = 4 * ratio # Find the estimated Pi value, by multiplying 'ratio' by 4 as the ratio is for only one quadrant and we want the full circle because the area for unit circle is pi
  
  print(my.pi) # Print my.pi to check the estimated pi value
  
  different = abs(pi - my.pi) # Calculate the difference between the real pi value and our estimated value
  
  print(different) # Print out the calculated difference
  
  plot(x, y, col = ifelse(r<=1,"red","blue"), asp=1, pch=20) # Plot the graph, 'x' and 'y' are vectors of the coordinates to be plotted, 'col' set the color for the plots if r <= 1 which means it is inside the circle color will be red otherwise blue, set the aspect ratio to 1 so x and y are same ratio, pch=20 make the plotted dot a filled circular shape
  
}

my.Pi(500000) # Call the function my.Pi(n) and set 'n' to 500,000, 1,000,000 and 2,000,000
