s = tf('s');
z = tf('z');

K = 0.6;
Td = 80*10^-3;
Tau = 300*10^-3;
Ts = 20*10^-3;
A = 0.9355;
Kc=2.12;

H = tf([K],[Tau 1],'InputDelay', Td);
sys_d = c2d(H,Ts,'zoh');
Dz = (z-A)/(z-1);
Tz = Kc*Dz*sys_d;
Tz_closed = feedback(Tz,1) % The closed transfer function with unit feedback