function [C, grad] = logrCostFunction(theta, X, y, lambda)
 
% X                 feature vector or matrix if multiple features
% y                 predicted variable 
% alpha           	learning rate 
% theta             feature weights
% lambda            regularization parameter
%
% Description:  Compute cost and gradients for logistic regression with regularization
% ----------------------------------------------------------------------
%  V. Irsik, Email: vcirsik@gmail.com, 01.09.2020


% initialize parameters
m = length(y); % number of training examples

C = 0;
grad = zeros(size(theta));

g = sigmoid(X*theta);

% calculate cost with given thetas
C = 1/m*(sum((-y.*(log(g)))-((1-y).*log(1-g)))) + lambda/(2*m)*(sum(theta(2:end).^2));

% get gradients for all thetas; theta 0 is updated below
grad = 1/m*X'*(g-y)+(lambda/m.*theta);

% get gradient for theta 0
grad(1) = 1/m*(sum((g-y).*X(:,1)));

grad = grad(:);

end
