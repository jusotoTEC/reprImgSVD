% Matlab Code of k-means method for selecting a representative image from a dataset
% Matlab code implemented by Pablo Soto-Quiros (https://www.tec.ac.cr/juan-pablo-soto-quiros) - Email: jusoto@tec.ac.cr

clc; clear; close all
rowImages=256; columnImages=256;

direccion1='database_Flavia_256x256';   nombre1='flavia';   extension1='jpg'; %25 images
direccion2='database_Bark_256x256';     nombre2='bark';     extension2='jpg'; %65 images
X1=set2Matrix(direccion1,nombre1,extension1);
X2=set2Matrix(direccion2,nombre2,extension2);
X=[X1;X2];
k=2;
[idx,C] = kmeans(X,k);
Y1=[]; Y2=[];
for j=1:length(idx)
    if idx(j)==1
        Y1=[Y1; X(j,:)];
    elseif idx(j)==2
        Y2=[Y2; X(j,:)];
    end
end
%Centroides of each set
A1=C(1,:);
C1=reshape(A1,[256 256 3]);
subplot(2,2,1)
imshow(C1)
title('Centroid')
A2=C(2,:);
C2=reshape(A2,[256 256 3]);
subplot(2,2,2)
imshow(C2)
title('Representative image')
%Image close to centroide
[~,j1]=min(vecnorm((Y1-A1)'));
Im1=reshape(Y1(j1,:),[256 256 3]);
subplot(2,2,3)
imshow(Im1)
title('Centroid')
[~,j2]=min(vecnorm((Y2-A2)'));
Im2=reshape(Y2(j2,:),[256 256 3]);
subplot(2,2,4)
imshow(Im2)
title('Representative image')