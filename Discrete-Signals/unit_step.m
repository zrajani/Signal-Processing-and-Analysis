function y=unit_step(n)

y=zeros(size(n));

y(n>=0)=1;