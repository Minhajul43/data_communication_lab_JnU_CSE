clc;
clear;
n = input('Enter total number of frames: ');
w = input('Enter window size: ');
i = 1;
while i <= n
    fprintf('\nSending frames: ');
    for j = i:min(i+w-1,n)
        fprintf('%d ', j);
    end
    fprintf('\nEnter frame lost (0 for none): ');
    lost = input('');
    if lost == 0
        fprintf('All frames acknowledged successfully.\n');
        i = i + w;
    else
        fprintf('Frame %d lost.\n', lost);
        fprintf('Go back and retransmit from Frame %d\n', lost);
        i = lost;
    end
end
fprintf('\nTransmission Completed Successfully.\n');