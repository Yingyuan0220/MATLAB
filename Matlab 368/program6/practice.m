f = @(x)x.^3 + 3*x.^2 - 5*x - 0.4*exp(x)
f1 = @(x)3*x.^2 + 6*x - 5 - 0.4*exp(x)
j = 0;
for i = [4.3, 5.1, 5.5, 5.7, 5.8, 5.9]
    j = j + 1;
    z(j) = fzero(@f,i) 
    n(j) = newton(f, f1, i)
end