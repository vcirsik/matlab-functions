function [theta, C_history] = gradientDescentReg(X, y, theta, alpha, num_iters)
% [theta, C_history] = gradientDescentReg(X, y, theta, alpha, num_iters)
% 
% 
% X                 feature vector or matrix if multiple features
% y                 predicted variable [continuous variable]
% num_iters         number iterations 
% alpha           	learning rate 
% theta             feature weights
% C_history         cost for each iteration
% 
% Description:  Performs gradient descent to learn theta 
% ----------------------------------------------------------------------
%  V. Irsik, Email: vcirsik@gmail.com, 01.09.2020



% initialize parameters
m = length(y); % number of training examples
C_history = zeros(num_iters, 1);
tmpDat = zeros(3, 1);

for iter = 1:num_iters

    % get weights
    for i = 1 : size(X,2)
        tmpDat(i,1) = theta(i)-alpha*(1/m)*(sum(((X*theta)-y).*X(:,i)));
    end
    
    % Save the cost C in every iteration    
    C_history(iter) = computeCostMulti(X, y, tmpDat);
    theta = tmpDat;
end

end
