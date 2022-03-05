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







A = [ -5/2 1; -350/2, 0];
B = [0; 80];
C = [1 0];
D = [0];
Ts = 0.003;

Csys = ss(A, B, C, D);


Dsys = c2d(Csys, Ts)


%Finding EigenValyes of the systems

ContEValues = eig(Csys.a)

DiscreteEValues = eig(Dsys.a)


