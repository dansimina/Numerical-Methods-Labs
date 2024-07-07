% funcie care implementeaza interpolarea Lagrange-forma Newton
clear all
clc
close all

x=linspace(0,6,13);% nodurile de interpolare

% f=exp(sin(x));% valorile functiei pt nodurile x, in cazul acesta f(x)=e^(sin(x))
% f=exp(sin(x));% valorile functiei pt nodurile x, in cazul acesta f(x)=e^(sin(x))
% fct1
% f=cos(2*x).^2-x.^2;
% fct2
% f=log(x.*exp(x));
% fct3
% f=exp(sin(x));
% fct4
% f=(x.^2-x+1)/x;

A=DiferenteDivizate(x,f); % tabelul cu diferente divizate

z=0:0.1:6;% punctele pt care se calculeaza valoarea polinomului de interpolare
PIL_New=zeros(1,length(z));

tic% masurarea timpului de executie
for k=1:length(z)
    PIL_New(k)=Newton(A,x,z(k));% se apeleaza functia pentru calcularea polinomului de interpolare Lagrange -forma Newton
end
timp=toc;% masurarea timpului de executie folosind comanda tic-toc
fprintf('Timpul necesar este %f secunde\n',timp)
fprintf('Numarul de iteratii este %d\n',length(z))% afisarea numarului de iteratii

% Graficul cu functia exacta si polinomul de interpolare
figure(1)
hold on
box on
% plot(z,cos(2*z).^2-z.^2,'r')
% plot(z,log(z.*exp(z)),'r')
% plot(z,exp(sin(z)),'r')
plot(z,(z.^2-z+1)/z,'r')
plot(z,PIL_New,'b*')
legend('Exact','PIL Newton')