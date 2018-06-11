function [] = Errors(A)
    I = eye(size(A));
    X = Invert(A);
    AA = inv(X);
    cond_A = cond(A);
    RRE = norm(A*X-I)/(norm(A)*norm(X));
    LRE = norm(X*A-I)/(norm(A)*norm(X));
    error = norm(AA-A)/norm(A);
    disp('cond:')
    cond_A
    disp('right residual error:')
    RRE
    disp('left residual error:')
    LRE
    disp('error:')
    error
end

