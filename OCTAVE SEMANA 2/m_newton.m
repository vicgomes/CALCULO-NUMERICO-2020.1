% INSTITUTO FEDERAL DA PARAÍBA
% CURSO SUPERIOR DE BACHARELADO EM ENGENHARIA ELÉTRICA
% CÁLCULO NUMÉRICO 2020
% EQUACÖES TRANSCENDENTES E ALGÉBRICAS
% CALCULO DE RAÍZES - MÉTODO DE NEWTON
% AUTOR: PROF. PAULO HENRIQUE DA FONSECA SILVA

clear all, close all, clc, 
TOL=1E-3; Nmax=10;
a=0; b=6; x(1)=6; 
fxy='x.^3 + 2*x.^2 - 3*x - 10';   gxy='3*x.^2+4*x-3';     
n=1; e(1)=0; CP=1; 
while(CP>TOL  &&   n<=Nmax)
   n=n+1;
   x(n)=x(n-1)-(x(n-1)^3 + 2*x(n-1)^2 - 3*x(n-1) - 10)/(3*x(n-1)^2+4*x(n-1)-3);
   e(n)=abs(x(n)-x(n-1)); CP=e(n);
end
X=[(0:length(x)-1)' x' e']; 
disp('   -----------------------------')
disp(X)
disp(['   TOL = ' num2str(TOL)]); 
disp(['   Iteraçöes: ' num2str(n-1)])
disp('   -----------------------------')