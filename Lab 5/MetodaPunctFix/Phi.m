function [y]=Phi(x,tipphi)
% switch tipphi
%     case 'ex1'
%         y=log(x*exp(x));
%     case 'ex2'
%         y=(exp(x)+x)/(exp(x)+1);
%     case 'ex3'
%         y=(x^2-x+1)/x;
% fct1
% y=cos(2*x).^2-x.^2;
% fct2
% y=log(x.*exp(x));
% fct3
% y=exp(sin(x));
% fct4
y=(x.^2-x+1)/x;
end
