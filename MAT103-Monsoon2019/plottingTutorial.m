clc
clear all

[x,y] = meshgrid(-2*pi:0.5:2*pi,  -2*pi:0.5:2*pi);
Fx = y;
Fy = 1./x;

quiver(x,y,Fx,Fy,1, 'linewidth',2)
axis('equal')
