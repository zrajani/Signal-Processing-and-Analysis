function y = delta(x)

% Range passed by the user is given by x
% Creating a zero vector with the specified range 
y = zeros(1, length(x)); 

% As plotting delta function at x=0 the value should be 1 at that point
y(find(x==0)) = 1;