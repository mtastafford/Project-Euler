%%Project Euler - Problem 1%%
clc;
clear all;
close all;
%%%% Number of paths in a grid. (2x2 grid is like a 3x3 matrix)
%%%% Set matrix size, and possible routes from each node..
x=1000
y=0;
number=sym(2^x)
n=char(number);
for i=1:length(n)
    y=y+str2double(n(i))
end
    
