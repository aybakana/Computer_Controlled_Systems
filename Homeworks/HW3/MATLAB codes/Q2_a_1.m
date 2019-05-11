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





%%%
%%%numDz = [1 -0.3];
%%%denDz = [1 -1.6 0.7];
%%%sys = tf(numDz,denDz,-1);
%%%
%%%rlocus(sys)
%%%axis([-1 1 -1 1])
%%%

%zeta = 0.4;
%Wn = 0.3;
%zgrid(zeta,Wn)


