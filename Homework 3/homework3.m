%{

Name: Alan Manuel Loreto Cornídez
Date: March 2nd, 2022
Assignemnent: Homework 3

%}

pkg load control;
pkg load signal;

clc

num = [ 3600 ]
den = [ 1 84.853 3600 ]
sampleTime = 0.0035
frequency = 1 / sampleTime


g = tf(num, den)



z = c2d(g, sampleTime)

analogPoles = pole(g)
digitalPoles = pole(z)


analogZeros = zero(g)
digitalZero = zero(z)





