clc
clear all


f = @(x,y)(x .* exp(x.*y));
T =@(x,y)( x+ y);


[x,y] = meshgrid(0:0.1:2,  -1:0.1:1);

surf(x,y,f(x,y));

hold on

mesh(x,y,T(x,y),'edgecolor','k')
