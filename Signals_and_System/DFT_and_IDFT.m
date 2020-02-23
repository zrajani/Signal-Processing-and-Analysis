% Initialization 
clear all;
close all;
clc;
 
%Given Sequence
x=[1 2 3 4];
N=4;
sum=0;
 
%Calculation of DFT
for K=0:1:N-1
    for n=0:1:N-1
        sum=sum+(x(n+1)*exp((-1j*2*pi*K*n)/N));
    end
    X(K+1)=sum;
    sum=0;
end
 
%Plotting figures
K=1:1:N;
 
%Plot Original Signal
subplot(2,2,1)
stem(K,x);
xlabel('n');
ylabel('x[n]');
title('Original Signal');
 
%Plots the real part of the DFT
p=real (X(K));
subplot(2,2,2);
stem(K,p);
xlabel('n');
ylabel('Real X[k]');
title('Real Part of DFT');
 
%Plots the imaginary part of the DFT
z=imag(X(K));
subplot(2,2,3)
stem(K,z);
xlabel('n');
ylabel('Img X[k]');
title('Imaginary part of DFT');
 
%Calculation of IDFT
for n=0:1:N-1
    for K=0:1:N-1
       sum=sum+((X(K+1)*exp((1j*2*pi*K*n)/N))/N);
    end
    z(n+1)=sum;
    sum=0;
end
 
%Plots the IDFT Signal
n=1:1:N;
subplot(2,2,4)
stem(n,z(n));
xlabel('n');
ylabel('x[n]');
title('IDFT Signal');
