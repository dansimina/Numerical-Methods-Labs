function [sol_aprox,nr_it,err]=AccelerareAitken(x0,tipphi,Nmax,epsilon,exact)
nr_it=0;
tic% masurarea timpului de executie
while nr_it<=Nmax
    x1=Phi(x0,tipphi);
    x2=Phi(x1,tipphi);
    x2a=x2-(x2-x1)^2/(x2-2*x1+x0);
    nr_it=nr_it+1;
    err(nr_it)=abs(exact-x2a);
    if abs(x2a-x0)<epsilon
        break
    end
    x0=x2a;
end
timp=toc;% masurarea timpului de executie folosind comanda tic-toc
fprintf('Timpul necesar este %f secunde\n',timp)
if nr_it<Nmax
  sol_aprox=x2a;
else
    sol_aprox=0;
    fprintf('Metoda nu converge\n')
end