clear all;

M=4;
%generate array of original signal
mag=transpose(0:0.1:M);
sig_ind=transpose([0:0.1:M]);
original_signal=exp(-1j*2*pi/M*(sig_ind)).*mag;

x=transpose(real(original_signal));
y=transpose(imag(original_signal));

scatter(x,y);