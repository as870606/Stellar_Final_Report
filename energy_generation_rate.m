function epsilon_total = energy_generation_rate(rho,T,X)

%pp-chain
T7 = T/10^7;
T9 = T/10^9;
g11 = (1 + 3.82*T9 + 1.51*T9.^2 + 0.144*T9.^3 - 0.114*T9.^4);
f11 = 5.92 * 10^-3 * sqrt(rho./T7.^3);
epsilon_pp = 2.57 * 10^4 * f11 .* g11 .* rho .* X^2 .* T9.^(-2/3) .* exp(-3.381./(T9.^(1/3)));

%CNO cycle
g141 = 1 - 2*T9 + 3.41*T9^2 - 2.43*T9^3;
epsilon_CNO = 8.24*10^25 * g141 * X * rho * T9^(-2/3) * exp(-15.231*T9^(-1/3)-(T9/0.8)^2);
epsilon_total = epsilon_CNO + epsilon_pp;
end