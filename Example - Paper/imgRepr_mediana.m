function [imgRepr,m,n]=imgRepr_mediana(direccion,nombre,extension)
        
    a=dir([direccion '\' '/*.' extension]);
    numImagenes=size(a,1);
    [m,n,s]=size(im2double(imread([direccion '\' nombre ' (1).' extension])));
    imgRepr=zeros(m,n,s);
    for k=1:s
        B=zeros(m,n,numImagenes);
        for i=1:numImagenes
            text=[direccion '\' nombre ' (' num2str(i) ').' extension];
            Aux=im2double(imread(text));
            B(:,:,i)=Aux(:,:,k);   
        end
        imgRepr(:,:,k)=median(B,3);   
    end    
    imgRepr=im2uint8(imgRepr);

end