% Matlab Code of k-means method for selecting a representative image from a dataset
% Matlab code implemented by Pablo Soto-Quiros (https://www.tec.ac.cr/juan-pablo-soto-quiros) - Email: jusoto@tec.ac.cr

clc; clear; close all
rowImages=256; columnImages=256;

direccion='database_faces_256x256';   nombre='faces';   extension='jpg'; %10 images
X=set2Matrix(direccion,nombre,extension);
k=1;
[~,C] = kmeans(X,k);
%Centroides of each set
A=C(1,:);
C=reshape(A,[256 256 3]);
subplot(1,2,1)
imshow(C)
title('Centroid')
[~,j]=min(vecnorm((X-A)'));
Im=reshape(X(j,:),[256 256 3]);
subplot(1,2,2)
imshow(Im)
title('Representative image')