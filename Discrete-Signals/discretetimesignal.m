% Initialize
clc;
clear all;
close all;

%% Delta Function Signal Operation

%Range of n
n1=-5:15;

%Delta Function

yd=3*delta(n1+2)+2*delta(n1)-delta(n1-3)+5*delta(n1-7);

% Plot the desired function
figure
stem(n1,yd);
title('Plot for 3\delta(n+2)+2\delta(n)-\delta(n-3)+5\delta(n-7)');
xlabel('Discrete Time (n) \rightarrow');
ylabel('Amplitude \rightarrow');
grid on;

%% Unity Step Function and Exponential Function Operation
n2=-40:40;
y1=exp(0.1.*n2);
y2=unit_step(n2+20);
y3=unit_step(n2-10);
y4=y2-y3;
yu=y1.*y4;
figure
subplot(2,2,3)
stem(n2,y1);
title('Plot for e^{0.1n} for -40 \leq n \leq 40');
xlabel('Discrete Time (n) \rightarrow');
ylabel('Amplitude \rightarrow');
subplot(2,2,2)
stem(n2,y2);
title('Plot u(n+20) for -40 \leq n \leq 40');
xlabel('Discrete Time (n) \rightarrow');
ylabel('Amplitude \rightarrow');
subplot(2,2,1)
stem(n2,y3);
title('Plot u(n-10) for -40 \leq n \leq 40');
xlabel('Discrete Time (n) \rightarrow');
ylabel('Amplitude \rightarrow');
subplot(2,2,4)
stem(n2,yu);
title('Plot e^{0.1n}[u(n+20)-u(n-10)] for -40 \leq n \leq 40');
xlabel('Discrete Time (n) \rightarrow');
ylabel('Amplitude \rightarrow');

%% Sine Wave and Exponential Function

n3=linspace(0,100,150);
z1=exp(-0.05.*n3);
z2=sin((0.1*pi*n3)+(pi/3));
zse=z1.*z2;
figure
subplot(3,1,1)
stem(n3,z1);
title('Exponential Function e^{-0.05n}');
xlabel('Discrete Time (n) \rightarrow');
ylabel('Amplitude \rightarrow');
subplot(3,1,2)
stem(n3,z2);
title('Sine Wave sin(0.1\pin+\pi/3)');
xlabel('Discrete Time (n) \rightarrow');
ylabel('Amplitude \rightarrow');
subplot(3,1,3)
stem(n3,zse);
title('Plot e^{-0.05n}sin(0.1\pin+\pi/3)');
xlabel('Discrete Time (n) \rightarrow');
ylabel('Amplitude \rightarrow');

%% Periodic Signal 

n1=[-12:12];
x1=[-2 -1 0 1 2];
x=x1'*ones(1,5);
x=(x(:))';
stem(n1,x);
title('Periodic Signal with 5 periods');
xlabel('Discrete Time (n) \rightarrow');
ylabel('Amplitude \rightarrow');

%% Periodic Signal of Sine Wave and unit step function

n2=[-16:16];
x1=sin(0.1*pi*n2)*(unit