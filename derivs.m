function dy = derivs(m,r,p,t,l)

G = 6.67*10^(-8);
X = 0.7;
rho = density(t,p,X);
epsilon_total = energy_generation_rate(rho,t,X);
del_rad = del(rho,t,p,l,m);

dy = zeros(4,1);
dy(1) = epsilon_total; %dl/dm
dy(2) = - G * m / (4*pi*r^2); %dp/dm
dy(3) = 1/(4 * pi * r^2 * rho); %dr/dm
dy(4) = - G * m * t * del_rad / (4 * pi * r^2 *p); %dtdm

end