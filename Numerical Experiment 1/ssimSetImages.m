function R=ssimSetImages(direccion,nombre,extension)

a=dir([direccion '\' '/*.' extension]);
numImg=size(a,1);
R=zeros(numImg,numImg);
    for i=1:numImg-1
        for j=i+1:numImg
            text_i=[direccion '\' nombre ' (', num2str(i),').' extension];
            text_j=[direccion '\' nombre ' (', num2str(j),').' extension];
            I_i=imread(text_i);
            I_j=imread(text_j);
            aux=ssim(I_i,I_j);
            R(i,j)=aux; R(j,i)=aux;
        end
    end
    
end
 