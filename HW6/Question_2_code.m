%% ECE331 HW6 - Question 2

%% Variables
% Variables used in system

Tem_initial = 6;
Tem_final = 9;
Kt = 0.3;
w = 3600;

%% Simulink Model
% Simulink model, equation block, and graphs of T, Ia, Ib, Ic, and Is

open_system('Question2_simulink'); % Opens simulink model
sim('Question2_simulink'); % Runs simulink model

open_system('Question2_simulink/Phase_Currents'); % Function block for calculating phase currents

open_system('Question2_simulink/Torque_scope'); % Torque input graph
open_system('Question2_simulink/Ia_scope'); % Ia magnitude and phase
open_system('Question2_simulink/Ib_scope'); % Ib magnitude and phase
open_system('Question2_simulink/Ic_scope'); % Ic magnitude and phase
open_system('Question2_simulink/Is_scope'); % Is magnitude and phase

%% Appendix

% Phase currents simulink function:
%function [Ia, Ib, Ic]= fcn(Is,t)

%w = 2*pi*60;
%Is = Is*exp(1i*w*t);

%Ia = (2/3)*real(Is*exp(1i*0));
%Ib = (2/3)*real(Is*exp(1i*((-2*pi)/3)));
%Ic = (2/3)*real(Is*exp(1i*((-4*pi)/3)));