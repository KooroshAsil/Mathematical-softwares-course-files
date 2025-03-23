%% Bubble Sort
clearvars, clc; 

function [arr, elapsed] = BubbleSort(arr);
tic
n= length(arr);
for i= 1:n-1
    for j = 1:(n-i)
        if arr(j) > arr(j+1)
            t = arr(j+1);
            arr(j+1) = arr(j);
            arr(j) = t;
        end
    end
end

elapsed = toc;

end 
array = randi([0, 10000], 1, 1000);

%% Time elapsed with our BubbleSort
clc;
[result_bub, elapsed_bub] = BubbleSort(array);

%% Time elapsed with matlab sort

tic
result_mat = BubbleSort(array);
elapsed_mat = toc;

%% comparision 

disp("Matlab elapsed time: ");
disp(elapsed_mat);
disp("Our Bubblesort elapsed time: ");
disp(elapsed_bub);

%% for some input result :
%{
    Matlab elapsed time: 
    0.0181
Our Bubblesort elapsed time: 
    0.0363 
}%
