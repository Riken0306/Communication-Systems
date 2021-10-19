clear ;
clc ;
close ;
Ec =10 , wm =2* %pi *100 , wc =2* %pi *10000 , f =100;
fs =100000;
x =0:1/ fs :0.008; // time axis setting

deff("[y1]= f(x)" ,"y1=Ec*cos( ( wc*x )+0.25*sin(wm*x))");
subplot(2 ,3 ,1);
fplot2d(x,f);
xlabel("Time" , "fontsize" , 3);
ylabel("Amplitude" , "fontsize" , 3, "color" , "red");
title("Modulation index = 0.25");

deff("[y2]= f(x)" ,"y2=Ec*cos( ( wc*x )+0.5*sin(wm*x))");
subplot(2 ,3 ,2);
fplot2d(x,f);
xlabel("Time" , "fontsize" , 3);
ylabel("Amplitude" , "fontsize" , 3, "color" , "red");
title("Modulation index = 0.5");

deff("[y3]= f(x)" ,"y3=Ec*cos( ( wc*x )+0.75*sin(wm*x))");
subplot(2 ,3 ,3);
fplot2d(x,f);
xlabel("Time" , "fontsize" , 3);
ylabel("Amplitude" , "fontsize" , 3, "color" , "red");
title("Modulation index = 0.75");

deff("[y4]= f(x)" ,"y4=Ec*cos( ( wc*x )+sin(wm*x))");
subplot(2 ,3 ,4);
fplot2d(x,f);
xlabel("Time" , "fontsize" , 3);
ylabel("Amplitude" , "fontsize" , 3, "color" , "red");
title("Modulation index = 1");

deff("[y5]= f(x)" ,"y5=Ec*cos( ( wc*x )+1.25*sin(wm*x))");
subplot(2 ,3 ,5);
fplot2d(x,f);
xlabel("Time" , "fontsize" , 3);
ylabel("Amplitude" , "fontsize" , 3, "color" , "red");
title("Modulation index = 1.25");

deff("[y6]= f(x)" ,"y6=Ec*cos( ( wc*x )+1.5*sin(wm*x))");
subplot(2 ,3 ,6);
fplot2d(x,f);
xlabel("Time" , "fontsize" , 3);
ylabel("Amplitude" , "fontsize" , 3, "color" , "red");
title("Modulation index = 1.5");
