%% Simulation 2
% Simulation builds off Simulation 1, but load is now a DC permanent magnet
% motor

%% Variables

Ra = 0.35; % [ohms]
La = 1.5e-3; % [H]
ke = 0.5; % [V/rad/s]
kt = 0.5; % [Nm/A]
Jm = 0.02; % [kgm^2]
T = 3; % [Nm]
Ti = 30; % [Nm]
Tf = 90; % [Nm]
Ttime = .5; % [s] (Changed from 5 seconds to .5 to speed up computation)
w_ref = 1500*((2*pi)/60); % [rad/s]
Vdc = 200; % [V]
fs = 25000; % [Hz]
Kp_w = 10;
Ki_w = 1.5;

%% Calculations

Ia = T/kt; % [A]
ea = ke*w_ref; % [V]
Va = Ra*Ia + ea; % [V]
d = Va/Vdc; % reference for signals

%% Simulink model

open_system('Simulation_2_model');
sim('Simulation_2_model');

%% Plots

% Switch Signal 1
figure
plot(SwitchSignal1.time(100001:100501),SwitchSignal1.data(100001:100501));
title('Switch Signal 1 (steady state)');
xlabel('Time (sec)');
ylabel('Magnitude');
hold

% Switch Signal 2
figure
plot(SwitchSignal2.time(100001:100501),SwitchSignal2.data(100001:100501));
title('Switch Signal 2 (steady state)');
xlabel('Time (sec)');
ylabel('Magnitude');
hold

% load voltage 
figure
plot(load_voltage.time(100001:100501),load_voltage.data(100001:100501));
title('Load Voltage (steady state)');
xlabel('Time (sec)');
ylabel('Voltage (V)');
hold

% Load current
figure
plot(load_current.time,load_current.data);
title('Load Current');
xlabel('Time (sec)');
ylabel('Current (I)');
hold

% Load current zoomed before step
figure
plot(load_current.time(100001:100501),load_current.data(100001:100501));
title('Load Current (Zoomed before step)');
xlabel('Time (sec)');
ylabel('Current (I)');
hold

% Load current zoomed after step
figure
plot(load_current.time(1000001:1000501),load_current.data(1000001:1000501));
title('Load Current (Zoomed after step)');
xlabel('Time (sec)');
ylabel('Current (I)');
hold

% Speed
figure
plot(speed.time,speed.data);
title('Speed');
xlabel('Time (sec)');
ylabel('w (rad/s)');
hold

% Torque vs current
figure
plot(load_current.data,torque.data);
title('Torque vs Current');
xlabel('Current (I)');
ylabel('Torque (Nm)');
hold
