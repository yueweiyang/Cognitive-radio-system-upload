function [de_sig]=detect_signal(tran_sig,original_sig)

%generate detected signals

[N,M]=size(original_sig);
de_sig=zeros(1,M);

%detected signal is gereated by mapping a transmitted signal to the closest
%original signal
for ind=1:M
    sig1=tran_sig-original_sig(1,ind);
    [min_val,sig_ind]=min(sig1);
    de_sig(1,ind)=original_sig(1,sig_ind);
end

end