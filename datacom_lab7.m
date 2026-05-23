clear;
clc;                 % Input binary sequence
b = [0 1 0 0 1 0];   % Number of bits
n = length(b);       % Time vector
t = 0:0.001:n;       % Convert binary to bipolar form
for i = 1:n
    if (b(i) == 0)
        b_p(i) = -1;
    else
        b_p(i) = 1;
    end
end

% Generate bipolar waveform
for j = 1:n
    bw(j*1000:(j+1)*1000) = b_p(j);
end
bw = bw(1000:end);

% Plot bipolar data
subplot(2,1,1)
plot(t,bw)
grid on
title('Input Bipolar Signal')
xlabel('Time')
ylabel('Amplitude')

% Generate Manchester encoded waveform
for i = 1:n
    if b(i) == 1
        x(i*1000:(i+0.5)*1000) = -1;
        x((i+0.5)*1000:(i+1)*1000) = 1;
    else
        x(i*1000:(i+0.5)*1000) = 1;
        x((i+0.5)*1000:(i+1)*1000) = -1;
    end
end
x = x(1000:end);

% Plot Manchester encoded signal
subplot(2,1,2)
plot(t,x)
grid on
title('Manchester Encoded Signal')
xlabel('Time')
ylabel('Amplitude')