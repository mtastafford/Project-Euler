clc;
clear all;
close all;
%% Step One - LIST ALL NUMBERS UP TO NUMBER OF INTEREST

MAXTEST=1;
PRIMELIST=zeros(1000,1);



%% STEP THREE - Determine if factors are prime
 SLOT=1;
 PASS=1;
 double PRIMESUM;
 PRIMESUM=0;
 for i=1:10
     PASS=1;
     CHECK=i;
     if mod(sqrt(CHECK),1)~=0
         MAXTEST=ceil(sqrt(CHECK));
     else
         MAXTEST=sqrt(CHECK);
     end
     for j=1:MAXTEST
         mod(CHECK,j);
         if mod(CHECK,j)==0 & j~=1
             PASS=0;
             break
         end
     end
     if PASS==1
         PRIMELIST(SLOT)=CHECK;
         SLOT=SLOT+1;
         CHECK
         PRIMESUM=PRIMESUM+CHECK
     end
 end
format long
PRIMESUM=PRIMESUM

        