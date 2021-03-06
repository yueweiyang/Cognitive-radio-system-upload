function [SER,sig_energy]=plot_SER_ES(N,M)

sig_energy=[0:1:20];
[a,b]=size(sig_energy);
SER=zeros(1,b);

for i=1:b
    es=sig_energy(1,i);
    SER(1,i)=SIM_BPSK(N,M,es);
end


plot(sig_energy,SER);
title('SER against SNR');
xlabel('SNR/db');
ylabel('SER');
