%% Simulation 3
% This simulation builds off the second part of homework 6 but with an
% added induction machine

%% Variables
% Variables used in system

Tem_i = 6; % [Nm]
Tem_f = 9; % [Nm]
Tem_time = .3; % [sec]
Kt = 0.3; % [Nm/A]
w = 3600; % [rad/s]
Tl_i = 300; % [Nm]
Tl_f = 480; % [Nm]
Tl_time = 2; % [sec]

%% Simulink Model

open_system('Simulation_3_model'); % Opens simulink model
sim('Simulation_3_model'); % Runs simulink model

%% Plots

figure
plot(speed.time,speed.data);
title('Speed');
xlabel('Time (sec)');
ylabel('speed (RPM)');
hold

%% Appendix

% Phase currents simulink function:
%function [Ia, Ib, Ic]= fcn(Is,t)

%w = 2*pi*60;
%Is = Is*exp(1i*w*t);

%Ia = (2/3)*real(Is*exp(1i*0));
%Ib = (2/3)*real(Is*exp(1i*((-2*pi)/3)));
%Ic = (2/3)*real(Is*exp(1i*((-4*pi)/3)));