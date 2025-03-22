clearvars, clc

%% Part A : Generate 10 random values from 1 to 5, count the number of 3's 

%randi([IMIN,IMAX], N ,n) 
% returns n random values of the shape N*M*... between IMIN And IMAX
% if just N passes will return array of size N*n
random_numbers = randi([1,5], 1,10);
n_equal_three = sum(random_numbers == 3 );
percent = n_equal_three/length(random_numbers)*100;


%% Part B : display wow if the answer is more then 20%

if percent > 20
    disp("WOW! ((with randi))");
elseif percent == 20
    disp("Just about right! ((with randi))");
else
    disp("Not good! ((with randi))")
end;


%% Part C : do the same with foor loop 

count = 0;
random_numbers_f = randi([1,5], 1,10);
for x = random_numbers_f
    if x == 3
        count = count + 1;
    end;
end;
percent_f = count/length(random_numbers_f)*100;

if percent_f > 20
    disp("WOW! ((with loop))");
elseif percent_f == 20
    disp("Just about right! ((with loop))");
else
    disp("Not good! ((with loop))")
end;

