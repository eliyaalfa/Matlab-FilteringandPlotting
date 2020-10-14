clear all
clc;
%Open data file
fid = fopen('E:\KULIAH\JURNAL\UNTUKPLOTMATLAB\kirasli.csv');
%Load data in from csv file
readData = textscan(fid,'%f %f %f %f %f %f','HeaderLines',1,'Delimiter',',');  
%fclose(fid);
%Extract data from databuffer
%Xdata= readData{1,1}(:,1);
Ydata1= readData{1,1}(:,1);
Ydata2= readData{1,2}(:,1);
Ydata3= readData{1,3}(:,1);
Ydata4= readData{1,4}(:,1);
Ydata5= readData{1,5}(:,1);
Ydata6= readData{1,6}(:,1);

%array
gyro = [Ydata1, Ydata2, Ydata3, Ydata4, Ydata5, Ydata6];

%filter lpf
%nilai 
a = 0.9;
filtgyro = filter(a, [1 a-1], gyro);
%filtacclero = filter(a, [1 a-1], accler);

csvwrite('E:\KULIAH\JURNAL\UNTUKPLOTMATLAB\kir09.csv',filtgyro);