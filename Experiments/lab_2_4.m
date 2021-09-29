%%Time specifications:
Fs = 800000;                   % samples per second
dt = 1/Fs;                     % seconds per sample
StopTime = 0.02;               % seconds
t = (0:dt:StopTime-dt)';       % seconds

del = 10000;
%%Sine Wave:
F = 100;                      % hertz
msg_sig = cos(2*pi*F*t);

%%Sine wave:
Fc = 10000;                    % hertz
Ec = 1;
car_sig = Ec*cos(2*pi*Fc*t);

%%Modulated wave:
m =del/F;                      %modulation index
mod_sig = Ec*cos((2*pi*Fc*t)+m*sin(2*pi*F*t));

%%Demodulated wave:
freqdev = 10000;
demod_sig = fmdemod(mod_sig,Fc,Fs,freqdev);

figure;
subplot(3,1,1);
plot(t,msg_sig);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulating signal');
legend('e_m(t)');

subplot(3,1,2);
plot(t,mod_sig);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Frequency Modulated Signal');
legend('e_c(t)');

subplot(3,1,3);
plot(t,demod_sig);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Demodulated Signal');
legend('e(t)');