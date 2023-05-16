function kappa = interpolation(rho_input,T_input)

%read the data from the table
data = xlsread('opacities3.xlsx', 'B7:T76');
logT = xlsread('opacities3.xlsx', 'A7:A76');
logR = xlsread('opacities3.xlsx', 'B5:T5');

%Convert parameter "R" to the real density in g/cm^3
for i = 1:length(logT);
    rho(i,:) = 10.^logR * (10.^logT(i)*10^-6).^3;
end
logrho = log10(rho);

%interpolate in log density space
logrho_inter = -9:0.1:3;
for i = 1:length(logT);
    data_inter(i,:) = interp1(logrho(i,:),data(i,:),logrho_inter);
end

%interpolate in log temperature space
logT_inter = 3.75:0.01:7.5;
for i = 1:length(logrho_inter);
    data_inter2(:,i) = interp1(logT,data_inter(:,i),logT_inter);
end

kappa = interp2(logrho_inter,logT_inter,data_inter2,log10(rho_input),log10(T_input));

end
