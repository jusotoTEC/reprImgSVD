function ObjetiveFunction_Jacobian(R)    

    N=size(R,1); 
    numVariables=N-1;
    X=sym(zeros(N,numVariables));
    varVec=[];
    for i=1:N
        for j=1:numVariables
            X(i,j)=sym(['x_',num2str(i),'_',num2str(j)]);
        end
        varVec=[varVec X(i,:)];
    end
    numEquations=N*numVariables/2;
    F=sym(zeros(numEquations,1));
    r=0;
    for i=1:N-1
        for j=i+1:N
            Aux=0;
            r=r+1;
            for k=1:numVariables
                Aux=Aux+(X(i,k)-X(j,k))^2;
            end
            F(r)=Aux-R(i,j)^2;
        end
    end
    J=jacobian(F,varVec);
    matlabFunction(F,'file','objectiveFunction.m');
    matlabFunction(J,'file','jacobianMatrix.m');   
    
end
