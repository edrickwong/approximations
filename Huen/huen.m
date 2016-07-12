w0 = 1;
t0 = 0;
a = 0;
b = 5;
h = 1/2;
t = [a:h:b];

intervals = (b-a)/h;

w = zeros(size(t));
w_prime = zeros(size(t));

exact_ans = zeros(size(t));

w(1) = w0;
w_prime(1) = w0;
t(1) = t0;

for i = 1:intervals
    w(i+1) = w(i) + h*f(w(i),t(i));
    w_prime(i+1) = w(i) + (h/2)*(f(w(i),t(i))+f(w(i+1),t(i+1)));
    w(i+1) = w_prime(i+1);
end

for i = 1:intervals + 1
    exact_ans(i) = exact(t(i));
end

final = [t;w_prime;abs(exact_ans-w_prime)]';

disp(final);