clf ()
clc
Ec =10 , ma =1.5 , wm =2* %pi *100 , wc =2* %pi *10000 , fs =100000 , f =100;
x =0:1/ fs :((2/ f) -(1/ fs));
deff("[m]= f(x)" ,"m=sin(wm*x)");
subplot(3 ,1 ,1);
fplot2d(x,f);
xlabel("Time" , "fontsize" , 3);
ylabel("Amplitude" , "fontsize" , 3, "color" , "red");
title("Message Signal");
deff("[c]= f(x)" ,"c=Ec*sin(wc*x)");
subplot(3 ,1 ,2);
fplot2d(x,f);
xlabel("Time" , "fontsize" , 3);
ylabel("Amplitude" , "fontsize" , 3, "color" , "red");
title("Carrier Signal");
deff("[y]= f(x)" ,"y=Ec*(1+ma*(sin(wm*x)))*sin(wc*x)");
subplot(3 ,1 ,3);
fplot2d(x,f);
xlabel("Time" , "fontsize" , 3);
ylabel("Amplitude" , "fontsize" , 3, "color" , "red");
title("Amplitude Modulated Signal");
