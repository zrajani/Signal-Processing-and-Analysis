% Audio Signal Discrete Fourier Transform

%Description: Peform Discrete Fourier Tranform and Inverse Discrete Fourier Transform on Audio Signal

% Bird chirp signal in built in MATLAB is used 

%Initialize the screen 

clear all;
close all;
clc;
 
%Loads the audio file 
x=load('chirp.mat');
x1=x.y;
n=1:1024;
 
%plots the audio signal
subplot(2,2,1)
stem(n,x1(n));
xlabel('n');
ylabel('x[n]');
title('Audio signal');
  
N=1024;
sum=0;
 
%Computes the DFT
for K=0:1:N-1
    for n=0:1:N-1
       sum=sum+(x1(n+1)*exp((-1j*2*pi*K*n)/N));
    end
    X(K+1)=sum;
    sum=0;
end
 
%Plots the DFT
K=1:1:N;
subplot(2,2,2)
stem(K,real (X(K)));
xlabel('n');
ylabel('Real X[k]');
title('Real part of DFT'); 
subplot(2,2,3)
stem(K,imag (X(K)));
xlabel('n');
ylabel('Img X[k]');
title('Imaginary part of X[k]');
 
%Computes the IDFT
for n=0:1:N-1
    for K=0:1:N-1
       sum=sum+((X(K+1)*exp((1j*2*pi*K*n)/N))/N); 
    end
    z(n+1)=sum;
    sum=0;
end
 
%Plots the IDFT
n=1:1:N;
subplot(2,2,4)
stem(n,z(n));
xlabel('n');
ylabel('x[k]');
title('IDFT Signal');
