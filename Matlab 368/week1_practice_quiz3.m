data = [ 2 7 4 3; 3 4 7 6; 8 3 5 1; 1 4 2 6; 7 2 2 5 ];
info = [ 1 2 3 4; 3 2 4 1; 2 4 1 3; 4 3 1 2 ];
vec = [ 4 1 9 5 6 3 2 7 8 ];

q2a = data(2,:)'
q2b = data(:,[1:3])
q2c = [data(1,:), data(2,:); info(3,:), info(4,:)]
vec(2:2:8) = 0
info(:,2) = data(3,:)'
data = [data(:,4), data(:,2), data(:,3), data(:,1)]