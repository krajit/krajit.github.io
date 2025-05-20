clc
clear all

syms t
x = t; y = t^2; z = 0*t;

r = [x y z];

rp = diff(r,t);
rpp = diff(r,t,2);
k = norm(cross(rp,rpp))./norm(rp).^3;
T = rp./norm(rp);
N = diff(T,t)./norm(diff(T,t));
B = cross(T,N);

    


% lets plot the osculating circles
for s = -4:0.1:4;
    
    ss = linspace(-4,4,100);
    xs = subs(x,t,ss);
    ys = subs(y,t,ss);
    zs = subs(z,t,ss);

    plot3(xs,ys,zs, 'linewidth',2)
    axis([-10 10 -10 10 -2 2])   
    view(0,90)
    hold on
        
    p = double(subs(r,t,s))  % point on the curve
    Tp = double(subs(T,t,s));
    Np = double(subs(N,t,s))
    Bp = double(subs(B,t,s));

    quiver3(p(1),p(2),p(3),Tp(1),Tp(2),Tp(3),0,'linewidth',2,'color','m');
    quiver3(p(1),p(2),p(3),Np(1),Np(2),Np(3),0,'linewidth',2,'color','r');
    quiver3(p(1),p(2),p(3),Bp(1),Bp(2),Bp(3),0,'linewidth',2,'color','k');

    kp = double(subs(k,t,s))
    cp = p + (1/kp)*Np

    tt = linspace(0,2*pi,100);
    xs = (1/kp)*cos(tt);
    ys = (1/kp)*sin(tt);
    zs = zeros(size(xs));

    A = [Np' Tp' Bp'];
    xyz = [xs;ys;zs];
    xyz = A*xyz;
    xs = xyz(1,:) + cp(1);
    ys= xyz(2,:) + cp(2);
    zs= xyz(3,:) + cp(3);

    %osculating cirlcle
    plot3(xs,ys,zs,'--','linewidth',2)

    pause(0.01);
    
    hold off
end















