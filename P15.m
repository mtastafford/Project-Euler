%%Project Euler - Problem 1%%
clc;
clear all;
close all;
%%%% Number of paths in a grid. (2x2 grid is like a 3x3 matrix)
%%%% Set matrix size, and possible routes from each node..
GRID=ones(21,21)
for i=2:21
    for j=2:21
        GRID(i,j)=GRID(i-1,j)+GRID(i,j-1);
    end
end

intArray = uint64(GRID)