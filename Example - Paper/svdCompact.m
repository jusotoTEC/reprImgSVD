function [U,S,V]=svdCompact(A)
    %svdCompact is an efficient method to compute the compact SVD   

    [m,n]=size(A);
    if m>n
        M1=A'*A;
        [V1,D]=eig(M1);
        y1=diag(D);
        const=n*max(y1)*eps;
        y2=(y1>const);
        rA=sum(y2); %rank of a matrix
        y3=y1.*y2;
        [s1,order]=sort(sqrt(y3),'descend');
        V2=V1(:,order);    
        V=V2(:,1:rA);
        S=diag(s1(1:rA));
        U=(1./(s1(1:rA))').*(A*V);
    else
        M1=A*A';
        [U1,D]=eig(M1);
        y1=diag(D);
        const=m*max(y1)*eps;
        y2=(y1>const);
        rA=sum(y2); %rank of a matrix
        y3=y1.*y2;
        [s1,order]=sort(sqrt(y3),'descend');
        U2=U1(:,order);    
        U=U2(:,1:rA);
        S=diag(s1(1:rA));
        V=(1./(s1(1:rA))').*(A'*U);
    end

end