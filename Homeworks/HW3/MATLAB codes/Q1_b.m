s = tf('s');
z = tf('z');

K = 0.6;
Td = 80*10^-3;
Tau = 300*10^-3;
Ts = 20*10^-3;
A = 0.9355;

H = tf([K],[Tau 1],'InputDelay', Td);
sys_d = c2d(H,Ts,'zoh');
Dz = (z-A)/(z-1);
Tz = Dz*sys_d;
Cltf=Tz/(1+Tz)
Cltf1=feedback(sys_d,1)
rlocus(Cltf)
figure
rlocus(Cltf1)