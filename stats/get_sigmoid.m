function g = sigmoid(z)
% z                 theta * X
% theta             feature weights
 
% Description:  Calcuaties sigmoid of given z
% ----------------------------------------------------------------------
%  V. Irsik, Email: vcirsik@gmail.com, 08.09.2020




g = 1 ./ (1 + exp(-z));



end
