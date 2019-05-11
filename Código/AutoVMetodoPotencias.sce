clear();

erro = 0.0001

A = [0  1/2 1/3 1   0;
    1   0   1/3 0   1/3;
    0   1/2 0   0   1/3;
    0   0   0   0   1/3;
    0   0   1/3 0   0]

yna = [0; 0; 1; 0; 0];

k = 0;

disp(k)
Z = A*yna
disp(Z);
alfa = max(Z);
yn = (1/alfa)*Z

lambda1 = Z\yn
lambda2 = 0

yn = yn/sum(yn);

k = k + 1

disp(yna);
disp(yn);

while(min(abs(lambda1-lambda2)) > erro )
    disp(k)
    yna = yn
    Z = A*yna
    disp("Z");
    disp(Z);
    alfa = max(Z);
    yn = (1/alfa)*Z
    
    lambda2 = lambda1
    lambda1 = Z\yn
    
    //yn = yn/sum(yn);
    
    k = k + 1
    disp("Y");
    disp(yn);
end
yn = yn/sum(yn);
disp("fim Y");
    disp(yn);
disp("Autovalor obtido")
disp(max(Z))

/*
disp("spec");

[vetor,valor] = spec(A);

disp(A);
disp(valor);
disp(vetor/sum(vetor));
*/
