clc; clear; close all

%Most representative image in the dataset
z1 = [4 4 2 1 7 1 3 1 4 4 8 1 4 10 4 3 5 4 2 4 3 7 3 7 3 4 7 7 1 1 4 3 7 3 4 4 10 4 7 7 7 5 3 2 10 4 1 7 8 1];
x1=1:10;
y1=zeros(1,10);
for k=1:10   
    aux1=k;
    aux2=sum(z1==aux1);
    y1(k)=aux2/length(z1)*100;    
end
figure
bar(x1,y1)
title('Most representative image in the dataset')

%Least representative image in the dataset
z2 = [5 8 9 5 6 8 8 6 5 5 1 5 6 2 5 9 9 5 10 5 9 2 1 5 9 9 5 9 9 7 6 6 9 1 1 5 5 5 1 6 4 9 1 9 5 4 9 1 9 8];
x2=1:10;
y3=zeros(1,10);
for k=1:10   
    aux1=k;
    aux2=sum(z2==aux1);
    y2(k)=aux2/length(z2)*100;    
end
figure
bar(x2,y2)
title('Least representative image in the dataset')

