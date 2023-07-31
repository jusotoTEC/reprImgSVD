function [imgRepr,m,n]=imgRepr_medianaGeometrica(direccion,nombre,extension)
        
    a=dir([direccion '\' '/*.' extension]);
    numImagenes=size(a,1);
    [m,n,s]=size(im2double(imread([direccion '\' nombre ' (1).' extension])));
    B=zeros(m*n*s,numImagenes);
    for i=1:numImagenes
        text=[direccion '\' nombre ' (' num2str(i) ').' extension];
        Aux1=im2double(imread(text));
        B(:,i)=Aux1(:);   
    end
    w=ones(numImagenes,1);
    x0=valor_inicial(B,w);
    imgPrototipo=metodo_weiszfeld(B,w,x0,10e-12);
    imgRepr=im2uint8(reshape(imgPrototipo,[m,n,s]));
    
end

function x0=valor_inicial(B,w)
  % Valor inicial de los m�todos iterativos que aproxima la soluci�n del
  % problema de Fermat-Weber
  % Sintaxis: x0=valor_inicial(B,w)
  % Entrada:  B = [b_1 b_2 ... b_p] es una matriz de tama�o m x p
  %           w = [w_1 w_2 ... w_p] es un vector de tama�o p
  % Salida:  x0 = vector de tama�o m
  % Referencia: - Amir Beck and Shoham Sabach. Weiszfelds method: Old and new
  %               results. Journal of Optimization Theory and Applications,
  %               164(1):140, 2015.
    p=size(B,2);
    f_b=zeros(p,1);
    for i=1:p
        f_b(i)=funcion_objetivo(B,w,B(:,i));
    end
    [~,j]=min(f_b);
    Rj=R_j(B,w,j);
    dj=(-1/norm(Rj))*Rj;
    Lj=L_j(B,w,j);
    alpha_j=(norm(Rj)-w(j))/Lj;
    x0=B(:,j)+alpha_j*dj;
end

function f=funcion_objetivo(B,w,x)
  % Funci�n objetivo del problema Fermat-Weber evaluado en x
  % Sintaxis: f=funcion_objetivo(B,w,x)
  % Entrada:  B = [b_1 b_2 ... b_p] es una matriz de tama�o m x p
  %           w = [w_1 w_2 ... w_p] es un vector de tama�o p
  %           x = vector de tama�o m
  % Salida:   f = n�mero no negativo. 
  % Referencia: - Amir Beck and Shoham Sabach. Weiszfelds method: Old and new
  %               results. Journal of Optimization Theory and Applications,
  %               164(1):140, 2015.
  
  p=size(B,2);
  f=0;
  for i=1:p
    f=f+w(i)*norm(x-B(:,i));
  end
end

function Rj=R_j(B,w,j)
  % Operador Rj in Section 7.1 in paper "Weiszfelds method: Old and new
  % results"
  % Sintaxis: Rj=R_j(B,w,j)
  % Input:  B = [b_1 b_2 ... b_p] is a m x p matrix
  %         w = [w_1 w_2 ... w_p] is a vector of size p
  %         j = integer number between 1 and p
  % Output: Rj = vector of size m
  % Reference: - Amir Beck and Shoham Sabach. Weiszfelds method: Old and new
  %            results. Journal of Optimization Theory and Applications,
  %            164(1):140, 2015.
  p=size(B,2);
  Rj=0;
  for i=1:p
    if i~=j
      Rj=Rj+(w(i)/norm(B(:,j)-B(:,i)))*(B(:,j)-B(:,i));
    end
  end
end

function Lj=L_j(B,w,j)
  % Operador L en la ecuaci�n (12) en el art�culo "Weiszfelds method: Old 
  % and new results", cuando x=b_j
  % Sintaxis: Lj=L_j(B,w,j)
  % Entrada:  B = [b_1 b_2 ... b_p] es una matriz de tama�o m x p
  %           w = [w_1 w_2 ... w_p] es un vector de tama�o p  
  %           j = entero positivo entre 1 y p
  % Salida: Lj = constante positiva
  % Referencia: - Amir Beck and Shoham Sabach. Weiszfelds method: Old and new
  %               results. Journal of Optimization Theory and Applications,
  %               164(1):140, 2015.
  
  p=size(B,2);
  Lj=0;
  for i=1:p
    if i~=j
      Lj=Lj+(w(i)/norm(B(:,j)-B(:,i)));
    end
  end
end

function [x,error,k]=metodo_weiszfeld(B,w,x0,tol)
  % M�todo Weiszfeld
  % Sintaxis: [x,error,k]=metodo_weiszfeld(B,w,x0,tol)
  % Entrada:  B = [b_1 b_2 ... b_p] es una matriz de tama�o m x p
  %           w = [w_1 w_2 ... w_p] es un vector de tama�o p
  %           x0 = vector inicial de tama�o m
  %           tol = constante positiva 
  % Salida:      x = [x_1 x_2 ... x_p] aproximaci�n a la soluci�n del problema 
  %                  de Fermat Weber
  %          error = error asociado al problema, donde ||x^(k+1)-x^(k)||<tol
  %              k = iteraciones
  % Referencias: - Endre Weiszfeld. Sur le point pour lequel la somme des
  %                distances de n points donnes est minimum. Tohoku Mathematical
  %                Journal, First Series, 43:355386, 1937
  %              - Simone Gorner and Christian Kanzow. On Newtons method for
  %                the Fermat-Weber location problem. Journal of Optimization
  %                Theory and Applications, 170(1):107118, 2016

  p=size(B,2);
  f_b=zeros(p,1);
  for i=1:p
      f_b(i)=funcion_objetivo(B,w,B(:,i));
  end
  [~,j]=min(f_b);
  nRj=norm(R_j(B,w,j));
  if nRj<=w(j)
    x=B(:,j);
    error=0;
  else
    error=tol+1;
    k=0;
    x=x0;
    while and(error>tol,k<=10000)
      alpha=0;
      y=0;
      for i=1:p
          aux=w(i)/norm(x-B(:,i));
          alpha=alpha+aux;
          y=y+aux*B(:,i);
      end
      x_n=(1/alpha)*y;
      error=norm(x_n-x);
      x=x_n;
      k=k+1;
    end
  end
end
