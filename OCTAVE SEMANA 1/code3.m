%===============================================
%IFPB,JO�O PESSOA,25/08/2020
%CURSO SUPERIOR DE ENGENHARIA EL�TRICA
%LAB#02-M�TODO DA SUBSTITUI��O RETROATIVA
%AUTOR: PROF. PAULO HENRIQUE DA FONSECA SILVA
%===============================================

clc,clear all,close all
K=100;EPSILON=1E-6;
x1(1)=0;x2(1)=0;x3(1)=0;epsilon(1)=0;
for k=1:K
  x1(k+1)=(3+x2(k)-2*x3(k))/2;
  x2(k+1)=(4-x1(k)-x3(k))/2;
  x3(k+1)=(2-x1(k)+2*x2(k))/3;
  epsilon(k+1)=max(abs([(x1(k+1)-x1(k)) (x2(k+1)-x2(k)) (x3(k+1)-x3(k))]));
  if epsilon(k+1)<EPSILON,break;end
end
disp(' M�TODO DE JACOBI');
disp(' k  x1(k)  x2(k)  x3(k)  epsilon');
disp([(1:k+1)' x1' x2' x3' epsilon']);

clear all
K=20;EPSILON=1E-6;
x1(1)=0;x2(1)=0;x3(1)=0;epsilon(1)=0;
for k=1:K
  x1(k+1)=(3+x2(k)-2*x3(k))/2;
  x2(k+1)=(4-x1(k+1)-x3(k))/2;
  x3(k+1)=(2-x1(k+1)+2*x2(k+1))/3;
  epsilon(k+1)=max(abs([(x1(k+1)-x1(k)) (x2(k+1)-x2(k)) (x3(k+1)-x3(k))]));
  if epsilon(k+1)<EPSILON,break;end
end
disp(' M�TODO DE GAUSS-SEIDEL');
disp(' k  x1(k)  x2(k)  x3(k)  epsilon');
disp([(1:k+1)' x1' x2' x3' epsilon']);