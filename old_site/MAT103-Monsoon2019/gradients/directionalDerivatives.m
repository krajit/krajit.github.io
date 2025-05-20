clc
clear all

% function and its gradient
f = @(x,y)(x.^2 +y.^3);
fx = @(x,y)(2*x);
fy = @(x,y)(3*y.^2);

% point of evaluation of gradient (x0,y0)
x0 = 2; y0 = 2;

% in the direction v = (a,b)
a = 1; b = -2;

% plot surface
h = 2;
[x,y] = meshgrid(x0-h:0.1:x0+h,y0-h:0.1:y0+h);
z= f(x,y);
surf(x,y,z,'edgecolor','interp' )
grid off
axis([x0-h x0+h y0-h y0+h min(min(z)) max(max(z)) ])
xlabel('x'); ylabel('y'); zlabel('f');
hold on

% plot xy plane
[x,y] = meshgrid(x0-h:1:x0+h,y0-h:1:y0+h);
mesh(x,y,zeros(size(x)), 'edgecolor','k')


% plot tangent plane
L = @(x,y)(f(x0,y0) + fx(x0,y0)*(x-x0) + fy(x0,y0)*(y-y0));
%surf(x,y,L(x,y));

% mark point (a,b)
plot3(x0,y0,0,'ro','linewidth',2);
plot3(x0,y0,f(x0,y0),'ko','linewidth',2)

% line in the direcition of v
t = linspace(-5,5,500);
xt = x0 + a*t;
yt = y0 + b*t;
zh = zeros(size(xt));
zf = f(xt,yt);
zl = L(xt,yt);
zhh = f(x0,y0)*ones(size(xt));
plot3(xt,yt,zh,'r','linewidth',2)
plot3(xt,yt,zf,'k','linewidth',2)
plot3(xt,yt,zl,'b','linewidth',2)
plot3(xt,yt,zhh,'--','linewidth',2)

hold off



