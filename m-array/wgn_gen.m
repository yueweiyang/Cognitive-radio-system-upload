function [noise]=wgn_gen(M)

%generate random white gaussian noise
noise_real=randn(1,M);
noise_img=randn(1,M);

noise_power=noise_real.^2+noise_img.^2;
coeef=sqrt(noise_power);

noise=(noise_real+j.*noise_img)./coeef;

end



    
    