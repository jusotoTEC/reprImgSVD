function Y=imgPracSVD(X,direccion,nombre,extension)

    a=dir([direccion '\' '/*.' extension]);
    numImg=size(a,1);
    A=[];
    for i=1:numImg
        text=[direccion '\' nombre ' (', num2str(i),').' extension];
        Aux1=imread(text);
        if size(Aux1,3)==1
            Aux=im2double(Aux1);
        else
            Aux=im2double(rgb2gray(Aux1));
        end
        A=[A Aux(:)];
    end
    
    A1=A;
    [Ur,~,~]=svdCompact(A1);
    %Coordenadas 
    Xv=Ur'*A1;

    %Nueva imagen
    if size(X,3)==1
        newIm=X;
    else
        newIm=rgb2gray(X);
    end
    f=newIm(:);
    XnewImg=Ur'*f;
    erroresCordenadas=vecnorm(Xv-XnewImg);
    [~,idx]=min(erroresCordenadas);
    k=idx(1);     
    text=[direccion '\' nombre ' (', num2str(k),').' extension];
    Y=imread(text);    

end