clc;
clear all;
close all;
%% Step One - MAKE A LIST OF NUMBERS
PRIMELIST=zeros(1,10002);
PRIMELIST(1)=2;
SLOT=2;
TRIP=1;
%% Step Two - CHECK IF N IS DIVISIBLE BY ANYTHING OTHER THAN 1 AND N (OR 2 TO N-1) & MAKE A LIST
for i=3:30000000
    TRIP=1;
    for j=1:sqrt(i)
        i
        j
        mod(i,j)
        if mod(i,j)==0 & j~=1
            TRIP=0
            break
        end
    end
    if TRIP==1
        PRIMELIST(SLOT)=i;
        SLOT=SLOT+1;
    else
        TRIP=1;
    end
    if SLOT==10002
        break
    end
end

            
            
