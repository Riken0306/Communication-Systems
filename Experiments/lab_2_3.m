load handel.mat

%%Audio Wave:
filename = "DDU.wav";
[y,fs] = audioread(filename);

y = y(:,1);
dt = 1/fs;
t = 0:dt:(length(y)*dt)-dt;

%%Sine wave:
fc = 100;                    % hertz
Ec = 1;
car_sig = Ec*cos(2*pi*fc*t);

% %%Modulated wave:
k = 100;                     
fi = fc + k*y;
mod_sig = Ec*cos(2*pi*fi);


subplot(3,1,1);
plot(t,y);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Frequency Modulated Signal');
legend('e_m(t)');

subplot(3,1,2);
plot(t,car_sig);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Carrier Signal');
legend('e_c(t)');

subplot(3,1,3);
plot(t,mod_sig);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Frequency Modulated Signal');
legend('e(t)');