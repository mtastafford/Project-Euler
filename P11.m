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
type P11.txt
fileID = fopen('P11.txt','r');
formatSpec = '%d ';
sizeA = [20 20];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);
A=A'
MAXPROD=0;
TEMP_RIGHT=0;TEMP_LEFT=0;TEMP_UP=0;TEMP_DOWN=0;
DIAG_UP_R=0;DIAG_UP_L=0;DIAG_DOWN_R=0;DIAG_DOWN_L=0;
BREAK=1;
COUNT=0;
LIST=zeros(8,1);
for i=1:20 %%i is in direction of rows
    for j=1:20 %%j is in direction of columns
        if j<=3 & i<=3 %%check DOWN, RIGHT, DIAG_DOWN_R
            TEMP_RIGHT=A(i,j)*A(i,j+1)*A(i,j+2)*A(i,j+3);
            TEMP_DOWN=A(i,j)*A(i+1,j)*A(i+2,j)*A(i+3,j);
            DIAG_DOWN_R=A(i,j)*A(i+1,j+1)*A(i+2,j+2)*A(i+3,j+3);
        end
        if j>=18 & i<=3 %%check DOWN, LEFT, DIAG_DOWN_L
            TEMP_LEFT=A(i,j)*A(i,j-1)*A(i,j-2)*A(i,j-3);
            TEMP_DOWN=A(i,j)*A(i+1,j)*A(i+2,j)*A(i+3,j);
            DIAG_DOWN_L=A(i,j)*A(i+1,j-1)*A(i+2,j-2)*A(i+3,j-3);
        end
        if j<=3 & i>=18 %%check UP, RIGHT, DIAG_UP_R
            TEMP_RIGHT=A(i,j)*A(i,j+1)*A(i,j+2)*A(i,j+3);
            TEMP_UP=A(i,j)*A(i-1,j)*A(i-2,j)*A(i-3,j);
            DIAG_UP_R=A(i,j)*A(i-1,j+1)*A(i-2,j+2)*A(i-3,j+3);
        end
        if j>=18 & i>=18 %%check UP, LEFT, DIAG_UP_L
            TEMP_LEFT=A(i,j)*A(i,j-1)*A(i,j-2)*A(i,j-3);
            TEMP_UP=A(i,j)*A(i-1,j)*A(i-2,j)*A(i-3,j);
            DIAG_UP_L=A(i,j)*A(i-1,j-1)*A(i-2,j-2)*A(i-3,j-3);
        end
        if i<=3 & j>3 & j<18 %%CHECK DOWN, LEFT, RIGHT, DIAG_D_L, DIAG_D_R
            TEMP_LEFT=A(i,j)*A(i,j-1)*A(i,j-2)*A(i,j-3);
            TEMP_RIGHT=A(i,j)*A(i,j+1)*A(i,j+2)*A(i,j+3);
            TEMP_DOWN=A(i,j)*A(i+1,j)*A(i+2,j)*A(i+3,j);
            DIAG_DOWN_L=A(i,j)*A(i+1,j-1)*A(i+2,j-2)*A(i+3,j-3);
            DIAG_DOWN_R=A(i,j)*A(i+1,j+1)*A(i+2,j+2)*A(i+3,j+3);
        end
        if i>=18 & j>3 & j<18 %%CHECK UP, LEFT, RIGHT, DIAG_U_L, DIAG_U_R
            TEMP_LEFT=A(i,j)*A(i,j-1)*A(i,j-2)*A(i,j-3);
            TEMP_RIGHT=A(i,j)*A(i,j+1)*A(i,j+2)*A(i,j+3);
            TEMP_UP=A(i,j)*A(i-1,j)*A(i-2,j)*A(i-3,j);
            DIAG_UP_L=A(i,j)*A(i-1,j-1)*A(i-2,j-2)*A(i-3,j-3);
            DIAG_UP_R=A(i,j)*A(i-1,j+1)*A(i-2,j+2)*A(i-3,j+3);
        end
        if j<=3 & i>3 & i<18 %%CHECK UP, DOWN, RIGHT, DIAG_U_R, DIAG_D_R
            TEMP_RIGHT=A(i,j)*A(i,j+1)*A(i,j+2)*A(i,j+3);
            TEMP_DOWN=A(i,j)*A(i+1,j)*A(i+2,j)*A(i+3,j);
            TEMP_UP=A(i,j)*A(i-1,j)*A(i-2,j)*A(i-3,j);
            DIAG_DOWN_R=A(i,j)*A(i+1,j+1)*A(i+2,j+2)*A(i+3,j+3);
            DIAG_UP_R=A(i,j)*A(i-1,j+1)*A(i-2,j+2)*A(i-3,j+3);
        end
        if j>=18 & i>3 & i<18 %%CHECK UP, DOWN, LEFT, DIAG_U_L, DIAG_D_L
            TEMP_LEFT=A(i,j)*A(i,j-1)*A(i,j-2)*A(i,j-3);
            TEMP_DOWN=A(i,j)*A(i+1,j)*A(i+2,j)*A(i+3,j);
            TEMP_UP=A(i,j)*A(i-1,j)*A(i-2,j)*A(i-3,j);
            DIAG_DOWN_L=A(i,j)*A(i+1,j-1)*A(i+2,j-2)*A(i+3,j-3);
            DIAG_UP_L=A(i,j)*A(i-1,j-1)*A(i-2,j-2)*A(i-3,j-3);
        end
        if i>3 & i<18 & j>3 &j<18 %% CHECK U, D, L, R, DUR, DUL, DDR, DDL
            TEMP_LEFT=A(i,j)*A(i,j-1)*A(i,j-2)*A(i,j-3);
            TEMP_DOWN=A(i,j)*A(i+1,j)*A(i+2,j)*A(i+3,j);
            TEMP_UP=A(i,j)*A(i-1,j)*A(i-2,j)*A(i-3,j);
            TEMP_RIGHT=A(i,j)*A(i,j+1)*A(i,j+2)*A(i,j+3);
            DIAG_DOWN_L=A(i,j)*A(i+1,j-1)*A(i+2,j-2)*A(i+3,j-3);
            DIAG_UP_L=A(i,j)*A(i-1,j-1)*A(i-2,j-2)*A(i-3,j-3);
            DIAG_DOWN_L=A(i,j)*A(i+1,j-1)*A(i+2,j-2)*A(i+3,j-3);
            DIAG_DOWN_R=A(i,j)*A(i+1,j+1)*A(i+2,j+2)*A(i+3,j+3);
        end
        LIST(1)=TEMP_LEFT;LIST(2)=TEMP_RIGHT;LIST(3)=TEMP_UP;LIST(4)=TEMP_DOWN;
        LIST(5)=DIAG_UP_R;LIST(6)=DIAG_UP_L;LIST(7)=DIAG_DOWN_L;LIST(8)=DIAG_DOWN_R;
        if max(LIST)>MAXPROD
            i=i
            j=j
            MAXPROD=max(LIST)
        end
        LIST=zeros(1,8);
    end
end

