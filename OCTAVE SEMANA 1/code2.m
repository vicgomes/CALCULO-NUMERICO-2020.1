%===============================================
%IFPB,JOÃO PESSOA,25/08/2020
%CURSO SUPERIOR DE ENGENHARIA ELÉTRICA
%LAB#02-MÉTODO DA SUBSTITUIÇÃO RETROATIVA
%AUTOR: PROF. PAULO HENRIQUE DA FONSECA SILVA
%===============================================

clc,clear all,close all

%disp('EXERCÍCIO 1');B=[[2 -1 -1 5];[3 1 5 4];[4 -1 -5 3]];N=3;
disp('EXERCÍCIO 2');B=[[1 1 2 3 0];[2 1 -1 -7 1];[3 1 -1 1 2];[4 1 3 -8 0]];N=4;
%disp('EXERCÍCIO 3');B=[[2 1 1 1 2 2];[3 -4 2 3 1 -3];[2 2 3 5 -1 4];[1 -1 -1 -1 -1 -1];[5 1 -1 -1 -4 4]];N=5;
disp('MATRIZ AUMENTADA DO SISTEMA ORIGINAL')
disp(B);
N1=N+1;MM=N-1;
for K=1:MM
  M=K+1;
  for I=M:N
    MULT=-B(I,K)/B(K,K);
    for J=K:N1
      B(I,J)=B(I,J)+MULT*B(K,J);
    end
  end
end
X(N)=B(N,N1)/B(N,N);
K=N-1;
for I=1:K
  L=N-I;
  X(L)=B(L,N1);
  M=L+1;
  for J=M:N
    X(L)=X(L)-B(L,J)*X(J);
  end
  X(L)=X(L)/B(L,L);
end
disp('MATRIZ AUMENTADA DO SISTEMA TRIANGULAR EQUIVALENTE')
disp(B)
disp('VETOR SOLUÇÃO')
disp(X)