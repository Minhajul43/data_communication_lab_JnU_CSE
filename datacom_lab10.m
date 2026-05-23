clear; 
clc; 
close all;

t = 0:0.001:1;
p = pi/3;

a = 5;
f = 10;
y = a*sin(2*pi*f*t);

fs1 = 1.3*f;
ts1 = 1/fs1;
t1 = 0:ts1:1;
y1 = a*sin(2*pi*f*t1 + p);

fs2 = 2*f;
ts2 = 1/fs2;
t2 = 0:ts2:1;
y2 = a*sin(2*pi*f*t2 + p);

fs3 = 7*f;
ts3 = 1/fs3;
t3 = 0:ts3:1;
y3 = a*sin(2*pi*f*t3 + p);


subplot(3, 1, 1)
plot(t, y)
hold on
plot(t3, y3)
grid on
title('Over Sampling')

subplot(3, 1, 2)
plot(y)
hold on
plot(t2,y2)
grid on
title('Original Signal')

subplot(3, 1, 3)
plot(t, y)
hold on
plot(t1, y1)
grid on
title('Under Sampling ')

