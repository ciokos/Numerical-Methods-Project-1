function[T] = MyTranspose(A)
%my implementation of transposition
    [row, col] = size(A);
    T = zeros(col, row);
    iX = 1;
    for iCol = 1:col
        iY = iCol;
        for iRow = 1:row
            T(iY) = A(iX);
            iY = iY + col;
            iX = iX + 1;
        end
    end
end

