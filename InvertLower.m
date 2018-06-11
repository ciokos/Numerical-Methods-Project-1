function [LI] = InvertLower(L)
    n = length(L);
    LI = eye(n);
    for i = 1:n-1
        LI(i+1,i) = -L(i+1,i);
    end
    for i = 1:n-2
        LI(i+2,i) = L(i+1,i)*L(i+2,i+1)-L(i+2,i);
    end
    for k = 4:n
        for i = 1:k-2
            LI(k,i) = (-L(k,1:(k-1))*LI(1:(k-1),i))/L(k,k);
        end
    end
end

