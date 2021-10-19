clc
clear all
close all
%% QPSK using MATLAB
data = [1 1 1 1 0 0 1 1]
last = length(data);
t=1;
for start = 1:last
    
    if (data(start)==0)     %% 00
        for j=0:0.1:19.9
            q(t)=0;
            o(t)=sin(j);    %% 0 degree
            t=t+1;
        end
        
    elseif (data(start)==1) %% 01
        for j=0:0.1:19.9
            q(t)=1;
            o(t)=cos(j);    %% 90 degree
            t=t+1;
        end
        
    elseif (data(start)==10) %% 10
        for j=0:0.1:19.9
            q(t)=2;
            o(t)=-sin(j);   %% 180 degree
            t=t+1;
        end
        
    else %(data(start)==11) %% 11
        for j=0:0.1:19.9
            q(t)=3;
            o(t)=-cos(j);   %% 270 degree
            t=t+1;
        end    
    end
end
subplot(2,1,1)
plot(q);
title('INPUT');
subplot(2,1,2)
plot(o);
title('OUTPUT');