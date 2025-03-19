clc, clearvars;

column_array = 1:33; % generating a column array

array = linspace(1, 79, 17) ;% generating an array starting from 1 to 5 with 17 values 

sample_array = [12, 3, 45, -23.3, "Koorosh"]; % creating a sample

A = [2, 3, 5;
    23, 1,6];

% matlab will follow every rule of linear algerba

B = [12.3 , 4
    sqrt(2), -1.9;
    -7, -3];

% use . for elementwise operation in matrices and arrays 

B2 = B.^2 ;% squaring a matrice

om = ones(3, 5); % ones(m,n), creating a matrix by shape m,n

zm = zeros(5,2); % zeros(m,n), creating a matrix by shape m,n

unite_matrix = eye(4); % eye(m) creating a unite matrix shape squre m

sample_array2 = 1:2.4:10; % start_from : step_size : till_ending;

B31_valeu= B(3,1); % extracting from matrice B at (m,n)

B(2,2) = 49; % assining to a cell of matrix B at (m,n)

sample_array3 = B(2, :); % B[m, :] getting all the values in the m'nth row  
sample_array4= B(:, 1); %  B[:, n] getting all the values in the n'th column

sample_array5 = B2(2,1:2); %B[a:b:, n]; getting all the values in the n'th column only from row a to b
sample_array6 = B2(1:2,2); %B[m, a:b]; getting all the values in the m'th row only from column a to b

At = A.'; % transpose of matric A 

C = A*B;

random_positive_matrix = rand([4,5]); % rand([m,n]) create a random values matrix (( positive between 0,1))
random_matrix = randn([4,5]) ;% randn([m,n]) create a random values matrix (( positive and negative between -1,1))
random_vector = rand(3); % rand(x) creating a random values vevtor size x

G = rand([5,5]) + 10;
IG = inv(G); % inv(A) inversing matrix A;
detG = det(G); % det(A) determinant of matrix A 