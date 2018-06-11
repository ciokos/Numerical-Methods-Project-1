finish=4;  
kontrol=1;
OK=0;
while kontrol~=finish,
    kontrol=menu('Testing program','Your matrix A','LDL decomposition','Inverse','FINISH');
    switch kontrol
        case 1
            OK=1;
            A=input('Your matrix A = ')
        case 2
            if OK
                [L,D,LT] = LDLFact(A);
                disp('L = '), disp(L)
                disp('D = '), disp(D)
                disp('LT = '), disp(LT)
            else disp('A is unknown')
            end
        case 3
             if OK
                 disp('Inverse of A:  '),disp(inv(A))
             else disp('   A is unknown ')
            end
        case 4
            disp('FINISH')
    end
end