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
    

    A1=A-mean(A,2);
    [Ur,~,~]=svdCompact(A1);
    
    %for k=1:size(Ur,2)
    %    imshow(reshape(Ur(:,k),[256 256]),[])
    %    pause(0.5)
    %end

    %Coordenadas 
    Xv=Ur'*A1;

    %Nueva imagen
    if size(X,3)==1
        newIm=X;
    else
        newIm=rgb2gray(X);
    end
    f=newIm(:)-mean(A,2);

    XnewImg=Ur'*f;

    erroresCordenadas=vecnorm(Xv-XnewImg);

    [minErroresCordenadas,idx]=min(erroresCordenadas);
    
    %figure
    %stem(erroresCordenadas)

    k=idx(1);
    [k minErroresCordenadas(1)]
   
    text=[direccion '\' nombre ' (', num2str(k),').' extension];
    Y=imread(text);    

end