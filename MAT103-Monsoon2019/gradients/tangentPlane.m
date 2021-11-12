clc
clear all

% function and its gradient
f = @(x,y)(2*x.^2 +y.^2);
fx = @(x,y)(4*x);
fy = @(x,y)(2*y);

% point of evaluation of gradient (a,b)
a = 1; b = 1;

% plot surface
h = 2;
[x,y] = meshgrid(a-h:0.1:a+h,a-h:0.1:a+h);
z= f(x,y);
%surf(x,y,z, 'facealpha',0.5, 'edgealpha',0 )
surf(x,y,z,'edgecolor','interp' )
grid off
axis([a-h a+h a-h a+h min(min(z)) max(max(z)) ])
xlabel('x'); ylabel('y'); zlabel('f');
hold on

% plot tangent plane
L = @(x,y)(f(a,b) + fx(a,b)*(x-a) + fy(a,b)*(y-b));
surf(x,y,L(x,y));

