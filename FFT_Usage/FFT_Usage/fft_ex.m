%
%   Matlab script - FFT Example
%                                   Edited by Meng-Lin Li, 10/05/2007
%


fs = 10; 
T = 1/fs
L = 5000;
t = (-L:L-1)*T
f = fs*(-L:L-1)/L;
sampled = -sinc(2.*t).^2./8%-sinc(t)./4;  % sampled cosine ,time domain
   % number of points in sampled cosine

% Fourier transform

SAMPLED = fftshift(fft(sampled)); % spectrum of sampled cosine, freqeuncy domain, complex
mag_SAMPLED = abs(SAMPLED);   % magnitude
pha_SAMPLED = angle(SAMPLED); % phase

figure
subplot(2,1,1)
plot(t, sampled);
hold
stem(t, sampled,'r');
xlabel('Time');
title('Sampled cosine (time domain)');

subplot(2,1,2)

plot(f, mag_SAMPLED);
xlim([-5 5])
xlabel('Frequency');
title('Spectrum of 5 MHz cosine (frequency domain)')
%set(gca,'Xtick',[0 5 10 20 30 40 50 60 70 80 90 95 100]);
print -djpeg fft_example.jpg





