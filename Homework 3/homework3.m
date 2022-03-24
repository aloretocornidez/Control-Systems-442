%{

Name: Alan Manuel Loreto Cornídez
Date: March 2nd, 2022
Assignemnent: Homework 3

%}


%{

z = c2d(g, sampleTime)

analogPoles = pole(g)
digitalPoles = pole(z)


analogZeros = zero(g)
digitalZero = zero(z)

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




