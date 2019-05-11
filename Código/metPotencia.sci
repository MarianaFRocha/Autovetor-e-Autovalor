function metPotencia()
    
         A = [-1, -4, 0, -3;
              0, 2, 0, 0;
              1, 4, 2, 0;
              18, 10, 16, 1]
             
    e=0.0001
    
    y0=[1;1;1;1]
    
    disp(A)
    
    interacoes = 1 //Número de Interações
    erro=1 
    alphaAntigo=0;
    
    while (erro>e)  //adicionar uma quantidade max de interações
        disp(interacoes, "interacao")
        
        //Calculo do novo Z
        Z=A*y0
        disp(Z,"Z")
        
        //Calculo alpha 
        alpha=max(Z)
        disp(alpha, "alpha")
        
        //Calculo do novo Y
        y=(1/alpha)*Z
        disp(y,"Y normal")
     
        //Calculo erro
        erro = abs(alpha - alphaAntigo)
       // disp(erro, "Erro")
       
     //Normalização 
     
        somaY = sum(y)
        y=y/somaY;
        
        
        disp(y,"Y normalizado: ")        
        y0=y
        alphaAntigo = alpha
               
        
        interacoes=interacoes+1       
    end
    
   // autovalor=min(l)
   // disp(autovalor, "alpha(autovalor)")
    
endfunction
