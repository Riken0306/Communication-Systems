%% Time specifications:
Fs = 800000;                   % samples per second
dt = 1/Fs;                     % seconds per sample
StopTime = 0.01;               % seconds
t = (0:dt:StopTime-dt)';       % seconds

%% Square Wave:
F = 500;                      % hertz
msg_sig = sin(2*pi*F*t);

%% Sine wave:
Fc = 10000;                      % hertz
car_sig = square(2*pi*Fc*t)+1;

%% PAM signal
pam_sig = msg_sig.*car_sig;

%% Plot the signal versus time:
figure;
subplot(3,1,1);
plot(t,msg_sig);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Message signal');
legend('e_m(t)');

subplot(3,1,2);
plot(t,car_sig);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Pulse train');
legend('e_c(t)');

subplot(3,1,3);
plot(t,pam_sig);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('PAM Signal');
legend('e(t)');