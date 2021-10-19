clc;
clear all;
t = 0:0.001:1;
fc = input("Enter Carrier Signal Frequency = ");
c = asin(sin(2*%pi*fc*t));
fm = input ("Enter Message Signal Frequency = ");
m = (2/%pi)*sin(2*%pi*fm*t);
n = length(c);
for i = 1:n
 if (m(i) >= c(i))
  pwm(i) = 1;
 else (m(i) <= c(i))
  pwm(i) = 0;
 end
end
figure;
subplot(3 ,1 ,1);
plot(t, m);
xlabel("Time");
ylabel("Amplitiude");
title("Message Signal");
subplot(3 ,1 ,2);
plot(t,c);
xlabel("Time");
ylabel("Amplitude");
title ("Carrier Signal");
subplot(3, 1, 3);
plot(t,pwm');
xlabel("Time");
ylabel("Ampl i tude ");
replot([0 -1 1 2]);
xlabel("Time");
ylabel("Amplitude");
title ("Pulse width modulation");
