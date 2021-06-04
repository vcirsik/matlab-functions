function  [pval, zObs] = fisherZcorr(r1,r2,nr1,nr2)

% [pval, zObs] = fZcorr(r1,r2,nr1,nr2)
%
% Inputs:
%	r1   - correlation coefficient (r or rho)
%	r2   - correlation coefficient (r or rho)
%	nr1  - sample size used to generate r1
%	nr2  - sample size used to generate r2
%
% Output:
%   zObs - Fisher's transformation of r to z'	
%   pval - significance value
%
% Description: The function compares two independent correlation coefficients for
% significance via Fisher's Z.
%  
% -----------------------------------------------------------------------
% V. Irsik, Email: vcirsik@gmail.com, 07.24.2020

% check inputs
nInputs = nargin;
if nInputs ~= 4, fprintf('Error: wrong number of inputs defined!\n'); return; end
if r1 > 1 || r2 > 1, fprintf('Error: correlation coefficients incorrectly defined!\n'); return; end
if length(nr1) > 1 || length(nr2) > 1 , fprintf('Error: sample size should be a scalar!\n'); return; end

% get Fisher's Z for r1 and r2
z1 = 0.5*(log(1+r1)-log(1-r1));
z2 = 0.5*(log(1+r2)-log(1-r2));

% get z statistic
zObs = (z1-z2)/sqrt(1/(nr1-3)+1/(nr2-3));

% get p value: one tailed test
pval = 1-(normcdf((abs(zObs)),0,1));


