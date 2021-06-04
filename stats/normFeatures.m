function [X_norm, mu, sigma] = normFeatures(X)

% [X_norm, mu, sigma] = NormFeatures(X)
% 
% sigma           standard dev of each feature vector
% mu              mean of each feature vector
% X_norm          normalized feature vector of size(X)
%
%        
%
% Description:  Returns a normalized version of X where
% the mean value of each feature is 0 and the standard 
% deviation is 1. 
% ----------------------------------------------------------------------
%  V. Irsik, Email: vcirsik@gmail.com, 01.09.2020

% set parameters
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));


mu     = mean(X,1);
sigma  = std(X,0,1);

for i = 1 : size(X,2)
    X_norm(:,i) = (X(:,i)-mu(1,i))/sigma(1,i);
end




% ============================================================

end
