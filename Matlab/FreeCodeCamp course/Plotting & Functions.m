%Part A : 

clearvars, clc;

x = linspace(0,5);
% for element operation we need to write math
z = -1*(x-3).^2 + 10 % writign the equation -(x-3)^2 + 10 = y range 0, 5;

%plot(x,y, ".") % plot(x,y, "x")  ploting x,y axis values with character x
[max_value, max_index ] = max(z) % max(a) return the max or min of array. if needed also the index ;

% y = @(x) f(x) will create a function handle f(x) that we can call on any vlue
% for the value x, remember this x is different of the linspace like lamda
% y is a function handle, just name of a function
% lookup anonymous functions for further study 

y = @(x) (-1*(x-3).^2 + 10); 
tmp = y(7.657);

% Part B : how the curve change if we add 15 instead of 10 or x plus  by 5
%          instead of minus 3 
clearvars, clc;

x = linspace(-10, 10);
y = @(x) (-1*(x-3).^2 + 10);
y2 = @(x) (-1*(x-3).^2 + 15);
y1 = @(x) (-1*(x+5).^2 + 10);

figure(1)
plot(x, y(x),"g-", "MarkerSize", 1110  ) 

% set color to b(blue) and plot the poinst as *, . , - or --, +
% set markersize to 10
% remember that the plot is discrete because we are olotting 100 points 

xlabel("x") 
ylabel("y")
title("Comparision")
grid on
hold on

plot(x, y1(x), "rs") % set color to r(red) and plot the poinst as s(squares) or v(trianlge)

plot(x, y2(x), "bo") % set color to b(blue) and plot the poinst as o(circule)
hold off
legend("y","y1","y2","Location", "northeastoutside");

% remember we can just use legend("y","y1","y2") and move names manually


% Part C : subplots 

clearvars, clc;

x = linspace(-10, 10);
y = @(x) (-1*(x-3).^2 + 10);
y2 = @(x) (-1*(x-3).^2 + 15);
y1 = @(x) (-1*(x+5).^2 + 10);

subplot(2,2,1) % create space for m*n shapes and puts the plot in the i th position
plot(x, y(x))
xlabel("x") 
ylabel("y")
title("Comparision")
grid on
hold on

subplot(2,2,2)
plot(x, y1(x))
xlabel("x") 
ylabel("y")
title("Comparision")
grid on
hold on

subplot(2,2,3)
plot(x, y2(x))
;