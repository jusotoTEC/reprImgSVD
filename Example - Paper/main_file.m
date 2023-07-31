%Numerical Example of conference paper submitted tohe 5th IEEE International Conference on BioInspired Processing, BIP 2023.
%Paper: A method for selecting a representative image of a dataset based on the singular value decomposition
%Author: 
%       Pablo Soto-Quiros (https://www.tec.ac.cr/juan-pablo-soto-quiros) - Email: jusoto@tec.ac.cr
%       Geovanni Figueroa-Mata (https://www.tec.ac.cr/geovanni-figueroa-mata) - Email: gfigueroa@tec.ac.cr
%       Nelson Zamora-Villalobos (https://www.tec.ac.cr/nelson-zamora-villalobos) - Email: nzamora@tec.ac.cr   

clc; clear; close all

direccion='database_Number_4'; nombre='image'; extension='jpg';

% ********Arithmetic mean********
imgRepr1=imgRepr_mediaAritmetica(direccion,nombre,extension);
imgPrac1=imgPracSVD(im2double(imgRepr1),direccion,nombre,extension);

% ********Median********
imgRepr2=imgRepr_mediana(direccion,nombre,extension);
imgPrac2=imgPracSVD(im2double(imgRepr2),direccion,nombre,extension);

% ********Geometric Median********'
imgRepr3=imgRepr_medianaGeometrica(direccion,nombre,extension);
imgPrac3=imgPracSVD(im2double(imgRepr3),direccion,nombre,extension);

figure
subplot(2,3,1)
imshow(imgRepr1)
title('I_T - Arithmetic mean')
subplot(2,3,2)
imshow(imgRepr2)
title('I_T - Median')
subplot(2,3,3)
imshow(imgRepr3)
title('I_T - Geometric median')

subplot(2,3,4)
imshow(imgPrac1)
title('I_P - Arithmetic mean')
subplot(2,3,5)
imshow(imgPrac2)
title('I_P - Median')
subplot(2,3,6)
imshow(imgPrac3)
title('I_P - Geometric median')
