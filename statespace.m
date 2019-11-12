a0=1z;
a1=2;
a2=3;
k=10;

num=[0 0 0 k];
den=[1 a2 a1 a0];

htf=tf(num,den);

% Default state space

ssysd=ss(htf);

ssbal=balreal(htf);