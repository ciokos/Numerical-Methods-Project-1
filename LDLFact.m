function[L,D,LT] = LDLFact(A)
   % A is a symmetric, tridiagonal matrix
   % factor A such that A=LDL^T
   % L a lower triangular matrix with 1 for all its diagonal entries
   [n,m]=size(A);
   if n~=m
       error("matrix is not square");
   end
   L = eye(n);
   Diag = zeros(n,1);
   Diag(1)=A(1,1);
   L(2,1)=A(2,1)/Diag(1);
   for i=2:n
       Diag(i)=A(i,i)-L(i,i-1).^2*Diag(i-1);
       if i~=n
            L(i+1,i)=(A(i+1,i)-L(i+1,i-1).*L(i,i-1)*Diag(i-1))/Diag(i);
       end
   end
   D = zeros(n,n);
   for i = 1:n
       D(i,i)=Diag(i);
   end
   LT = MyTranspose(L);
end


