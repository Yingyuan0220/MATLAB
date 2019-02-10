function [root, iters] = secant(func, x0, x1)
if x0 == x1
    error('x0 and x1 must be distinct');
end
eps = 10.^(-15);
iters = 0;
while abs(func(x1)) > eps && iters < 50 && x0 ~= x1
    guess = x1 - func(x1)*(x1-x0)/(func(x1)-func(x0));
    x0 = x1;
    x1 = guess;
    iters = iters + 1;
end
root = x1;