clc;
clear all;
t = 0:0.001:1;

fc = 50;
fm = 2;
a = 1;
b = 1;

vc = a.*sawtooth(2*pi*fc*t);
vm = b.*sin(2*pi*fm*t);
n = length(vc);
for i = 1:n
    if (vm(i)>=vc(i))
        pwm(i) = 1;
    else
        pwm(i) = 0;
    end
end
% Representation of the Message Signal
subplot(3,1,1);
plot(t,vm,'black');
xlabel('Time ----->');
ylabel('Amplitude ----->');
title('Message Signal');
legend('Message Signal ---->');
grid on;
% Representation of the Carrier Signal
subplot(3,1,2);
plot(t,vc);
xlabel('Sample ----->');
ylabel('Amplitude ----->');
title('Carrier Signal');
legend('Carrier Signal ---->');
grid on;
% Representation of the PWM Signal
subplot(3,1,3);
plot(t,pwm,'red');
xlabel('Sample ----->');
ylabel('Amplitude ----->');
title('PWM Signal');
legend('PWM Signal ---->');
axis([0 1 0 2]);
grid on;
% Add title to the Overall Plot
ha = axes ('Position',[0 0 1 1],'Xlim',[0 1],'Ylim',[0 1],'Box','off','Visible','off','Units','normalized', 'clipping' , 'off');
text (0.5, 1,'\bf Pulse Width Modulation ','HorizontalAlignment','center','VerticalAlignment', 'top')