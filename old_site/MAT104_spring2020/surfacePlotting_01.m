clc
clear all

[v,u] = meshgrid(0:pi/20:4*pi,pi:pi/20:2*pi);
x = (2 + cos(u)).*cos(v);
y =  (2+cos(u)).*sin(v);
z = v+sin(u);
surf(x,y,z)