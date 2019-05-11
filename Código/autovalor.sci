function y=autovalor()
        
 A = [-1, -4, 0, -3;
              0, 2, 0, 0;
              1, 4, 2, 0;
              18, 10, 16, 1]

    y=spec(A)
    [Vetor,Valor] = spec(A)
    
    disp(A, "matriz")
    disp(Valor, "Autovalor")
    disp(Vetor, "Autovetor")
    
endfunction
