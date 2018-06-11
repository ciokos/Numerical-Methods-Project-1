function[DI] = InvertDiagonal(D)
%inverts a diagonal matrix
    [row, col] = size(D);
    DI = zeros(col, row);
    for i = 1:col
        DI(i,i) = 1/D(i,i);
    end
end

