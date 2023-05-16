function del_rad = del(rho,T,P,l,m)

c  = 2.99792458e10;
a  = 7.5646e-15;
G  = 6.67259e-8;

kappa = interpolation(rho,T);
del_rad = (3/(16*pi*a*c))*(P*kappa/T^4)*(l/(G*m));
if (isnan(del_rad));
    del_rad = 0.4;

end
