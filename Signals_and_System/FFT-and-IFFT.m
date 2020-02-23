% Author: Zain Rajani

%Code Description: Finding the FFT and IFFT for a given sequence 

%Initialise
clc;
clear all;
 
%code block to find FFT of a sequence 
x = [1 2 3 4];
N = length(x);
for k = 1:N
y(k) = 0;
for n = 1:N
y(k) = y(k)+x(n)*exp(-1i*2*pi*(k-1)*(n-1)/N);  % Replace your sequence equation here
end
end
 
 
%code block to plot the input sequence
t = 0:N-1;
subplot(3,2,1);
stem(t,x);
ylabel('Amplitude ---->');
xlabel('n ---->');
title('Input Sequence');
grid on;
 
 
%code block to plot the FFT sequence
t = 0:N-1;
z=real(y);
subplot(3,2,2);
stem(t,z);
ylabel('Amplitude ---->');
xlabel('k ---->');
title('Real part of FFT');
grid on;
 
Q=imag(y);
subplot(3,2,3);
stem(t,Q);
ylabel('Amplitude ---->');
xlabel('k ---->');
title('Imaginary part of FFT');
grid on;
 
 
 
% Find the magnitudes of individual FFT points and plot it
magnitude = abs(y);
t = 0:N-1;
subplot(3,2,4);
stem(t,magnitude);
ylabel('Amplitude ---->');
xlabel('K ---->');
title('Magnitude of FFT Sequence');
grid on;
 
%code block to find angle of FFT sequence
S=angle(y);
t = 0:N-1;
subplot(3,2,5);
stem(S);
ylabel('Amplitude ---->');
xlabel('K ---->');
title('Angle of FFT Sequence');
grid on;
 
 
%code block to find IFFT of a sequence
R = length(y);
for n = 1:R
x1(n) = 0;
for k = 1:R
    x1(n) = x1(n)+(1/R)*y(k)*exp(1i*2*pi*(k-1)*(n-1)/R);
end
end
 
 
%code block to plot the IFFT sequence
t = 0:R-1;
subplot(3,2,6);
stem(t,x1);
ylabel('Amplitude ---->');
xlabel('n ---->');
title('IFFT sequence');
grid on;
