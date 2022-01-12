%specifying input/output impedance, IP3, P1dB in dBm 
clear all
R = 50; 
gain = 5; 
IIP3 =  20;
P1dB = 10; 
vip3 = sqrt(2*10^((IIP3-30)/10)*R); 
vp1dB = sqrt(2*10^((P1dB-30)/10)*R); 

%specifying polynomical coefficents 
k1 = 10^(gain/10); % linear gain 
k3 = -4/3*(k1/vip3^2); %cubic coefficent
k5 = -(0.10875*k1+(3/4)*(vp1dB^2))*((8/5)*(1/vp1dB^4)); %fifth order coefficent

%hpa purposes - uncomment which back off to use 
% 1dB
% GindB = -1.626571802255640;
% GoutdB = 3.911826101838731; 

% 7dB
%GindB = -7.626571802255640;
%GoutdB = 9.911826101838730;

%30dB
GindB = -30.626571802255640 ;
GoutdB = 32.911826101838730 ;
