% Program Description: Convolution of Equal Sequence length 

% Program Intialisation
clear all;
close all;
clc;
n=0:1:5;
x=[1 4 2 2 1 3];
h=[4 2 1 3 4 1];
figure
 
%Plot x[n]
subplot(2,2,1)
stem(n,x);
title('x[n]');
xlabel('n');
ylabel ('Amplitude');
 
%Plot h[n]
subplot(2,2,2)
stem(n,h);
xlabel (' n');
ylabel('Amplitude');
title('h[n]')
 
%Linear convolution of signal
y=conv(x,h);
 
%plotting convoluted signal
subplot(2,2,3);
stem(y)
xlabel('n');
ylabel('Amplitude')
title('Convolution Signal x[n]*h[n]');
 
%Circular convolution
z=cconv(x,h);
subplot(2,2,4);
stem(z);
xlabel('n');
ylabel('Amplitude');
title('Circular convolution of x[n]*h[n]');
