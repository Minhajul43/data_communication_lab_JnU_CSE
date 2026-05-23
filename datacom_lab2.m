clear;                  % Clear all variables from workspace
clc;                    % Clear command window
b = [0 1 0 1 1 1 0];    % Input binary data sequence
n = length(b);          % Number of bits in the sequence
t = 0:.01:n;            % Time vector from 0 to n with step size 0.01
                        % Convert binary data into waveform (each bit expanded to 100 samples)
for i = 1:n
bw(i*100:(i+1)*100) = b(i); % Assign bit value over 100 samples
end
bw = bw(100:end);        % Adjust length of bw to match time vector
sint = sin(2*pi*t);      % Generate carrier sine wave (frequency = 1 Hz)
st = bw .* sint;         % Perform ASK modulation (element-wise multiplication)

% -------- Plot Binary Data --------

subplot(3,1,1)            % First subplot (3 rows, 1 column, position 1)
plot(t,bw)                % Plot binary waveform
grid on                   % Turn grid on
axis([0 n -2 +2])         % Set axis limits

% -------- Plot Carrier Signal --------

subplot(3,1,2)            % Second subplot
plot(t,sint)              % Plot sine wave (carrier)
grid on
axis([0 n -2 +2])

% -------- Plot ASK Signal --------

subplot(3,1,3)            % Third subplot
plot(t,st)                % Plot ASK modulated signal
grid on
axis([0 n -2 +2])