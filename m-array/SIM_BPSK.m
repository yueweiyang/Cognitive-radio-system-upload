function [SER]=SIM_MPSK(N,M,es)

%Generate transmitting signals
signal=zeros(1,M);
angle1=2*pi/M;
mag=sqrt(es);
error_num=zeros(1,N);

for sig_ind=1:M
    angle2=angle1*sig_ind;
    signal(1,sig_ind)=mag*(cos(angle2)+j*sin(angle2));
    x_sig(1,sig_ind)=real(signal(1,sig_ind));
    y_sig(1,sig_ind)=imag(signal(1,sig_ind));
end

%figure();
%scatter(x_sig,y_sig);



%Calculate the signal error rate (SER)
for test_ind=1:N
    
    noise=wgn_gen(M); %generate white gaussian noise
    tran_sig=signal+noise; %generate output signal
    de_sig=detect_signal(tran_sig,signal); %generate detected signal
    
    error_sig=signal-de_sig; 
    error_num(1,test_ind)=nnz(error_sig);%find out number of error signals
    
    
end

SER=mean(error_num);

end

