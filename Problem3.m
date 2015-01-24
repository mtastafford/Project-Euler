clc;
clear all;
close all;
%% Step One - LIST ALL NUMBERS UP TO NUMBER OF INTEREST
NUM=600851475143;
MAXTEST=1;
PRIMELIST=zeros(1000,1);
FACTORLIST=zeros(1000,1);
FACSLOT=1;
%% Step two - Determine factors of N.O.I
for i=1:ceil(sqrt(NUM))
    if mod(NUM,i)==0
        FACTORLIST(FACSLOT)=i
        FACSLOT=FACSLOT+1
    end
end

%% STEP THREE - Determine if factors are prime
 SLOT=1;
 PASS=1;
 PRIMESUM=0;
 for i=1:2000000
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
         PRIMESUM=PRIMESUM+CHECK;
     end
 end


        