%%Variables
B = 0.8;
ia = 4;
l = 0.8;
N = 30;
r = 0.05;
w = 376.99;

%%Simulink model
open_system('hw4_simulink');
sim('hw4_simulink');

%%Plots
figure
plot(Bfield);
title('B-field');
ylabel('B');

figure
plot(emf);
title('back emf');
ylabel('e');

figure
plot(armature_current);
title('armature current');
ylabel('ia');

figure
plot(force);
title('force');
ylabel('f');

figure
plot(torque);
title('torque');
ylabel('T');

figure
plot(power);
title('power');
ylabel('P');
