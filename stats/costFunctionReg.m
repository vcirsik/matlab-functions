function C = costFunctionReg(X, y, theta)
% C = CostFunctionReg(X, y, theta)
% 
% X           feature vector or matrix if multiple features
% y           predicted variable 
% theta       feature weights
%
% Description:  Compute cost for regression with given theta and 
% feature/s X
% ----------------------------------------------------------------------
%  V. Irsik, Email: vcirsik@gmail.com, 01.09.2020

% initialize parameters
m = length(y); % number of training examples
C = 0;

% calculate cost for given theta
C = 1/(2*m)*(sum(((X*theta)-y).^2));



end
