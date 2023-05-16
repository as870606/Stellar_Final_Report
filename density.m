function rho = density(T,p,X)

k = 1.3807 * 10^(-16);
a = 7.5658 * 10^(-15);
NA = 6.02214 * 10^(-23);
mu = 4/(3+5*X);

rho = (p + (1/3 * a * T^4)) * mu/(NA*k*T);
end