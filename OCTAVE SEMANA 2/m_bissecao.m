% INSTITUTO FEDERAL DA PARAÍBA
% CURSO SUPERIOR DE BACHARELADO EM ENGENHARIA ELÉTRICA
% CÁLCULO NUMÉRICO 2020
% EQUACÖES TRANSCENDENTES E ALGÉBRICAS
% CALCULO DE RAÍZES - MÉTODO DA BISSECAO
% EXEMPLO 3.19 PÁGINA 108 DO LIVRO-TEXTO
% AUTOR: PROF. PAULO HENRIQUE DA FONSECA SILVA

clear all, close all, clc, 
a=0; b=2; Nmax=10; tol=1e-2;
n=1; e(n)=b-a; xi(n)=0; 
while(e(n)>tol && n<=Nmax)
    n=n+1; ya=a^2-3; yb=b^2-3; 
    xi(n)=a+(b-a)/2; yi(n)=xi(n)^2-3;
    if (yi(n)==0), break; end
    if (ya*yi(n)<0), b=xi(n);
    else,          a=xi(n); end
    e(n)=abs(xi(n)-xi(n-1));   
end
N=0:n - 3;
disp('       N        XN      F(XN)       E')
disp([N' xi(3:n)' yi(3:n)' e(3:n)'])