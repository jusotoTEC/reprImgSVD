%Numerical Example of conference paper submitted tohe 5th IEEE International Conference on BioInspired Processing, BIP 2023.
%Paper: A method for selecting a representative image of a dataset based on the singular value decomposition
%Author: 
%       Pablo Soto-Quiros (https://www.tec.ac.cr/juan-pablo-soto-quiros) - Email: jusoto@tec.ac.cr
%       Geovanni Figueroa-Mata (https://www.tec.ac.cr/geovanni-figueroa-mata) - Email: gfigueroa@tec.ac.cr
%       Nelson Zamora-Villalobos (https://www.tec.ac.cr/nelson-zamora-villalobos) - Email: nzamora@tec.ac.cr   

clc; clear; close all

direccion='database_Faces_256x256'; nombre='faces'; extension='jpg';

% ********Media Aritmetica********
imgRepr1=imgRepr_mediaAritmetica(direccion,nombre,extension);
imgPrac1=imgPracSVD(im2double(imgRepr1),direccion,nombre,extension);

% ********Mediana********
imgRepr2=imgRepr_mediana(direccion,nombre,extension);
imgPrac2=imgPracSVD(im2double(imgRepr2),direccion,nombre,extension);

% ********Fermat-Weber********'
imgRepr3=imgRepr_medianaGeometrica(direccion,nombre,extension);
imgPrac3=imgPracSVD(im2double(imgRepr3),direccion,nombre,extension);

figure
subplot(2,3,1)
imshow(imgRepr1)
title('I_T - Media Aritmética')
subplot(2,3,2)
imshow(imgRepr2)
title('I_T - Mediana')
subplot(2,3,3)
imshow(imgRepr3)
title('I_T - Fermat-Weber')

subplot(2,3,4)
imshow(imgPrac1)
title('I_P - Media Aritmética')
subplot(2,3,5)
imshow(imgPrac2)
title('I_P - Mediana')
subplot(2,3,6)
imshow(imgPrac3)
title('I_P - Fermat-Weber')
