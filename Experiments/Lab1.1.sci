clf ()
clc
Ec =10 ,wm =2* %pi *100 , wc =2* %pi *10000 , fs =100000 , f =100;
x =0:1/ fs :((2/ f) -(1/ fs));
deff("[y1]= f(x)" ,"y1=Ec*(1+0.5*(sin(wm*x)))*sin(wc*x)");
subplot(3 ,1 ,1);
fplot2d(x,f);
xlabel("Time" , "fontsize" , 3);
ylabel("Amplitude" , "fontsize" , 3, "color" , "red");
title("Modulation index = 0.5");
deff("[y2]= f(x)" ,"y2=Ec*(1+(sin(wm*x)))*sin(wc*x)");
subplot(3 ,1 ,2);
fplot2d(x,f);
xlabel("Time" , "fontsize" , 3);
ylabel("Amplitude" , "fontsize" , 3, "color" , "red");
title("Modulation index = 1");
deff("[y3]= f(x)" ,"y3=Ec*(1+1.5*(sin(wm*x)))*sin(wc*x)");
subplot(3 ,1 ,3);
fplot2d(x,f);
xlabel("Time" , "fontsize" , 3);
ylabel("Amplitude" , "fontsize" , 3, "color" , "red");
title("Modulation index = 1.5");
