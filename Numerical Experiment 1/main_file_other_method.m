% Matlab Code of method proposed in the paper "Selecting a representative image from a collection of 
%   images by solving a system of non-linear algebraic equations"
% Iterative method to solve system of non-linear equations 
%   is taken from paper "Newton-like methods for solving underdetermined nonlinear equations with nondifferentiable terms"
% Matlab code implemented by Pablo Soto-Quiros (https://www.tec.ac.cr/juan-pablo-soto-quiros) - Email: jusoto@tec.ac.cr


clc; clear; close all
direccion='database_Faces_256x256'; nombre='faces'; extension='jpg';
R=ssimSetImages(direccion,nombre,extension);
ObjetiveFunction_Jacobian(R);
N=size(R,1);
numVariablesTotal=N*(N-1);
xk=rand(numVariablesTotal,1);
iterMax=1000;
tol=1e-10;
for k=1:iterMax
    %Evaluate xk in objectiveFunction and jacobianMatrix  
    aux=cell(numVariablesTotal,1);
    for j=1:numVariablesTotal
        aux{j}=xk(j);
    end
    Fk=objectiveFunction(aux{:});      
    Jk=jacobianMatrix(aux{:});    
    xk_n=xk-mldivide(Jk,Fk);    
    error=norm(xk_n-xk);
    if error<tol
        xk=xk_n;
        break
    end
    xk=xk_n;
end
S=reshape(xk,[N-1, N]);
Smean=mean(S,2);
vect=vecnorm(S-Smean);
[~,numImg]=min(vect);
A=imread([direccion,'\', nombre, ' (', num2str(numImg), ').', extension]);
imshow(A)
title(['Representative Image # = ', num2str(numImg)])


