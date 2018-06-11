M1=zeros(100);
M2=zeros(100);
for i=1:100
    A = full(gallery('tridiag',i+3,0.000002,0.001,0.000002));
    X = Invert(A);
    AA = inv(X);
    I = eye(i+3);
    a = norm(X*A-I)/(norm(A)*norm(X));
    M1(i) = a;
    M2(i) = i;
end
plot(M2,M1)