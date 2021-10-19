clc 
clear 
xdel(winsid()) 
t = -100:1:100; 
fm = 0.02; 
x = cos(((2*%pi)*t)*fm); 
subplot(2,2,1); 
plot(t,x); 
xlabel("time in sec");
ylabel("x(t)"); 
title("continuous time signal"); 
fs1 = 0.02; 
n = -2:2; 
x1 = cos((((2*%pi)*fm)*n)/fs1); 
subplot(2,2,2); 
plot2d3('gnn',n,x1); 
set(gca(),"auto_clear","off") 
subplot(2,2,2); 
plot(n,x1,":"); 
title("discrete time signal x(n) with fs<2fm"); 
xlabel("n"); 
ylabel("x(n)"); 
fs2 = 0.04; 
n1 = -4:4; 
x2 = cos((((2*%pi)*fm)*n1)/fs2); 
subplot(2,2,3); 
plot2d3('gnn',n1,x2); 
set(gca(),"auto_clear","off") 
subplot(2,2,3); 
plot(n1,x2,":"); 
title("discrete time signal x(n) with fs=2fm"); 
xlabel("n"); 
ylabel("x(n)"); 
n2 = -50:50; 
fs3 = 0.5; 
x3 = cos((((2*%pi)*fm)*n2)/fs3); 
subplot(2,2,4); 
plot2d3('gnn',n2,x3); 
set(gca(),"auto_clear","off") 
subplot(2,2,4); 
plot(n2,x3,":"); 
xlabel("n"); 
ylabel("x(n)"); 
title("discrete time signal x(n) with fs>2fm"); 
