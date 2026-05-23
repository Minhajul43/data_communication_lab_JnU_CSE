clear;
clc;                     % Input binary sequence
b = [0 1 0 0 1 0];       % Number of bits
n = length(b);           % Time vector
t = 0:0.001:n;           % Convert binary data to waveform
for i = 1:n
if (b(i) == 0)
b_p(i) = 0;              % Binary 0 remains 0
else
b_p(i) = 1;              % Binary 1 becomes 1

end
end
                         % Generate rectangular waveform
for j = 1:n
bw(j*1000:(j+1)*1000) = b_p(j);
end
bw = bw(1000:end);

% Plot input signal
subplot(2,1,1)
plot(t,bw)
grid on
title('Input Binary Signal')
xlabel('Time')
ylabel('Amplitude')

% Generate Bipolar AMI signal
lastbit = 1;
for i = 1:n
if b(i) == 1
x(i*1000:(i+1)*1000) = -lastbit;
lastbit = -lastbit;
else
x(i*1000:(i+1)*1000) = 0;
end
end
x = x(1000:end);

% Plot AMI encoded signal
subplot(2,1,2)
plot(t,x)
grid on
title('Bipolar AMI Encoded Signal')
xlabel('Time')
ylabel('Amplitude')