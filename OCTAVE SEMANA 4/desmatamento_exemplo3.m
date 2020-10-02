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

#EXEMPLO 3: DESMATAMENTO DO CERRADO BRASILEIRO, 2001- 2019
clear all, close all, clc

Xd=[2001 2005 2009 2013 2017 2019 ];
Yd=[29.4 17.6 10.0 13.1 7.3 6.5 ];
T=[Xd' Yd']; 
x=2001:2:2019;
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
L(1)=legend('Pontos dados (INPE)','Pontos interpolados');
title('Taxa de Desmatamento - Cerrado ')
L(2)=xlabel('ANO'); L(2)=ylabel('Áreas(km²) em milhares');
set(L,'fontsize',15);set(ax,'fontsize',15); 
set(L(1),'Box','Off','fontsize',15);

axis([2000 2020 0 40])
grid on