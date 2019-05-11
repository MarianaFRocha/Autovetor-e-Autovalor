clear;
format(17);//Dezesete casas decimais

//Enttrada:
A = [4 4 -3;0 8 1;0 2 -1]
//Fim entrada


n=size(A)(1)
lambda=poly(0,'lambda'); //denota a variável lambda como simbolica para ser utilizada em um polinomio

D=det(A-lambda*eye(n,n)) // obtem um polinômio do metodo de transformações lineares para autovalores

//autovalores=round(roots(D)) //obtem as raízes e arredonda para o próximo inteiro
autovalores = roots(D)

disp(D)
disp(autovalores)

for k = 1:n //Para cada autovalor é gerada a matriz que representa o sistema linear a ser resolvido
for i = 1:n
    for j = 1:n
      if (i==j)
        Vetor (i,j)=A(i,j)-autovalores(k); //Subtraindo o autovalor da diagonal principal 
       else
         Vetor(i,j)=A(i,j);     
      end
    end
end
disp("Matriz do sistema linear do autovalor:")
disp(autovalores(k))
disp(Vetor)
disp("Matriz escalonada do sistema linear:")
disp(rref(Vetor))//possibilita o escalonamento da matriz 
end





