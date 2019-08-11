function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
% J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
% parameter for linear regression to fit the data points in X and y

m = length(y);
h = X * theta;
diff = h - y;
diff = diff .^ 2;
s = sum(sum(diff));

J = (1/(2*m)) * s;

end
