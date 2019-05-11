s = tf('s');

K = 0.6;
Td=0.08;
Ts=0.02;
Tau=0.03;

H = tf([K],[Tau 1],'InputDelay', Td);
sys_d = c2d(H,Ts,'zoh');
Cltf=sys_d/(1+sys_d)
rlocus(Cltf)


title('Root Locus Plot of "D(z) = Kc"');



