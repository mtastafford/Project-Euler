%%Project Euler - Problem 1%%
clc;
clear all;
close all;
%%%% Collatz Algorithm. If even ==> n/2. If odd ==> n*3 + 1
NUMBER=0;
TRACK=zeros(1,1000);
SLOT=1;
MAXSLOT=1;
for i=2:999999
    SLOT=1;
    NUMBER=i;
    while NUMBER~=1
        TRACK(SLOT)=NUMBER;
        SLOT=SLOT+1;
        if mod(NUMBER,2)==0
            NUMBER=NUMBER/2;
        else
            NUMBER=(NUMBER*3)+1;
        end
    end
    if SLOT>MAXSLOT
        NUMBER=i
        MAXSLOT=SLOT
    end
end 
        

