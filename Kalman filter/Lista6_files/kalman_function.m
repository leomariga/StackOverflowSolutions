function s = kalman_function(e)

x_anterior = [e(1);e(2)]
P_anterior = [e(3) e(4); e(5) e(6)]
z = e(7)
u = e(8)

%% Inicializa parâmetros
x = [0;0];
P = [0 0 ; 0 0];
g = 9.8;
kb = 0.12*10^(-3)
m = 21.2*10^(-3)
dt = 0.001;

% Define Q e R
Q = [(0.001/3)^2 0; 0 (0.001/3)^2]
R = [(0.001/3)^2 0; 0 (0.001/3)^2]

%% Calcula A e H
% Calcula a matriz A linearizada em x_anterior e u
Ad = calcula_A_discreto()

% Como nossa medida z é altura (mesma coisa de x(0)) H fica fácil
H = [1 0]

%% Propagação
xm = propaga_x()
Pm = Ad*P_anterior*(Ad') + Q
disp("UHULLL")
%% Atualização
K = Pm*(H')*inv(H*Pm*(H')+R)
xp = xm + K*(z-xm(1))
Pp = (eye(2) - K*H)*Pm



%% Propagação do novo x, com base em u e no valor antigo
   function x_menos = propaga_x
       % Resolver EDO
       [T1,y] = ode45(@(t,x_anterior) nonlinear(t,x_anterior, u), [0 dt], x_anterior); 
       % Pega o último valor
       x_menos=(y(length(T1),1:2))' 
   end

%% Lineariza o sistema no ponto x_anterior e u. Retorna A discreto
   function A_discreto = calcula_A_discreto
       % Vamos linearizar em x_anterior e u:
       Ac = [0 1; 2*kb*u^2/(m*x_anterior(1)^3) 0];
       Bc = [0;-2*kb*u/(m*x_anterior(1)^2)];
       Cc = [1 0];
       Dc = 0;
       % Discretizando o sistema fica:
       discreteSys = ss(Ac,Bc,Cc,Dc,dt)
       A_discreto = discreteSys.A
   end

x = xp
P = Pp
s = [x(1) x(2) P(1,1) P(1,2) P(2,1) P(2,2)]
end