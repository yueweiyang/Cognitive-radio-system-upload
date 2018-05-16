function [SER,sig_energy]=plot_SER_ES2(N,M)

%specify the signal energy range 
SNR_db = -5:.5:5;
sig_energy = 10.^(SNR_db/10);
%sig_energy=[0.01:0.02:5];
b=length(sig_energy);
SER=zeros(1,b);

%for each energy find out the SER
for index=1:b
    es=sig_energy(1,index);
    SER(1,index)=SIM_MPSK(N,M,es);
i
end

%SNR_db=10.*log10(sig_energy);%convert SNR in dB

%plot graph of SER against SNR
semilogy(SNR_db,SER);
str=sprintf('SER against SNR when M=%d',M);
title(str);
xlabel('SNR/db');
ylabel('SER');