%{

Name: Alan Manuel Loreto Cornídez
Date: March 2nd, 2022
Assignemnent: Homework 3

%}

n = [1];
d = [1 1 0];
sampleTime = 0.02

g = tf(n, d)



z = c2d(g, sampleTime)

analogPoles = pole(g)
digitalPoles = pole(z)

analogZeros = zero(g)
digitalZero = zero(z)