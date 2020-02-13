function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

%% Implementation

% m = number of samples
% n = number of features: x_1 ... x_n 
% X     = (m x n+1) (NOTE: n+1 since we include x_0 = 1 column)
% y     = (m x 1)
% theta = (n+1 x 1) (NOTE: n+1 since we include theta_0 term)

% Calculate element-wise sigmoid for all X*Theta
% h = (m x 1)
h = X*theta;

% Calculate regularization term (summation from theta_1 to theta_n, exclude theta_0)
% regularization = (1 * 1)
regularization = (lambda/(2*m)) * (theta(2:end)'*theta(2:end));

% Calculate the cost for the current theta values, including the regularization term
% J = (1 * 1)
J = (1/(2*m)) * (h-y)' * (h-y) + regularization;

% Separate x_0 from x_1 to x_n, to prevent regularizing theta_0
% X0 = (m x 1)
% X  = (m x n)
X0 = X(:,1);
X = X(:,2:end);

% Calculate partial derivatives separately for theta_0 and theta_1 to theta_n
% grad0 = (1 x 1)
% grad  = (n x 1)
grad0 = (1/m) * X0'*(h-y);
grad = (1/m) * X'*(h-y) + (lambda/m * theta(2:end));

% Concatenate into final partial derivative vector
% grad = (n+1 x 1)
grad = [grad0; grad];












% =========================================================================

grad = grad(:);

end
