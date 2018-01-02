function move_data(A)
  sz = size(A)
  size(A,1)   %m
  sz[0]       %m
  
  length(A)   % size of longest dimension
  
  cd D:/Daten/Weiterbildung/ml-class/general
  load('features.dat')
  features
  
  who
  whos        % detailed view
  clear features
  who
  
  v = features(1:2)
  
  save hello.mat v;
  clear