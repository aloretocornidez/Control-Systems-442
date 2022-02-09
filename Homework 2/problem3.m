%%Problem 2


%%%%%%%%%%
%%Part a%%
%%%%%%%%%%
%{
num = 1
den = s^2 + 2s ^ 1
%}

num = [1];
den = [1 1];

figure
hold on
title('Step Response of Part A')
sys = tf(num, den);
step(sys)
legend({'$\frac{1}{s + 1}$'},'Interpreter','latex', 'FontSize', 16)
axis([0 10 0 1.5])
hold off





%%%%%%%%%%
%%Part b%%
%%%%%%%%%%
%{
num = 1
den = (s + 1)(s + 1) = s^2 + 2s ^ 1
%}

num = [1];
den = [1 2 1];

figure
hold on
title('Step Response of Part B')
sys = tf(num, den);
step(sys)
legend({'$\frac{1}{s^2 + 2s + 1}$'},'Interpreter','latex', 'FontSize', 16)
axis([0 10 0 1.5])
hold off



%%%%%%%%%%
%%Part c%%
%%%%%%%%%%
%{
num = 4
den = (s + 1)(s + 4) = s^2 + 5s + 4
%}
num = [4];
den = [1 5 4];

figure
hold on
title('Step Response of Part C')
sys = tf(num, den);
step(sys)
legend({'$\frac{4}{s^2 + 5s + 4}$'},'Interpreter','latex', 'FontSize', 16)
axis([0 10 0 1.5])
hold off





%%%%%%%%%%
%%Part d%%
%%%%%%%%%%
%{
num = 1
den = s^2 + 2 \zeta s + 1
\zeta = 0.707
\zeta = 0.45
\zeta = 0.1

%}
zeta = [0.707, 0.45, 0.1];
num = [1];

for i = 1:length(zeta)
figure
hold on

den = [1, 2 * zeta(i), 1];
sys = tf(num, den);
step(sys)

switch i
    case 1
        legend({'$\frac{ 1 }{ s^2 + \frac{ 2 }{ \sqrt{2} }s + 1 }$'},'Interpreter','latex', 'FontSize', 16);
    case 2
        legend({'$\frac{1}{s^2 + 0.9s + 1}$'}, 'Interpreter', 'latex', 'FontSize', 16);
    case 3
        legend({'$\frac{1}{s^2 + 0.2s + 1}$'}, 'Interpreter', 'latex', 'FontSize', 16);
    otherwise
end
        
    
axis([0 20 0 2])
hold off
end










