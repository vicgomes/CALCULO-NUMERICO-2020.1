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

#EXEMPLO 2: Taxa de analfabetismo das pessoas de 15 anos ou mais de idade, por sexo - Brasil DE 2007-2015
clear all, close all, clc

Xd=[2007 2008 2009 2011 2012 2013 2014 2015];
Yd=[10.1	10.000	9.7	8.8	8.7	8.5	8.3	8.000];
T=[Xd' Yd']; 
x=2007:1:2015;
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
set(a,'MarkerSize',14,'Linewidth',4);
L(1)=legend('pontos dados (IBGE)','pontos interpolados');
title('Taxa de analfabetismo (15 anos ou mais)')
L(2)=xlabel('ANO'); L(2)=ylabel('%');
set(L,'fontsize',5);set(ax,'fontsize',15); 
set(L(1),'Box','Off','Location','SouthWest','fontsize',15);


axis([2006 2016 0 12])
grid on