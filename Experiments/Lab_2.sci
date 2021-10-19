clear ;
clc ;
close ;
Ec =10 , wm =2* %pi *100 , wc =2* %pi *10000 , f =100;
fs =100000;
kf= input ( ' Enter the Frequency deviation constant (k): ')
Em= input ( ' Enter the amplitude of the message signal (Em): ' )
de1 = kf*Em ;
x =0:1/ fs :((2/ f) -(1/ fs)); // time axis setting
mf=de1/f; // modulation index of FM
disp (mf , ' Modulation Index of FM' )
//Message singal
previousprot = funcprot (1)
deff (" [m]= f ( x ) " ,"m=cos(wm*x )")
subplot (3 ,1 ,1)
fplot2d(x,f)
xlabel(" t ime " , " fontsize" , 3);
ylabel("Amplitude " , " fontsize" , 3, "color" , "red");
title("Message signal")
//Carrier Signal
funcprot (0)
deff (" [ c ]= f ( x ) " ," c=Ec*cos(wc*x ) ")
subplot (3 ,1 ,2)
fplot2d (x,f)
xlabel (" t ime " , " fontsize" , 3);
ylabel ("Ampl i tude " , " fontsize" , 3, "color" , "red");
title ("Carrier Signal")
//Modulated Signal
funcprot (0)
deff (" [ y]= f ( x ) " ,"y=Ec*cos( ( wc*x )+mf*sin(wm*x))")
subplot (3 ,1 ,3)
fplot2d (x,f)
xlabel (" time " , "fontsize" , 3);
ylabel ("Amplitude " , " fontsize" , 3, "color" , "red");
title (" Frequency Modulated Signal ")
