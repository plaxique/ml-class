function prediction = vectorMultiplication_vectorized(theta, x)  
  # prediction = theta' * x;  
  prediction = transpose(theta) * x;
  
  