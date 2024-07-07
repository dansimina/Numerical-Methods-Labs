function [rez]=fderiv(x,tipex)
%calculeaza derivata; pentru alt exemplu atentie la operatiile punctuale
switch tipex
    case 'ex1'
        % fct1
        rez=4*cos(2*x)*(-sin(2*x))-2*x;
        % fct2
        % rez=1 + x^(-1);
        % fct3
        % rez=exp(sin(x))*cos(x); 
        % fct4
        % rez=(x^2-x+1)/x;
end
