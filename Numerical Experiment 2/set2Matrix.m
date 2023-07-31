function X=set2Matrix(direccion,nombre,extension)

    %Images are represented as row of matrix X
    a=dir([direccion '\' '/*.' extension]);
    numImg=size(a,1);    
    X=[];    
    for i=1:numImg
       Aux=im2double(imread([direccion,'\', nombre, ' (', num2str(i), ').', extension]));
       X=[X; (Aux(:)).'];
    end
    
end