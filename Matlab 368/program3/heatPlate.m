function temp = heatPlate(TA, TB)
A = [1 -1/3 0 -1/3 0 0 0 0 0;
     -1/3 1 -1/3 0 -1/3 0 0 0 0;
     0 -1/2 1 0 0 -1/2 0 0 0;
     -1/3 0 0 1 -1/3 0 -1/3 0 0;
     0 -1/4 0 -1/4 1 -1/4 0 -1/4 0;
     0 0 -1/3 0 -1/3 1 0 0 -1/3;
     0 0 0 -1/2 0 0 1 -1/2 0;
     0 0 0 0 -1/3 0 -1/3 1 -1/3;
     0 0 0 0 0 -1/3 0 -1/3 1];
 b = [TA/3; 0; 0; 0; 0; 0; 0; 0; TB/3];
 temp = A\b;
 temp = [temp(1:3,:),temp(4:6,:),temp(7:9,:)];