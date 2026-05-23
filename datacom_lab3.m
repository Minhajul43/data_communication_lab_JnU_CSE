clear;
clc;
b = [0 1 0 1 1 1 0]; % Binary data input
n = length(b);       % Number of bits
t = 0:0.01:n;        % Time vector
                     % Convert binary (0,1) to bipolar (-1,+1)
for i = 1:n
if (b(i) == 0)
b_p(i) = -1;        % 0 → -1
else
b_p(i) = 1;         % 1 → +1
end
end
                    % Generate waveform (expand each bit)
for j = 1:n
bw(j*100:(j+1)*100) = b_p(j);
end
bw = bw(100:end);   % Adjust length
                    % Generate carrier signal
sint = sin(2*pi*t);
                   % Perform PSK modulation
st = bw .* sint;
% -------- Plotting -------- %
subplot(3,1,1)
plot(t,bw)
grid on
axis([0 n -2 +2])
title('Bipolar Data Signal')

subplot(3,1,2)
plot(t,sint)
grid on
axis([0 n -2 +2])
title('Carrier Signal')

subplot(3,1,3)
plot(t,st)
grid on
axis([0 n -2 +2])
title('PSK Modulated Signal')