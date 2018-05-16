function [SER,sig_energy]=plot_BER_ES(N,M1,M2,M3)

%specify the signal energy range 
sig_energy=[0.1:0.1:4];
[a,b]=size(sig_energy);
SER1=zeros(1,b);
SER2=zeros(1,b);


%for each energy find out the SER
for i=1:b
    es=sig_energy(1,i);
    SER1(1,i)=SIM_BPSK(N,M1,es);
    SER2(1,i)=SIM_BPSK(N,M2,es);
    i
end

SNR_db=10.*log10(sig_energy);%convert SNR in dB

BER1=SER1./M1;
BER2=SER2./M2;

%plot graph of SER against SNR
plot(SNR_db,SER1,SER2);
str=sprintf('BER against SNR');
title(str);
xlabel('SNR/db');
ylabel('BER');