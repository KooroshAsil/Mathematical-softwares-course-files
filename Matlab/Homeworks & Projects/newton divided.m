function [interpolation_poly] = NewtonInterpolation(f, points);
    n = length(points);
    
    xvalues = cellfun(@(p) p(1), points);
    yvalues = cellfun(@(p) p(2), points);
    
    differences = zeros(n, n);
    differences(:,1) = yvalues(:); % First column is y values
    
    
    for j = 2:n
        for i = 1:n-j+1
            differences(i,j) = (differences(i+1,j-1) - differences(i,j-1)) / (xvalues(i+j-1) - xvalues(i));
        end
    end
    
    
    syms x;
    interpolation_poly = differences(1,1); 
    product_term = 1;
    
    for j = 2:n
        product_term = product_term * (x - xvalues(j-1)); % Multiply by (x - x_{j-1})
        interpolation_poly = interpolation_poly + differences(1,j) * product_term;
    end
    
    interpolation_poly = simplify(interpolation_poly);
end

f = @(x) cos(2*x);
points = {[-5, f(-5)], [-1.4, f(-1.4)], [0.7, f(0.7)], [pi, f(pi)]};
g = matlabFunction(NewtonInterpolation(f, points));

%% Plot the function f(x) over a range
plot(xvalues, yvalues, "g.", 'MarkerSize', 15); % Magenta dots with size 15
grid on;
hold on;

fplot(f, [min(xvalues)-1, max(xvalues)+1], "b-", LineWidth=2); % Plot f(x) over a slightly larger range
xlabel('x');
ylabel('f(x)');
title('Plot of f(x) = cos(2x) with Specific Points');
hold on 

fplot(g,[min(xvalues)-1, max(xvalues)+1], "r-", LineWidth=2 )
ax = gca; % Get the current axes
ax.XAxisLocation = 'origin'; % Place the x-axis at the origin
ax.YAxisLocation = 'origin'; % Place the y-axis at the origin
ax.LineWidth = 1.5; % Make the axes thicker
ax.GridLineStyle = '--'; % Set grid lines to dashed
ax.GridAlpha = 0.5; % Set grid transparency
ax.FontSize = 12; % Increase font size for labels

hold off;
