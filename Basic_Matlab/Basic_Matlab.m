clc;
clear all;
close all;

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