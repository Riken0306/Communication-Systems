%%Time specifications:
Fs = 800000;                   % samples per second
dt = 1/Fs;                     % seconds per sample
StopTime = 0.1;               % seconds
t = (0:dt:StopTime-dt)';       % seconds

%%Square Wave:
F = 100;                      % hertz
msg_sig = cos(2*pi*F*t);

%%Sine wave:
Fc = 10000;                    % hertz
car_sig = cos(2*pi*Fc*t);

m = 1;

%%Modulated Signal
mod_sig = (1 + m*cos(2*pi*F*t)).*cos(2*pi*Fc*t);

%%Demodulation
demod_sig = amdemod(mod_sig,Fc,Fs);

figure;
subplot(3,1,1);
plot(t,msg_sig);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Message signal');

subplot(3,1,2);
plot(t,mod_sig);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulated signal');

subplot(3,1,3);
plot(t,demod_sig);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Signal after Demodulation');

