%%Time specifications:
Fs = 800000;                   % samples per second
dt = 1/Fs;                     % seconds per sample
StopTime = 0.01;               % seconds
t = (0:dt:StopTime-dt)';       % seconds

%%Square Wave:
F = 2000;                      % hertz
msg_sig = square(2*pi*F*t);

%%Sine wave:
Fc = 10000;                    % hertz
car_sig = 2.5*cos(2*pi*Fc*t);

%%Modulated Signal
mod_sig = (2.5 + msg_sig).*cos(2*pi*Fc*t);

% Plot the signal versus time:
figure;
subplot(3,1,1);
plot(t,msg_sig);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulating signal');
legend('e_m(t)');

subplot(3,1,2);
plot(t,car_sig);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Carrier signal');
legend('e_c(t)');

subplot(3,1,3);
plot(t,mod_sig);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Amplitude Modulated signal');
legend('e(t)');