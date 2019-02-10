x = [0 0.25 0.75 1.25 1.5 1.75 1.875 2 2.125 2.25]
y = [1.2 1.18 1.1 1 0.92 0.8 0.7 0.55 0.35 0]

xx = [0:0.01:2.25];
coef = polyfit(x, y, 9)
y1 = polyval(coef, xx)
y2 = spline(x, y, xx)

plot(xx, y1, 'g', xx, y2, 'b')