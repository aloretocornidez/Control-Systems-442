%{
Name: Alan Manuel Loreo Cornídex
Date: February 16, 2022
Assignment: Homework 3
%}



%{
num = [3600];
den = [1 84.853 3600];
time = 0.0035;

g_s = tf(num, den)


g_z = c2d(g_s, time, 'matched')

%}


%{

Csys = ss(A, B, C, D);


Dsys = c2d(Csys, Ts)


%}



A = [0, 1; -175, -5/2];
B = [0; 80];
C = [1, 0];
D = [0];

Ts = 0.003;

Csys = ss(A, B, C, D);

Dsys = c2d(Csys, Ts)


%Testing Analytical Solution
s = sym(s);
sI = s*eye(2);
phi = inv(sI - A);

ContEValues = eig(Csys.a)

DiscreteEValues = eig(Dsys.a)


