function [noise]=wgn_gen(M)

%generate random white gaussian noise
noise_real=randn(1,M);
noise_img=j.*randn(1,M);

noise=noise_real+noise_img;

end



    
    