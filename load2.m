function [l,p,r,t] = load2(l_guess,p_guess,r_guess,t_guess)

sigma = 5.6704 * 10^(-5); %Stefan-Boltzmann constant
l = l_guess;
p = 10^(-10);
r = r_guess;
t = (l / (4 * pi * r^2 * sigma))^(1/4);

end