%%Project Euler - Problem 1%%
clc;
clear all;
close all;

%%INPUT ARRAY FROM FILE
type P18.txt
fileID = fopen('P18.txt','r');
formatSpec = '%d ';
sizeA = [15 15];
A = fscanf(fileID,formatSpec,sizeA);
PATH=zeros(15,15);
fclose(fileID);
A=A'
PATH(1,1)=A(1,1);
for j=2:15 %%Build path limits
    for i=1:j
        if i==1
            i
            j
            A(j-1,i)
            A(j,i)
            PATH(j,i)=A(j,i)+PATH(j-1,i);
        end
        if i==j
            i
            j
            A(j-1,i-1)
            A(j,i)
            PATH(j,i)=A(j,i)+PATH(j-1,i-1)
            break
        end
    end
end
%% Populate longest path for each blank node
MAXPREV=0;
for j=3:15
    for i=2:j-1
        if PATH(j-1,i-1)>PATH(j-1,i)
            PATH(j,i)=PATH(j-1,i-1)+A(j,i)
        else
            PATH(j,i)=PATH(j-1,i)+A(j,i)
        end
    end
end
     max(PATH,[],2)   