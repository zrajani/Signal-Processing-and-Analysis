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

% Matrix of complex numbers
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

%% Question 11
t=0:0.01:3*pi; %Time range

Npts=512; %No of Points to plot
y=linspace(0,2*pi,Npts); %Creates Number of point
omega_1=2;
x=sin(omega_1*y); %Computing of Sine Function
z=cos(omega_1*y);
a=tan(y);
plot(y,x,'.'); % Plot Sine Wave
grid on;  %Display the grids on the graphs
hold on;
plot(y,z,'*');
axis ([0 6.2832 -2 2]);

%% Question 13-15

%Parameters
rng(22)
xmin=-100; xmax=100;
ymin=-1.25; ymax=1.25;
Npts=2^8;

%Variables

xr=linspace(xmin,xmax,Npts);
ydata=2*(rand(1,Npts)-0.5 *ones (1,Npts));
ymean=mean(ydata)*ones(size(ydata));
%figure;
plot(xr,ydata,'b-.');
hold on 
plot(xr,ymean,'c*');
legend('data','mean');
grid on 

axis([xmin xmax ymin ymax]);
%%
%Question 14
clear all;
close all;
clc;
%Parameters;
rng(832);
xmin=-100; xmax=100;
ymin=-1.25; ymax=1.25;
Npts=5*2^8;
Nss=5; %Sample Size
sum=0;
MAdata=ones(5,5);
Final_Result=strings(5,5);

%Variables
testvector=rand(25,1);
Adata=reshape(testvector,[Nss,Nss])';
%overallmean1=mean(Adata)*ones(size(Adata))
overallmean=mean(testvector)*ones(size(Adata))
for r=1:5
    for c=1:5
        sum=sum + Adata(r,c);
        MAdata(r,c)=sum/c
        if (MAdata(r,c)< overallmean)
            Final_Result(r,c)= 'Less';
        elseif (MAdata(r,c) > overallmean)
            Final_Result(r,c)= 'Greater';
        else
            Final_Result(r,c)= 'Equal';
        end
    end
    sum=0;
end

%%
% Question 15

tr=linspace(0,2*pi,1000);
omega=4;

y1=sin(omega*tr);
y2=cos(2*omega*tr);
y3=sin(2*omega*tr);
y4=cos(omega*tr);
ytotal=[y1;y2;y3;y4];

z=sumfuncs(ytotal);

plot(z)
