s = tf('s');
z = tf('z');
 
K = 0.6;
Td = 80*10^-3;
Tau = 300*10^-3;
Ts = 20*10^-3;
A = 0.9355;
Kc = [0.5 1 2.12 2.5 5 9 12 15];
 
H = tf([K],[Tau 1],'InputDelay', Td);
sys_d = c2d(H,Ts,'zoh');
Dz = (z-A)/(z-1);
 
for i=1:1:7;
    Tz = Kc(i)*Dz*sys_d;
    Tz_closed = feedback(Tz,1)
    %figure(i)
    subplot(3,4,i)
    step(Tz_closed)
end
