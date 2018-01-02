function operators(a, b)
  a == b
  a ~= b
  a && b % AND
  a || b % OR
  xor(a,b)
  c = (3 >= 1)
  disp(c)
  
  x = pi  
  disp(sprintf('2 decimals: %0.2f', x))
  x
  format long 
  x
  format short
  x
  
  
  zeros(1,3)
  ones(1,3)
  rand(3,3)
  randn(1,3)
  
  w = -6 + sqrt(10) * (randn(1,10000))
  hist(w)
  hist(w,50)
  
  I = eye(4)