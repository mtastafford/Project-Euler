clc;
clear all;
close all;
%% Step One - Write a Triangle Number Alogrithm Tn = SIGMA(n) for i=1->n
TRILIST=zeros(1,10000);
TRILIST(1)=1;
for i=2:1000000
    TRILIST(i)=TRILIST(i-1)+i;
end
%% Step Two - Test tri-num for # of factors. Stop after finding trinum w/ 500 factors
FAC_LIST=zeros(1,500);
SLOT=1;
TESTNUM=0;
WINNER=0;
for j=1:1000000
    SLOT=1;
    TESTNUM=TRILIST(j);
    for k=1:sqrt(TRILIST(j))
        if mod(TRILIST(j),k)==0
            FAC_LIST(SLOT)=k;
            SLOT=SLOT+1;
        end
        if (2*SLOT)>501
            WINNER=TRILIST(j)
            break
        end
    end
    if (2*SLOT)>501
        WINNER=TRILIST(j)
        break
    end
end
            
            