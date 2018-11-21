function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

total_cost = 0;
for a = 1:m
    cost = sum(X(a, :)  .* theta') - y(a);
    cost = cost ^ 2;
    total_cost = total_cost + cost;
    end

J = total_cost / (2*m);




% =========================================================================

end
