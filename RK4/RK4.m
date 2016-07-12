x=-0.9763;
t=0.5;
h=0.5;


k1 = h*f(x,t);
k2 = h*f(x+k1/2,t+h/2);
k3 = h*f(x+k2/2,t+h/2);
k4 = h*f(x+k3,t+h);

a = x + 1/6 * (k1 + 2*k2 + 2*k3 + k4);

disp(k1);
disp(k2);
disp(k3);
disp(k4);
disp(a);