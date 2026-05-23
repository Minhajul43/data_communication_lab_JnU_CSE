clear;
clc;
close all;
% t=input("Enter the time vector:");
t = 0:0.0005:1;    % Time vector

% Message signal parameters

Am = 1;            % Message signal amplitude
fm = 5;            % Message signal frequency

% Generate message signal
m = Am*sin(2*pi*fm*t);

% Carrier signal parameters
Ac = 1;            % Carrier amplitude
fc = 50;           % Carrier frequency
kp = pi/2;         % Phase sensitivity
% Generate carrier signal
c = Ac*sin(2*pi*fc*t);

% Generate phase modulated signal
pm = Ac*sin(2*pi*fc*t + kp*m);

% Plot message signal

subplot(3,1,1)
plot(t,m)
grid on
title('Message Signal')
xlabel('Time (sec)')
ylabel('Amplitude')

% Plot carrier signal

subplot(3,1,2)
plot(t,c)
grid on
title('Carrier Signal')
xlabel('Time (sec)')
ylabel('Amplitude')

% Plot phase modulated signal

subplot(3,1,3)
plot(t,pm)
grid on
title('Phase Modulated Signal')
xlabel('Time (sec)')
ylabel('Amplitude')