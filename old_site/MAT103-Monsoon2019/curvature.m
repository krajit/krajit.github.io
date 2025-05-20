clc
clear all

% defining t as symbolic variable
syms t

% defining the curve
x = t; y = t^2; z = 0*t;

% vector form of the curve
r = [x y z];

rp = diff(r,t); % r prime
rpp = diff(r,t,2);  % r double prime
T = rp./norm(rp); % Tangent vector
N = diff(T,t)/norm(diff(T,t)); % Normal vector

% curvature formula
k = norm(cross(rp,rpp))./norm(rp).^3;

s = linspace(-2,2,100);
xs = double(subs(x,t,s));
ys = double(subs(y,t,s));
zs = double(subs(z,t,s));

plot3(xs,ys,zs,'linewidth',2)
view(0,90)

% point at which we need to draw the osculating circle
s = 1;

p = subs(r,t,s);
Tp = double(subs(T,t,s)); % tangent vector
Np = double(subs(N,t,s)); % normal vector

hold on
quiver3(p(1),p(2),p(3), Tp(1),Tp(2),Tp(3),'linewidth',2)
quiver3(p(1),p(2),p(3), Np(1),Np(2),Np(3),'linewidth',2)

% center of osculating cirlce
kp =double(subs(k,t,s)); % curvature
cp  = double(p + (1/kp)*Np) % center of cirlcle

% osculating circle
t = linspace(0,2*pi,100);
x = (1/kp)*cos(t);   x = x + cp(1);
y = (1/kp)*sin(t);    y = y + cp(2);
z = 0*t;             z = z + cp(3);

plot3(x,y,z,'linewidth',2 )



























