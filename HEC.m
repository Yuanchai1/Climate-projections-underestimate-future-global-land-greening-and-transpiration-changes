%Code used for calculating the constrained future global mean LAI trend
warning off
close all
clear
clc
%load the data
load('Data for HEC_X.mat')
load('Data for HEC_Y.mat')
uo=0.029923333;% Best estimate of observed global mean LAI trend
sigmao=0.007601739;% Uncertainty of observed global mean LAI trend across GLOBMAP v3, GLASS and GIMMS LAI4g datasets
%Calculate the constrained future global mean LAI trend
[r,m,b] = regression(X,Y);
Corr_R=0.95;
mean_x=mean(X(1,:));
sigma_x=std(X(1,:)); 
mean_y=mean(Y(1,:));
std_y=std(Y(1,:)); 
SNR1=sigma_x^2;
SNR2=sigmao^2;
SNR=SNR1./SNR2;
Data1=Corr_R.*std_y./sigma_x;
Data2=uo-mean_x;
Data3=sigma_x^2+sigmao^2;
Data4=Data1.*Data2./Data3.*sigma_x^2;
Best_after=mean_y+Data4;
Future_LAI_ave_after_HEC=Best_after;% Best estimate of the constrained future global mean LAI trend
save Future_LAI_ave_after_HEC Future_LAI_ave_after_HEC

