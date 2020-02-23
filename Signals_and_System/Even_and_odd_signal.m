%DECOMPOSITION OF GIVEN SIGNAL INTO ODD AND EVEN SIGNAL  

  
%Initialisation of screen 
close all; 
clear all; 
clc; 

  

%ORIGINAL SIGNAL 

n=0:1:8; 
x=[1 1 2 2 0 1 2 1 2]; 

% Signal Plot
subplot(3,2,1); 

stem(n,x); 

title('ORIGINAL SIGNAL'); 

xlabel('n'); 

ylabel('x[n]'); 

grid on; 

  

%FOLDED SIGNAL 

  

y=fliplr(x); 

n=0:1:8; 

subplot(3,2,2); 

stem(n,y); 

title('Folded Signal'); 

xlabel('n'); 

ylabel('x[-n]'); 

grid on; 

  

%EVEN PART OF SIGNAL 

  

xe=(x+y)/2; 

n=0:1:8; 

subplot(3,2,3); 

stem(n,xe); 

title('Even part of Signal'); 

xlabel('n'); 

ylabel('xe[n]'); 

grid on; 

  

%ODD PART OF SIGNAL 

  

xo=(x-y)/2; 

n=0:1:8; 

subplot(3,2,4); 

stem(n,xo); 

title('Odd part of Signal'); 

xlabel('n'); 

ylabel('xo[n]'); 

grid on; 

  

%RECONSTRUCTION OF ORIGINAL SIGNAL 

  

xa=(xe+xo); 

n=0:1:8; 

subplot(3,2,5); 

stem(n,xa); 

title('Reconstruction'); 

xlabel('n'); 

ylabel('xa[n]'); 

grid on;

%SINE WAVE

%SINE SIGNAL 

  

close all; 

clear all; 

clc; 

  

%ORIGINAL SIGNAL 

  

n=-1:0.01:1; 

x=sin(2*pi*n); 

subplot(2,2,1); 

stem(n,x); 

title('ORIGINAL SIGNAL'); 

xlabel('n'); 

ylabel('x[n]'); 

grid on; 

  

%Folded Signal 

  

n=-1:0.01:1; 

y=fliplr(x); 

subplot(2,2,2); 

stem(n,y); 

title('Folded Signal'); 

xlabel('n'); 

ylabel('x[-n]'); 

grid on; 

  

%EVEN PART OF SIGNAL 

  

xe=(x+y)/2; 

subplot(2,2,3); 

stem(n,xe); 

title('Even part of Signal'); 

xlabel('n'); 

ylabel('xe[n]'); 

grid on; 

  

%ODD PART OF SIGNAL 

  

xo=(x-y)/2; 

subplot(2,2,4); 

stem(n,xo); 

title('Odd part of Signal'); 

xlabel('n'); 

ylabel('xo[n]'); 

grid on;

%COSINE SIGNAL 

  

close all; 

clear all; 

clc; 

  

%ORIGINAL SIGNAL 

  

n=-1:0.01:1; 

x=cos(2*pi*n); 

subplot(2,2,1); 

stem(n,x); 

title('ORIGINAL SIGNAL'); 

xlabel('n'); 

ylabel('x[n]'); 

grid on; 

  

%Folded Signal 

  

y=fliplr(x); 

subplot(2,2,2); 

stem(n,y); 

title('Folded Signal'); 

xlabel('n'); 

ylabel('x[-n]'); 

grid on; 

  

%Even part of Signal 

  

xe=(x+y)/2; 

subplot(2,2,3); 

stem(n,xe); 

title('Even part of Signal'); 

xlabel('n'); 

ylabel('xe[n]'); 

grid on; 

  

%Odd part of Signal 

  

xo=(x-y)/2; 

subplot(2,2,4); 

stem(n,xo); 

title('Odd part of Signal'); 

xlabel('n'); 

ylabel('xo[n]'); 

grid on;
