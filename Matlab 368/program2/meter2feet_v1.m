function result = meter2feet_v1(meters)
% Converts the given number of meters to feet & inches
in = 39.3701 * meters;
ft = floor(in/12);
in = in - ft*12;
result = [ft ; in];