clear
clc

%%
%load data
data = textread('results.txt');

%%
m = data(1,:) / (1.989*10^33);
L = data(2,:) / (4*10^33);
P = data(3,:);
T = data(5,:);
rho = data(6,:);
r= data(4,:) / (6.96 * 10^10);

figure(1)
subplot(2,2,1), plot(m,L, linewidth=2), xlabel('$M(\rm M_{\odot})$','Interpreter','latex','FontSize',12)
ylabel('$L(\rm L_{\odot})$','Interpreter','latex','FontSize',12)
subplot(2,2,2), plot(m,P, linewidth=2), xlabel('$M(\rm M_{\odot})$','Interpreter','latex','FontSize',12)
ylabel('$P(\rm dyne\,cm^{-2})$','Interpreter','latex','FontSize',12)
subplot(2,2,3), plot(m,T, linewidth=2), xlabel('$M(\rm M_{\odot})$','Interpreter','latex','FontSize',12)
ylabel('$T(\rm K)$','Interpreter','latex','FontSize',12)
%subplot(2,2,4), plot(m,rho, linewidth=2), xlabel('$M(\rm M_{\odot})$','Interpreter','latex','FontSize',12)
%ylabel('$\rho(\rm g\,cm^{-3})$','Interpreter','latex','FontSize',12)
subplot(2,2,4), plot(m,r, linewidth=2), xlabel('$M(\rm M_{\odot})$','Interpreter','latex','FontSize',12)
ylabel('$r(\rm R_{\odot})$','Interpreter','latex','FontSize',12)

%%
data_mesa = textread('profile5.txt');
m_mesa = data_mesa(:,2);
r_mesa = 10.^data_mesa(:,3);
P_mesa = 10.^data_mesa(:,6);
T_mesa = 10.^data_mesa(:,4);
rho_mesa = 10.^data_mesa(:,5);

figure(2)
sgtitle('$t=8.6\times10^4\rm \, yr$','Interpreter','latex','FontSize',12)

%subplot(2,2,1), plot(m_mesa,L_mesa, linewidth=2), xlabel('$M(\rm M_{\odot})$','Interpreter','latex','FontSize',12)
%ylabel('$L(\rm L_{\odot})$','Interpreter','latex','FontSize',12)
subplot(2,2,1), plot(m_mesa,P_mesa, linewidth=2), xlabel('$M(\rm M_{\odot})$','Interpreter','latex','FontSize',12)
ylabel('$P(\rm dyne\,cm^{-2})$','Interpreter','latex','FontSize',12)

subplot(2,2,2), plot(m_mesa,T_mesa, linewidth=2), xlabel('$M(\rm M_{\odot})$','Interpreter','latex','FontSize',12)
ylabel('$T(\rm K)$','Interpreter','latex','FontSize',12)

subplot(2,2,3), plot(m_mesa,rho_mesa, linewidth=2), xlabel('$M(\rm M_{\odot})$','Interpreter','latex','FontSize',12)
ylabel('$\rho(\rm g\,cm^{-3})$','Interpreter','latex','FontSize',12)

subplot(2,2,4), plot(m_mesa,r_mesa, linewidth=2), xlabel('$M(\rm M_{\odot})$','Interpreter','latex','FontSize',12)
ylabel('$r(\rm R_{\odot})$','Interpreter','latex','FontSize',12)

%%
figure(2)
sgtitle('$t=8.6\times10^4\rm \, yr$','Interpreter','latex','FontSize',12)

%subplot(2,2,1), plot(m_mesa,L_mesa, linewidth=2), xlabel('$M(\rm M_{\odot})$','Interpreter','latex','FontSize',12)
%ylabel('$L(\rm L_{\odot})$','Interpreter','latex','FontSize',12)
subplot(2,2,1), hold on
plot(m_mesa,P_mesa, linewidth=2), xlabel('$M(\rm M_{\odot})$','Interpreter','latex','FontSize',12)
ylabel('$P(\rm dyne\,cm^{-2})$','Interpreter','latex','FontSize',12)
plot(m,P, linewidth=2)
legend('MESA','shootf','Interpreter','latex','FontSize',12)

subplot(2,2,2), hold on
plot(m_mesa,T_mesa, linewidth=2), xlabel('$M(\rm M_{\odot})$','Interpreter','latex','FontSize',12)
ylabel('$T(\rm K)$','Interpreter','latex','FontSize',12)
plot(m,T, linewidth=2)

subplot(2,2,3), hold on
plot(m_mesa,rho_mesa, linewidth=2), xlabel('$M(\rm M_{\odot})$','Interpreter','latex','FontSize',12)
ylabel('$\rho(\rm g\,cm^{-3})$','Interpreter','latex','FontSize',12)
plot(m,rho, linewidth=2)

subplot(2,2,4), hold on
plot(m_mesa,r_mesa, linewidth=2), xlabel('$M(\rm M_{\odot})$','Interpreter','latex','FontSize',12)
ylabel('$r(\rm R_{\odot})$','Interpreter','latex','FontSize',12)
plot(m,r, linewidth=2)



%%

data_mesa = textread('profile6.txt');
m_mesa = data_mesa(:,2);
r_mesa = 10.^data_mesa(:,3);
P_mesa = 10.^data_mesa(:,6);
T_mesa = 10.^data_mesa(:,4);
rho_mesa = 10.^data_mesa(:,5);


figure(3)
%subplot(2,2,1), plot(m_mesa,L_mesa, linewidth=2), xlabel('$M(\rm M_{\odot})$','Interpreter','latex','FontSize',12)
%ylabel('$L(\rm L_{\odot})$','Interpreter','latex','FontSize',12)
subplot(2,4,5), plot(m_mesa,P_mesa, linewidth=2), xlabel('$M(\rm M_{\odot})$','Interpreter','latex','FontSize',12)
ylabel('$P(\rm dyne\,cm^{-2})$','Interpreter','latex','FontSize',12)
subplot(2,4,6), plot(m_mesa,T_mesa, linewidth=2), xlabel('$M(\rm M_{\odot})$','Interpreter','latex','FontSize',12)
ylabel('$T(\rm K)$','Interpreter','latex','FontSize',12)
%title('$\rm ZAMS$','Interpreter','latex','FontSize',12)
subplot(2,4,7), plot(m_mesa,rho_mesa, linewidth=2), xlabel('$M(\rm M_{\odot})$','Interpreter','latex','FontSize',12)
ylabel('$\rho(\rm g\,cm^{-3})$','Interpreter','latex','FontSize',12)
subplot(2,4,8), plot(m_mesa,r_mesa, linewidth=2), xlabel('$M(\rm M_{\odot})$','Interpreter','latex','FontSize',12)
ylabel('$r(\rm cm)$','Interpreter','latex','FontSize',12)

h1 = annotation('textbox',[0.425 0.95 0.2 0.05],'string','$t=8.6\times10^4\rm \, yr$','Interpreter','latex','FontSize',12);
h2 = annotation('textbox',[0.475 0.47 0.2 0.05],'string','$\rm ZAMS$','Interpreter','latex','FontSize',12);
set([h1 h2], 'fitboxtotext','on','edgecolor','none')