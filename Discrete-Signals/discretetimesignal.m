% Initialize
clc;
clear all;
close all;

%% Delta Function Signal Operation

%Range of n
n1=-5:15;

%Delta Function Example 

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

%% Generate Random Sequences and Histogram

clc;
close all;

n1=[0:100000-1];
x1=2*rand(1,100000);
[h1,x1out]=hist(x1,100);
bar(x1out,h1);
axis([-0.1 2.1 0 1200]);
xlabel('Interval Time');
ylabel('Amplitude or number of elements');
title('Random number Genrator of x_1(n) with 100 bins');

%% Random Number sequence with mean and variance

clc;
close all;

n2=[1:100000];
x2=10+sqrt(10)*randn(1,10000);
figure;
[h2,x2out]=hist(x2,100);
bar(x2out,h2);
xlabel('Interval')
ylabel('Samples');
title('Histogram of sequence x_2(n) in 100 bins');

%% Random Sequence for Summation sign

clc;
close all;

y1=rand(1,100000)-0.5;
y2=rand(1,100000)-0.5;
y3=rand(1,100000)-0.5;
y4=rand(1,100000)-0.5;
x4=y1+y2+y3+y4;

[h4,x4out]=hist(x4,100);
bar(x4out,h4);
xlabel('Interval');
ylabel('Samples');
title('Histogram Sequence for Summation sign with 100 bins');

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

n2=[0:11];
x3=sin(0.1*pi*n2).*(unit_step(n2)-unit_step(n2-10));
x3=x3'*ones(1,4);
x3=(x3(:))';
n3=[-12:35];

stem(n3,x3,'filled');
axis([min(n3)-1,max(n3)+1,min(x3)-0.5,max(x3)+0.5]);
xlabel('n ----->'); ylabel('Amplitude');
title('Sequence x_3(n)');
ntick = [n3(1):4:n3(end)-3 n3(end)];
set(gca,'XTickMode','manual','XTick',ntick);
