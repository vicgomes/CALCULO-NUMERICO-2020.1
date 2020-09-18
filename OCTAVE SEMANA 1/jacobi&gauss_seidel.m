%========================================================================
%IFPB,JOÃO PESSOA,13/09/2020
%CURSO SUPERIOR DE ENGENHARIA ELÉTRICA
%AUTORES: MARIA FERNANDA, SARA VICTÓRIA, VICTOR EMANUEL E VICTOR RAMALHO
                    %QUESTÃO 7 - OCTAVE 01
%========================================================================

clc, clear all, close all
K=200; EPSILON=1E-3;
x1(1)=0; x2(1)=0; x3(1)=0; epsilon(1)=0;
for k=1:K
  x1(k+1)=(11.33+x2(k)+x3(k))/6;
  x2(k+1)=(32+x1(k)-x3(k))/6;
  x3(k+1)=(42+x1(k)+x2(k))/-6;
  epsilon(k+1)=max(abs([(x1(k+1)-x1(k)) (x2(k+1)-x2(k)) (x3(k+1)-x3(k))]));
if epsilon(k+1)<EPSILON, break; end
end
disp(' MÉTODO DE JACOBI');
disp(' k x1(k) x2(k) x3(k) epsilon');
disp([(1:k+1)' x1' x2' x3' epsilon']);
clear all;

K=200; EPSILON=1E-3;
x1(1)=0; x2(1)=0; x3(1)=0; epsilon(1)=0;
for k=1:K
  x1(k+1) = (11 + x2(k) - 3*x3(k) )/4;
  x2(k+1) = (8-2*x1(k+1) + 2*x3(k))/6;
  x3(k+1) = (2-x1(k+1) - 5*x2(k+1))/-3;
epsilon(k+1) = max(abs([(x1(k+1)-x1(k)) (x2(k+1)-x2(k)) (x3(k+1)-x3(k))]));
if epsilon(k+1) < EPSILON, break; end;
end

disp('MÉTODO DE GAUSS-SEIDEL');
disp('k x1(k) x2(k) x3(k) epsilon');
disp([(1:k+1)' x1' x2' x3' epsilon']);