function main

# set ODE parameters
beta=0.1;  # interaction paramter
gamma=0.05;   # the recovery rate

function xdot = sir_eqn(x,t)
    % Define variables
    S = x(1);
    I = x(2);
    R = x(3);

    % Define ODEs
    dS=-beta*S*I;
    dI=beta*S*I-gamma*I;
    dR=gamma*I;

    % Return gradients
    xdot = [dS,dI,dR];
endfunction


% setup time and initial conditions
t = linspace(0, 200, 2001);#+.1;

# initial population distribution in S, I, R
x0=[0.99,0.01,0];

% solve the ode
x = lsode("sir_eqn",x0, t);

% view graph
plot(t,x(:,1),"-r",t,x(:,2),"-g",t,x(:,3),"-b")
xlim([0 200])
xlabel("Time","fontweight","bold")
ylabel("Number","fontweight","bold")
h = legend("S","I","R");
legend(h,"show")

hold on

endfunction