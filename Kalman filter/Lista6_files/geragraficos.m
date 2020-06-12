t = t_x.Time

z = t_z.Data;
x_ref = t_href.Data;

x = t_x.Data(:,1);
xm = t_xm.Data(:,1);
vel = t_x.Data(:,2);
velm = t_xm.Data(:,2);
x_real = t_x_real.Data;
vel_real = t_vel_real.Data;

sigma_x = sqrt(t_P.Data(1,1,:));
sigma_vel = sqrt(t_P.Data(2,2,:));
sigma_xm = sqrt(t_Pm.Data(1,1,:));
sigma_velm = sqrt(t_Pm.Data(2,2,:));

%% Junta arrays xm e x, P e Pm etc...
t_t = [t(:) t(:)]';
t_t = t_t(:)

erro_x_xm = [x_real(:)-x(:) x_real(:)-xm(:)]';
erro_x_xm = erro_x_xm(:)

erro_vel_velm = [vel_real(:)-vel(:) vel_real(:)-velm(:)]';
erro_vel_velm = erro_vel_velm(:)

x_xm = [x(:) xm(:)]';
x_xm = x_xm(:)

sigma_x_xm = [sigma_x(:) sigma_xm(:)]';
sigma_x_xm = sigma_x_xm(:)

sigma_vel_velm = [sigma_vel(:) sigma_velm(:)]';
sigma_vel_velm = sigma_vel_velm(:)


close all
subplot(2,2,1)
hold on
plot(t_t,erro_x_xm,'DisplayName','erro x')
plot(t_t,-3*sigma_x_xm,'DisplayName','- 3 sigma')
plot(t_t,3*sigma_x_xm,'DisplayName','3 sigma')
xlabel('Tempo (s)') 
ylabel('Altura (m)') 
grid on
legend
title('Erro de posição (m)')

subplot(2,2,2)
hold on
plot(t,x,'DisplayName','x+')
plot(t,xm,'DisplayName','x-')
plot(t,x_real,'DisplayName','x real')
plot(t,x_ref,'DisplayName','Href')
scatter(t,z,5,'filled', 'DisplayName','z','MarkerFaceAlpha',.2)
xlabel('Tempo (s)') 
ylabel('Altura (m)') 
grid on
legend
title('Posição')

subplot(2,2,3)
hold on
plot(t_t,erro_vel_velm,'DisplayName','Erro vel')
plot(t_t,-3*sigma_vel_velm,'DisplayName','-3 Sigma')
plot(t_t,3*sigma_vel_velm,'DisplayName','3 Sigma')
xlabel('Tempo (s)') 
ylabel('Velocidade (m/s)') 
grid on
legend
title('Erro de velocidade')

subplot(2,2,4)
hold on
plot(t,vel,'DisplayName','Vel+')
plot(t,velm,'DisplayName','Vel-')
plot(t,vel_real,'DisplayName','Vel real')
xlabel('Tempo (s)') 
ylabel('Velocidade (m/s)') 
grid on
legend
title('Velocidade')
