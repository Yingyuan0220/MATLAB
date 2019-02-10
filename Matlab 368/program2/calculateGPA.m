function result = calculateGPA(filename)
% Calculate the GPA from a file with grade and credits of each course in it
file = load(filename);

grade_points = sum(file(:,2).*file(:,3));

credits = sum(file(:,3));
result = grade_points./credits;

