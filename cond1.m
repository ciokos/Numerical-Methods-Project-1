function [answer] = cond1(A)
%cond1 returns product of 1-norm of matrix A and 1-norm of its
%inverse
%The argument matrix A is assumed to be a tridiagonal, symmetric positive
%definite.
%The inverse of the matrix is calculated using LDLT decomposition method.

AI = Invert(A);
answer = FirstNorm(A)*FirstNorm(AI);
end