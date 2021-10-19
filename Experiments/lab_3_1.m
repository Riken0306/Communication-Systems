clc;
clear all;
close all;

fs=5;
T=1/fs;
t = 0:T:2;
x=cos(2*pi*t)+cos(8*pi*t)+cos(12*pi*t);
xa = 3*cos(2*pi*t);

figure;
subplot(2,1,1);
plot(t,x);
xlabel('Time(msec)');
ylabel('x(t)');
legend('x(t)');

subplot(2,1,2);
plot(t,xa);
xlabel('Time(msec)');
ylabel('xa(t)');
legend('xa(t)');
