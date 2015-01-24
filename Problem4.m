clc;
clear all;
close all;
%% Step One - LIST ALL POSSIBLE 3 digit factors
x1=zeros(1,900);
x2=zeros(1,900);
SLOT=1;
MAX=999*999;
FRONT=0;FA=0;FB=0;FC=0;BA=0;BB=0;BC=0;
PLIST=zeros(1,1000);
FAC1=zeros(1,300);
FAC2=zeros(1,300);
MULT=0;
TEST=0;
FACSLOT=1;


for i=100:999
    x1(SLOT)=i;
    x2(SLOT)=i;
    SLOT=SLOT+1;
end
SLOT=1;
for i=1:999800
    if MAX>99999
        %%FIND EACH INDIVIDUAL DIGIT
        MAX
        
        FRONT=fix(MAX/1000);
        FA=fix(FRONT/100);
        FB=fix((FRONT-100*FA)/10);
        FC=FRONT-FA*100-FB*10;
        
        BACK=MAX-FRONT*1000;
        BC=fix(BACK/100);
        BB=fix((BACK-100*BC)/10);
        BA=BACK-BC*100-BB*10;
        %%TEST FOR PALINDROME
        if FA==BA & FB==BB & FC==BC

            
            %%FIND FACTORS IF TRUE
            for j=1:900
                for k=1:900
                    MULT=(x1(j))*(x2(k));
                    TEST=MAX/MULT;
                    if TEST==1
                        FAC1(FACSLOT)=x1(j)
                        FAC2(FACSLOT)=x2(k)
                        FACSLOT=FACSLOT+1;
                        PLIST(SLOT)=MAX;
                        SLOT=SLOT+1;
                    end
                end
            end
        end
    end
    MAX=MAX-1
end
        