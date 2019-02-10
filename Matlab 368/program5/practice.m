y1 = @(x)(x - 3).^2 + 5;
y2 = @(x)x.*sin(x) + 10;
y3 = @(x)y2(x) - y1(x);
a = fzero( @(x)y3(x) , 0.5)
b = fzero( @(x)y3(x) , 4)
integral(@(x)y3(x), a, b)