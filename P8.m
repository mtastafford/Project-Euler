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
type P9ARRAY.txt
fileID = fopen('P9ARRAY.txt','r');
formatSpec = '%d ';
sizeA = [50 20];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);
A=A'

%%CREATE SPACE FOR THE LARGEST RUNNING SUM
NUMBER=zeros(1,1000);
int64 MAXPRODUCT;
MAXPRODUCT=0;
%% MATRIX FORMAT ==> A(row,column) = A(y,x)
for y=1:20
    for x=1:50
        x=x
        y=y
        SLOT=50*(y-1)+x
        DROP=A(y,x)
        NUMBER(SLOT)=DROP;
    end
end

%%FIND IT
for i=1:987
    d1=NUMBER(i);
    d2=NUMBER(i+1);
    d3=NUMBER(i+2);
    d4=NUMBER(i+3);
    d5=NUMBER(i+4);
    d6=NUMBER(i+5);
    d7=NUMBER(i+6);
    d8=NUMBER(i+7);
    d9=NUMBER(i+8);
    d10=NUMBER(i+9);
    d11=NUMBER(i+10);
    d12=NUMBER(i+11);
    d13=NUMBER(i+12);
    if d1*d2*d3*d4*d5*d6*d7*d8*d9*d10*d11*d12*d13>MAXPRODUCT
        format long
        MAXPRODUCT=(d1*d2*d3*d4*d5*d6*d7*d8*d9*d10*d11*d12*d13)
    end
end

    

