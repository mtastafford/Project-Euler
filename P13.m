%%Project Euler - Problem 1%%
clc;
clear all;
close all;
%% USE THIS TO CREATE A RANDOM ARRAY AND OUTPUT TO FILE
% x = 1:1:5;
% y = [x;rand(1,5)];
% fileID = fopen('nums2.txt','w');
% fprintf(fileID,'%d %4.4f\n',y);
% fclose(fileID);
%%INPUT ARRAY FROM FILE
type P13-EDIT.txt
format long
fileID = fopen('P13-EDIT.txt','r');
formatSpec = '%ld ';
sizeA = [100 1];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

BIGFUCKINGSUM=0;
for i=1:100
    BIGFUCKINGSUM=BIGFUCKINGSUM+A(i)
end

