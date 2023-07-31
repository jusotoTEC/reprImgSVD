clc; clear; close all

numOption = 1;
if numOption == 1
    direccion='database_Flavia_256x256'; nombre='flavia'; extension='jpg';
else
    direccion='database_Bark_256x256'; nombre='bark'; extension='jpg';
end

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
title('Imagen Representativa - Media Aritmética')
subplot(2,3,2)
imshow(imgRepr2)
title('Imagen Representativa - Mediana')
subplot(2,3,3)
imshow(imgRepr3)
title('Imagen Representativa - Fermat-Weber')

subplot(2,3,4)
imshow(imgPrac1)
title('Imagen Práctica - Media Aritmética')
subplot(2,3,5)
imshow(imgPrac2)
title('Imagen Práctica - Mediana')
subplot(2,3,6)
imshow(imgPrac3)
title('Imagen Práctica - Fermat-Weber')
