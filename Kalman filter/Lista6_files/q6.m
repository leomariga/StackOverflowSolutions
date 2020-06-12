g = 9.8;
kb = 0.12*10^(-3)
m = 21.2*10^(-3)
href = 0.030;
dt = 0.005;

% Desvio padrão de alturab(a maioria do erro vai estar entre 0 e 0.001)
h_sig = 0.002/3

x0 = [href;0]
P0 = [0 0; 0 0]

alpha = 2*g/href
beta = (2/(href))*sqrt(kb*g/m)

gs = tf([beta],[1 0 -alpha])

T = 0.02589
alphae = 0.1325;

gc = 20*tf([T 1],[T*alphae 1])
discretodele = c2d(gc,dt)
tempo = 0.009


Gcd = 60*tf([1/alphae 1-1/alphae-exp(-tempo/(alphae*T))],[1 -exp(-tempo/(alphae*T))], tempo)

% 
% bode(gc)
% gmf = feedback(gs*gc,1)
% rlocus(gs*gc)
% step(gmf)
% 
% a = sqrt(alpha)*1.2
% b = sqrt(alpha)*1.5
% ganho = 1;
% gc = ganho*tf([1 a],[1 b])
% gc2 = tf([1],[1 0])
% gmf = feedback(gc*gc2*gs,1)
% 
% % eps = 0.5;
% % tsub = 0.5;
% % wn = tsub/3;
% % 
% % polos = -eps*wn +j*wn*sqrt(1-eps^2)
% 
% figure(1)
% bode(gs)
% 
% figure(2)
% rlocus(gc*gc2*gs)
% 
% figure(3)
% step(gmf)
% S = stepinfo(gmf)