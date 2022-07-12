%% Simulation 1
% Simulation builds out a complete steady state drive and equivalent DC motor
% circuit model of problem 7.4 from the textbook

%% Variables

Ra = 0.35; % [ohms]
La = 1.5e-3; % [H]
ke = 0.5; % [V/rad/s]
kt = 0.5; % [Nm/A]
Jm = 0.02; % [kgm^2]
T = 3; % [Nm]
w = 1500*((2*pi)/60); % [rad/s]
Vdc = 200; % [V]
fs = 25000; % [Hz]


%% Calculations

Ia = T/kt; % [A]
ea = ke*w; % [V]
Va = Ra*Ia + ea; % [V]
d = Va/Vdc; % reference for signals

%% Simulink model

open_system('Simulation_1_model');
sim('Simulation_1_model');

%% Plots

% Switch Signal 1
figure
plot(SwitchSignal1.time(1:201),SwitchSignal1.data(1:201));
title('Switch Signal 1');
xlabel('Time (sec)');
ylabel('Magnitude');
hold

% Switch Signal 2
figure
plot(SwitchSignal2.time(1:201),SwitchSignal2.data(1:201));
title('Switch Signal 2');
xlabel('Time (sec)');
ylabel('Magnitude');
hold

% R, L, ea load voltage
figure
plot(RLea_load_voltage.time(1:201),RLea_load_voltage.data(1:201));
title('R and L Load Voltage');
xlabel('Time (sec)');
ylabel('Voltage (V)');
hold

% R, L load voltage
figure
plot(RL_load_voltage.time(1:201),RL_load_voltage.data(1:201));
title('R,L, and ea Load Voltage');
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

% Load current zoomed
figure
plot(load_current.time(50001:50301),load_current.data(50001:50301));
title('Load Current (Zoomed)');
xlabel('Time (sec)');
ylabel('Current (I)');
hold
