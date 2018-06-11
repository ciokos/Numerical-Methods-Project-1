function [AI] = Invert(A)
    [L,D] = LDLFact(A);
    LI = InvertLower(L);
    LIT = MyTranspose(LI);
    DI = InvertDiagonal(D);

    AI = LIT*DI*LI;
end

