function prediction = vectorMultiplication_unvectorized(theta, x, n)
  prediction = 0.0;
  for j = 1:n, 
    prediction = prediction + theta(j) * x(j);
    
 
## not working 
#  prediction = double (0.0);
#  for (j = int16(0); j < n; j++) 
#    prediction += theta(j) * x(j)
    
  end; 