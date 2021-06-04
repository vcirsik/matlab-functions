function p = predict_logistic(theta, X, threshold)

% X                 feature vector or matrix if multiple features
% theta             feature weights
% threhold          sets value g must equal or exceed for p == 1
% 
% Description:  Predict whether the label is 0 or 1 using learned logistic 
% regression parameters theta
% ----------------------------------------------------------------------
%  V. Irsik, Email: vcirsik@gmail.com, 08.09.2020

% initialize parameters
m = size(X, 1); % Number of training examples
p = zeros(m, 1);


z = X*theta;
g = sigmoid(z);

p = double(g>= threshold);


end
