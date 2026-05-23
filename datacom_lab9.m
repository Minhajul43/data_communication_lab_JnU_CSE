clear;
clc;
close all;      % Write equation as text
eqn = '5*sin(2*pi*50*t) + 3*sin(2*pi*120*t)';
                % Extract amplitude and frequency

tokens = regexp(eqn,'(\d+)\*sin\(2\*pi\*(\d+)\*t\)','tokens');
A = [];
f = [];
for i = 1:length(tokens)
    A(i) = str2double(tokens{i}{1}); % amplitude
    f(i) = str2double(tokens{i}{2}); % frequency
end

% Plot frequency spectrum
stem(f,A,'filled','LineWidth',2)
grid on
xlabel('Frequency (Hz)')
ylabel('Amplitude')
title('Frequency Domain Representation')

% Set axis limits
axis([0 max(f)+10 0 max(A)+1])