clc;
clear;
close all;      % Time vector
t = 0:0.1:1;    % Fundamental frequency
f = 1;          % Number of odd harmonics
N = 5;          % Initialize square wave
square_wave = zeros(size(t));
figure;

  % Loop for generating sine waves and summing them
for k = 1:N
n = 2*k - 1;     % odd numbers: 1,3,5,7,9

% Generate sine wave
sine_wave = sin(2*pi*n*f*t);

% Add to composite signal
square_wave = square_wave + sine_wave;

% Plot individual sine waves
subplot(N+1,1,k);
plot(t, sine_wave);
title(['Sine Wave with Frequency = ' num2str(n*f) ' Hz']);
end

% Plot final square wave approximation
subplot(N+1,1,N+1);
plot(t, square_wave, 'k', 'LineWidth', 1.5);
title('Approximate Square Wave (Sum of 5 Odd Harmonics)');
xlabel('Time');
ylabel('Amplitude');