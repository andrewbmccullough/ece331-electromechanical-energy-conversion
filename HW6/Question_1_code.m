%% ECE331 HW6 - Question 1

%% Variables
% Variables used in the equations
f = 60;
I = 10;
K = 0.06;
w = 2*pi*f;
t = 0:0.0001:0.1;

%% Equations
% Equations for B-field of each phase and total
Ba = K*I*cos(w*t)*exp(1i*0);
Bb = K*I*cos(w*t-((2*pi)/3))*exp(1i*((2*pi)/3));
Bc = K*I*cos(w*t+((2*pi)/3))*exp(1i*((-2*pi)/3));
Bs = Ba+Bb+Bc;

%% Plotting
% Initial plot to get axis set and hold the compass plot
yBs = compass(Bs(1),'k'); % Total B-field plotted in black
hold 
yBa = compass(Ba(1),'r'); % Phase A B-field plotted in red
yBb = compass(Bb(1),'g'); % Phase B B-field plotted in green
yBc = compass(Bc(1),'b'); % Phase C B-field plotted in blue

% Loop to delete previous B-field plots and plot new values based off time
% This will loop through the matrix for 6 cycles
for x = 1:1001
  delete(yBs); % Delete previous graphed value
  delete(yBa);
  delete(yBb);
  delete(yBc);
  
  yBs = compass(Bs(x),'k');
  yBa = compass(Ba(x),'r');
  yBb = compass(Bb(x),'g');
  yBc = compass(Bc(x),'b');
  drawnow % Plots new values on compass
end
  
%% Results

% The animated compass graph shows Phases A, B, C as vectors increasing and
% decreasing as current changes. These vectors are added together to
% create the total B-field which rotates counter-clockwise around the axis.

% The graph shown above is the inital system, but if the code is run a live
% plot will shown the rotating magnetic field.

%% Discussion

% Changing the magnetizing current affects the magnitude of the B-fields in
% the system. However, changing the frequency will change the rate at which
% the rotating magnetic field of Bs rotates.