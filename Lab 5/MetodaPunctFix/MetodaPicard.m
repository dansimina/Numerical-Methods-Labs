function [sol_aprox,nr_it,err]=MetodaPicard(x0,tipphi,Nmax,epsilon,exact)
nr_it=0;
tic% masurarea timpului de executie
while nr_it<=Nmax
    x1=Phi(x0,tipphi);
    nr_it=nr_it+1;
    err(nr_it)=abs(exact-x1);
    if abs(x1-x0)<epsilon
        break
    end
    x0=x1;
end
timp=toc;% masurarea timpului de executie folosind comanda tic-toc
fprintf('Timpul necesar este %f secunde\n',timp)
if nr_it<Nmax
  sol_aprox=x1;
else
    sol_aprox=0;
    fprintf('Metoda nu converge\n')
end