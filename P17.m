%%Project Euler - Problem 1%%
clc;
clear all;
close all;
%%%% Number of paths in a grid. (2x2 grid is like a 3x3 matrix)
%%%% Set matrix size, and possible routes from each node..
SINGLECOUNT=0;
TENCOUNT=0;
HUNCOUNT=0;
TEN=zeros(1,10);
TEN(1)=3;TEN(2)=3;TEN(3)=5;TEN(4)=4;TEN(5)=4;
TEN(6)=3;TEN(7)=5;TEN(8)=5;TEN(9)=4;TEN(10)=3;
NINETY=zeros(1,10);
NINETY(1)=0;NINETY(2)=6;NINETY(3)=6;NINETY(4)=5;NINETY(5)=5;
NINETY(6)=5;NINETY(7)=7;NINETY(8)=6;NINETY(9)=6;NINETY(10)=0;
HUNDRED=7;AND=3;THOUSAND=8;
for i=1:9
    SINGLECOUNT=SINGLECOUNT+TEN(i);%%1->9
end
TEENS=3+6+6+8+8+7+7+9+8+8+6 %%10->20
for i=2:9 %%21-->99
    TENCOUNT=TENCOUNT+NINETY(i)*9+SINGLECOUNT+NINETY(i+1)
end
UNDERHUN=TENCOUNT+TEENS+SINGLECOUNT%%%0-->199 counted;
%%%101-199 (1-99)*ONEHUNDREDAND
for i=1:9
    HUNCOUNT=HUNCOUNT+99*(TEN(i)+HUNDRED+AND)+UNDERHUN;
end
SINGLECOUNT %%36-characters in words one->nine
UNDERHUN
HUNCOUNT
NAMES=SINGLECOUNT+9*HUNDRED %%correct.. one hundred, two hundred, etc.
THOUSAND=TEN(1)+THOUSAND %% correct... one thousand
TOTAL=UNDERHUN+HUNCOUNT+NAMES+THOUSAND