%PLOT DATA ASLI

clear all;
clc;
%Open data file
fid = fopen('E:\KULIAH\JURNAL\UNTUKPLOTMATLAB\stopasli.csv');
%Load data in from csv file
readData = textscan(fid,'%f %f %f %f %f %f','HeaderLines',1,'Delimiter',',');  
%fclose(fid);
%Extract data from databuffer
x_gyro_0= readData{1,1}(:,1);
y_gyro_0= readData{1,2}(:,1);
z_gyro_0= readData{1,3}(:,1);
x_acc_0= readData{1,4}(:,1);
y_acc_0= readData{1,5}(:,1);
z_acc_0= readData{1,6}(:,1);


%Open data file
fid2 = fopen('E:\KULIAH\JURNAL\UNTUKPLOTMATLAB\lurasli.csv');
%Load data in from csv file
readData1 = textscan(fid2,'%f %f %f %f %f %f','HeaderLines',1,'Delimiter',',');  
%fclose(fid);
%Extract data from databuffer
x_gyro_1 = readData1{1,1}(:,1);
y_gyro_1 = readData1{1,2}(:,1);
z_gyro_1 = readData1{1,3}(:,1);
x_acc_1 = readData1{1,4}(:,1);
y_acc_1 = readData1{1,5}(:,1);
z_acc_1 = readData1{1,6}(:,1);


%Open data file
fid3 = fopen('E:\KULIAH\JURNAL\UNTUKPLOTMATLAB\kanasli.csv');
%Load data in from csv file
readData2 = textscan(fid3,'%f %f %f %f %f %f','HeaderLines',1,'Delimiter',',');  
%fclose(fid);
%Extract data from databuffer
x_gyro_2 = readData2{1,1}(:,1);
y_gyro_2 = readData2{1,2}(:,1);
z_gyro_2 = readData2{1,3}(:,1);
x_acc_2 = readData2{1,4}(:,1);
y_acc_2 = readData2{1,5}(:,1);
z_acc_2 = readData2{1,6}(:,1);


%Open data file
fid4 = fopen('E:\KULIAH\JURNAL\UNTUKPLOTMATLAB\kirasli.csv')
%Load data in from csv file
readData3 = textscan(fid4,'%f %f %f %f %f %f','HeaderLines',1,'Delimiter',',');  
%fclose(fid);
%Extract data from databuffer
x_gyro_3 = readData3{1,1}(:,1);
y_gyro_3 = readData3{1,2}(:,1);
z_gyro_3 = readData3{1,3}(:,1);
x_acc_3 = readData3{1,4}(:,1);
y_acc_3 = readData3{1,5}(:,1);
z_acc_3 = readData3{1,6}(:,1);

figure(1)
%subplot(121)
set(gca,'FontSize',13)

scatter3(x_gyro_0, y_gyro_0, z_gyro_0, 'b')
hold on
scatter3(x_gyro_1, y_gyro_1, z_gyro_1, '*g')
hold on
scatter3(x_gyro_2, y_gyro_2, z_gyro_2, '.m')
hold on
scatter3(x_gyro_3, y_gyro_3, z_gyro_3, '^r')
hold off
haha = legend('Menyala','Lurus','Belok Kanan','Belok Kiri');
set(haha, 'Location', 'south')
set(haha, 'Interpreter', 'none')
axis([0.1 0.4 -0.2 0.4 -1 1])
title('Grafik 3D Sensor Giroskop','FontSize', 16, 'FontWeight', 'bold')
xlabel('Sumbu X')
ylabel('Sumbu Y')
zlabel('Sumbu Z')

figure(2)
set(gca,'FontSize',12)
%subplot(122)
scatter3(x_acc_0, y_acc_0, z_acc_0,'b')
hold on
scatter3(x_acc_1, y_acc_1, z_acc_1,'*g')
hold on
scatter3(x_acc_2, y_acc_2, z_acc_2,'.m')
hold on
scatter3(x_acc_3, y_acc_3, z_acc_3,'^r')
hold off
axis([-0.1 2 0 1 -1 0.5])
hah= legend('Menyala','Lurus','Belok Kanan','Belok Kiri');
set(hah, 'Location', 'south')
set(hah, 'Interpreter', 'none')
title('Grafik 3D Sensor Akselerometer','FontSize', 16, 'FontWeight', 'bold')
xlabel('Sumbu X')
ylabel('Sumbu Y')
zlabel('Sumbu Z')