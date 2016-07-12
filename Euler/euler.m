w0 = 1;
t0 = 0;
a = 0;
b = 5;
h = 1/4;
t = [a:h:b];

intervals = (b-a)/h;

w = zeros(size(t));

exact_ans = zeros(size(t));

w(1) = w0;
t(1) = t0;

for i = 1:intervals
    w(i+1) = w(i) + h*f(w(i),t(i));
end

for i = 1:intervals + 1
    exact_ans(i) = exact(t(i));
end

final = [t;w;abs(exact_ans-w)]';

disp(final);