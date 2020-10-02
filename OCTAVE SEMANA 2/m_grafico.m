% INSTITUTO FEDERAL DA PARAÍBA
% CURSO SUPERIOR DE BACHARELADO EM ENGENHARIA ELÉTRICA
% CÁLCULO NUMÉRICO 2020
% EQUACÖES TRANSCENDENTES E ALGÉBRICAS
% CALCULO DE RAÍZES - MÉTODO GRÁFICO
% EXEMPLO 3.14, PÁGINA 100 LIVRO-TEXTO
% AUTOR: PROF. PAULO HENRIQUE DA FONSECA SILVA

clear all, close all, clc
x=-1.5:.001:2.5; N=length(x);
y=exp(x)-sin(x)-2;
csi=fzero(@(x) exp(x)-sin(x)-2, -1.5);
g=exp(x); h=sin(x)+2;
x1=[csi csi]; y1=[0 exp(csi)];
x2=[-1.5 csi]; y2=[exp(csi) exp(csi)];
ax=axes; set(ax,'Fontsize',18);
plot(x,g,'b','Linewidth',4,x,h,'r','Linewidth',4,...
x1,y1,'k--',x2,y2,'k--',csi,exp(csi),'ko')
L(1)=xlabel('x'); L(2)=ylabel('f(x)'); L(2)=ylabel('g(x) e h(x)');
L(3)=title('g(x) = e^x  h(x) = sin(x) + 2');
set(L,'FontSize',24); 
set(L(3),'FontSize',16,'FontWeight','Normal');
axis([-1.5 2 0 8])
grid on, box on