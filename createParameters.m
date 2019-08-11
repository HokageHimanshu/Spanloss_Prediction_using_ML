function [x] = createParameters(len)
% GENERATES parameters for training function
% First 3 cols of x have link type, age, link length and last col has
% spanloss value

x = ones(len,4);

x(1:len,1) = randi([0,1],len,1);
x(1:len,2) = randi([0,1000],len,1);
x(1:len,3) = randi([1,1000],len,1) +  rand(len,1);
x(1:len,4) = (0.275 * x(1:len,3)) + 2;

% for i=1:len
%     if x(i,1) == 1
%         x(i,4) = (0.5*x(i,3))+2;
%     end
% end

end