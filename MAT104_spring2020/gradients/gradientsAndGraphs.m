clc
clear all

% function and its gradient
f = @(x,y)(x.^2 +y.^2);
fx = @(x,y)(2*x);
fy = @(x,y)(2*y);

%f = @(x,y)(sin(x) + exp(x.*y));
%fx = @(x,y)(cos(x) + y.*exp(x.*y));
%fy = @(x,y)(x.*exp(x.*y));

% point of evaluation of gradient (a,b)
a = 0; b = 0;


% plot surface
h = 1;
[x,y] = meshgrid(a-h:0.1:a+h,a-h:0.1:a+h);
z= f(x,y);
%surf(x,y,z,'edgecolor','interp')
contour3(x,y,z,100)
grid off
axis([a-h a+h b-h b+h min(min(z)) max(max(z)) ])
xlabel('x'); ylabel('y'); zlabel('f');
hold on

% plot gradient fields
[x,y] = meshgrid(a-h:0.2:a+h,a-h:0.2:a+h);
quiver(x,y,fx(x,y),fy(x,y),1,'linewidth',2)

