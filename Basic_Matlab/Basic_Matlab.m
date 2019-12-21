% Program Name: Basic Matlab Commands
% Author: Zain Rajani
% Created on: September 17, 2019
% Last Edited on: October 07, 2019

%%Initialize Screen
clc;
clear all;
close all;

%% Vector Creation

x=1:10;     % Create a vector from 1 to 10
y=0:0.5:5;  % Create a vector from 0 to 5 with 0.1 increment

%% Matrix Creation
% The magic() function creates a matrix with sum of all the rows and
% columns is the same the argument of the magic() should be greater than or
% equal to 3

A=magic(3);
A_verify=sum(A);

%% Matrix of zeros 

zero_vector=zeros(5,1);

%% Matrix of random numbers

% Matrix of random numbers uniformly distributed 

random_number_matrix = rand(1,5);  

% Matrix of 1 row and 5 columns having random numbers normally distributted

random_number_matrix_norm= randn(1,5);

%% Transpose of a matrix

% Matrix of 4x4 creation
B=magic(4);

%Usual transpose of matrix
B_transpose=B';

%% Matrix of complex numbers
C=[1 3 22+0.7i 9+8i; 22 07 24+12i 19+93i; 56 8+92i 15+0.3i 29+0.3i]; 

% Transpose of complex matrix which form the complex conjugate 
C_sign_transpose=C';

% Transpose of complex matrix the '.' operator takes just the transpose and
% no complex conjugate
C_transpose=C.';

%% Cross and Dot Product of Matrix
% Create a uniformly independent matrix of random numbers
% The syntax says that randi(max_integer,dimension_of_matrix)
rand_a=randi(22,3);
rand_b=randi(24,3);
% Generates the cross product of two matrices
cross_rand=cross(rand_a,rand_b);

% Verify the cross product by getting the dot product 
% The cross product is true given that dot product of the answer and the
% vector is equal to 0
verify_cross_1=dot(rand_a,cross_rand);
verify_cross_2=dot(rand_b,cross_rand);

%% Inverse of Matrix
% The following function will perform inverse of matrix using inv() if the
% matrix is not singular and square then use pinv()
% For this we will invert the rand_a matrix which was created earlier

invert_rand_a=inv(rand_a);

%% Multiplication Element-wise and by a scalar;
% Creates a matrix of all ones having 3x3 dimensions
mat_1=ones(3,3);
% Scalar multiplication by 2
scalar_multi=2*mat_1;
% Create 2 sample matrices
matrix_1=magic(3);
matrix_2=rand(3);      % Random number matrix uniformly distributed

% Element-wise Multiplication
matrix_elementwise_multiply=matrix_1.*matrix_2;
% Matrix Multiplication
matrix_multiply=matrix_1*matrix_2;

%% Vector of Complex numbers

complex_vector=[1+34i 5+7i 8+.99i 6+2.678983i];

%% Concatenate matrices and multiply a row by an element of same matrix

% Create a matrices 
matrix_A=[1 2 3; 4 5 6; 7 8 9];
matrix_B=magic(3);
concatenate_matrix_1=[matrix_A matrix_B];  % Concatenate column-wise
concatenate_matrix_2=[matrix_A;matrix_B];  % Concatenate row-wise

% Multiply a row with an element of that matrix

matrix_C=[matrix_A(1,:); matrix_A(2,2)*matrix_A(2,:); matrix_A(3,:)];

%% Vector Creation from 0 to 500 with 100 samples

vector_100_samples=0:5.01:500;

%% Creating a 2D Plot 
% We first define the sine function
xmin=0;
xmax=6.3;
ymin=-1.5;
ymax=1.5;
n=0:0.001:2*pi;
x=sin(n);
y=cos(n);
plot(n,x,'--c','Linewidth',2);
hold on
plot(n,y,':b','Linewidth',2);
title('Sine Function from 0 to 2{\pi}');
ylabel('Amplitude'); xlabel('Time (in radians)');
xticks([0 pi/2 pi 3*pi/2 2*pi])
xticklabels({'0','\pi/2','\pi','3\pi/2','2\pi'});
grid on; axis ([xmin xmax ymin ymax]);
legend ('Sine Wave','Cosine Wave');
hold off
%% Alternative to plot 2D graph
t=0:0.01:3*pi; %Time range

Npts=512; %No of Points to plot
y=linspace(0,2*pi,Npts); %Creates Number of point
omega_1=2;
x=sin(omega_1*y); %Computing of Sine Function
z=cos(omega_1*y); %Computing of Cosine Function
plot(y,x,'.'); % Plot Sine Wave
grid on;       % Display the grids on the graphs
hold on;       % Holds the figure to plot on the same plot the next graph
plot(y,z,'*'); % Plot of Cosine Function
legend ('Sine Function', 'Cosine Function');
title('Sine Function from 0 to 2{\pi}');
ylabel('Amplitude'); xlabel('Time (in radians)');
xticks([0 pi/2 pi 3*pi/2 2*pi])
xticklabels({'0','\pi/2','\pi','3\pi/2','2\pi'});
xtickangle(45);
axis ([0 6.2832 -2 2]);

%% Creating a 3D Exponential Function

t = linspace(0, 2.5, 250);
function_exp = exp(2*pi*1i*t);
figure(1)
plot3(t, real(function_exp), imag(function_exp), 'LineWidth',2)
hold on
plot3(t, real(function_exp), zeros(size(t))-1.5)
plot3(t, zeros(size(t))-2, imag(function_exp))
hold off
grid on
axis([-1  3 -2  2 -1.5  1.5])
view([-125  30])
xlabel('Time', 'Rotation',-30)
ylabel('Real Axis', 'Rotation',10)
zlabel('Imag Axis')