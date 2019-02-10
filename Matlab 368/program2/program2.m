%% CS368 Summer 2018 Programming Assignment 2 
% * Name: Yingyuan Zhang
% * Due Date: Friday, July 6 by 11:59 pm

clear
header = 'Choose function to test:';
option1 = 'calculateGPA';
option2 = 'calculatePercent - user input';
option3 = 'calculatePercent - file I/O';
option4 = 'quit';

choice = 0;

while choice ~= 4
   choice = menu(header, option1, option2, option3, option4);
   
   switch choice
       case 1
           filename = input('Enter filename: ', 's');
           gpa = calculateGPA(filename);
           disp(['GPA = ' num2str(gpa)]);
           % replace the line above with your code to implement this option
           
       case 2
           exams = input('Enter exams scores:' );
           homeworks = input('Enter homework scores: ');
           quizzes = input('Enter quiz scores: ')
           % replace the line above with your code to implement this option
           disp(['Score = ', num2str(calculatePercent(exams, homeworks, quizzes)),'%']);
           
       case 3
           % replace the line above with your code to implement this option
           input_file_name = input('Enter input filename: ', 's');
           output_file_name = input('Enter output filename: ', 's');
           input_file = load(input_file_name);
           student_ID = input_file(:,1);
           exams = input_file(:,2:4);
           homeworks = input_file(:,5:10);
           quizzes = input_file(:,11:24);
           percent = calculatePercent(exams, homeworks, quizzes);
           output_string = [student_ID percent];
           save(output_file_name, 'output_string', '-ascii');
       otherwise
           disp('quit')
   end
    
end