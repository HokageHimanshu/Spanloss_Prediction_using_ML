function [ Xnew ] = normalizeInput(X,means,range)
% This function is used when parameters are normalized, so that the we can normalize the input values also. 
%   The X is a row vector i.e, 1*m dimension, so are means and range.

colsize = size(X,2);
Xnew = X;

for i=2:colsize
    Xnew(:,i) = (X(:,i) - means(:,i))/range(:,i);    
end

end