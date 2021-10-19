clear ;
t = 0:0.001:1;
fc = input ("Enter Carrier Signal Frequency = ");
c = (2)*asin(sin(2*%pi*fc*t));
fm = input("Enter Message Signal Frequency = ");
m = sin(2*%pi*fm*t);
n = length(c);
for i = 1 : n
 if (m(i) >= c(i))
  ppm(i) = 0;
 else (m(i) <= c(i))
  ppm(i)=1;
 end
end
figure;
subplot(3 ,1 ,1);
plot(t,m);
xlabel("Time");
ylabel("Amplitude");
label("xyz")
title("Message Signal");
subplot(3, 1 ,2);
plot(t,c);
xlabel("Time");
ylabel("Amplitude");
title("Carrier Singal");
for i = 1 : n
 if (ppm(i) == 1 && ppm(i+1) == 0)
 ppm(i) = 1;
 else
 ppm(i) = 0;
 end
end
subplot(3, 1, 3);
plot(t,ppm');
xlabel("Time");
ylabel("Amplitude");
replot([0 -1 1 3]);
xlabel("Time");
ylabel("Amplitude");
title ("Pulse Position Modulation Signal");
