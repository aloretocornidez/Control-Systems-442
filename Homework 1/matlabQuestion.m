clf

tau = 0.1; %setting a time consant variable from out transfer funciton.

T = tau*[ 1/5, 1/35, 1/70]; %testing different sample rates.
numerator = [10, 0];

w = (0.1 : 0.05: 100);


%{
Begin Generating the frequency response of the transfer function at different sample rates.
%}

denominator = [1, -exp(-10*T(1))];
sys = tf(numerator, denominator, T(1)); %%sample rate 1/5 seconds

[magnitude, angle] = bode(sys, w); %generate bode plots with magnitude and frquency response.

mm = magnitude(:);

plot(w, T(1)*mm, 'm')

hold on



denominator = [1, -exp(-10*T(2))];
sys = tf(numerator, denominator, T(2));%%sample rate 1/35 seconds

[magnitude, angle] = bode(sys, w); %generate bode plots with magnitude and frquency response.

mm = magnitude(:);

plot(w, T(2)*mm, 'g')



denominator = [1, -exp(-10*T(3))];
sys = tf(numerator, denominator, T(3)); %sample rate 1/70

[magnitude, angle] = bode(sys, w); %generate bode plots with magnitude and frquency response.

mm = magnitude(:);

plot(w, T(3)*mm, 'c')



nc = 1;

dc = [0.1, 1];

w = 0.1:0.05:100;

[mc, ac, w] = bode(nc, dc, w);

plot(w, mc, 'r')

hold off







