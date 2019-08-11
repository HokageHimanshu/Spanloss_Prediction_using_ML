function [ Xnormal,means,range ] = featureNormalization( X )
% This functions is used to normalize the features/ parameters
%   Each parameter is subtracted with its mean and then divided with its
%   range (max value - min value)

colsize = size(X,2);
len = length(X);
Xnormal = X;
means = [0];
range = [1];

for i=2:colsize
    xtemp = (1:len,i);
    minval = min(xtemp);
    maxval = max(xtemp);
    meanval = mean(xtemp);
    means = [means meanval];
    rangeval = maxval - minval;
    range = [range rangeval];
    xtemp = (xtemp - meanval) / rangeval;
    Xnormal(1:len,i) = xtemp;  
end

end