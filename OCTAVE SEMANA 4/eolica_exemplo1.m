% ---------------------------------------------
% INSTITUTO FEDERAL DA PARAÍBA
% CURSO SUPERIOR DE BACHARELADO EM ENGENHARIA ELÉTRICA
% DISCIPLINA: CÁLCULO NUMÉRICO 2020
% INTERPOLACAO: MÉTODO DE LAGRANGE
% JOÃO PESSOA, 26/09/2020.
% AUTOR: PROF. PAULO HENRIQUE DA FONSECA SILVA
% ---------------------------------------------

% VARIAVEIS PRINCIPAIS
% N - numero de pontos dados
% X - vetor que contem as abscissas dos pontos dados
% Y - vetor que contem as ordenadas dos pontos dados
% T - matriz tabela de dados definida por: T=[X' Y']
% x - vetor que contem as abscissas dos pontos interpolados
% y - vetor que contem as ordenadas dos pontos interpolados

#EXEMPLO 1: GERAÇÃO DE ENERGIA EÓLICA (EM GWh) EM TODO BRASIL DE 2006 A 2018
clear all, close all, clc

Xd=[2006 2008 2010 2014 2016 2018];
Yd=[238 557 1448 9899 33455 48433];
T=[Xd' Yd']; 
x=2006:2:2018;
N=length(Xd);
NPi=length(x);

disp('INTERPOLACAO DE LAGRANGE');
disp(' '); disp('TABELA DE PONTOS')
for f=1:N, disp([f Xd(f) Yd(f)]); end
disp(' '); disp('TABELA DE RESULTADOS');    

for k=1:NPi
    y(k)=0;
    for i=1:N
        parc=1;
        for j=1:N
            if(i~=j)
                parc=parc*((x(k)-T(j,1))/(T(i,1)-T(j,1)));
            end
        end
        y(k)=y(k)+parc*T(i,2);
    end
    disp([k x(k) y(k)]);
end

% SAÍDA GRÁFICA
Fig=figure(1); 
ax=axes; 
a=plot(Xd,Yd,'ko',x,y,'r');
set(a,'MarkerSize',14,'Linewidth',3);
L(1)=legend('pontos dados (ONS)','pontos interpolados');
title('Geração de energia eólica')
L(2)=xlabel(' ANO'); L(2)=ylabel('Geração de Energia (GWh)');
set(L,'fontsize',18);set(ax,'fontsize',18); 
set(L(1),'Box','Off','Location','NorthWest','fontsize',15);

axis([2005 2019 200 50000])
grid on