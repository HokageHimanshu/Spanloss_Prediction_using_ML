function [alpha,iterations] = retAlphaAndIt(X,y,theta)
% This functions calculates the gradient descent for various values of
% aphas and iterations and then return the most appropriate one. This is
% more of the hit and trial method.

%   We are first creating the list of values of alpha and iterations

alphalist  = [0.00000001];
for i=2:8
    temp = 10*alphalist(i-1);
    alphalist = [alphalist temp];
    
end

iterlist = 50:5000:50000;

l = 50;
testvar = createParameters(l);
xtest = [ones(length(testvar),1) testvar(:,1:3)];
ytest = testvar(:,4);
ytestcal = ones(size(ytest));

% finding the right alpha and iterations 

mintheta = 100000 * ones(size(theta));
minsum = 1000000;
alpha = -1;
iterations =0;

for i =1:length(alphalist)
    for j=1:length(iterlist)
        calgradtheta = gradientDescent(X, y, theta, alphalist(i), iterlist(j));
        
        % cal diff for xtest and comparing it with ytest
        ytestcal = xtest*calgradtheta;
        ytestcal = ytestcal - ytest;
        diffsquaresum = sum(ytestcal.^2);
        if(diffsquaresum<minsum)
           minsum = diffsquaresum;
            iterations = iterlist(j);
            alpha = alphalist(i); 
        end
        
 
%         if(sum(calgradtheta<mintheta)==length(theta))
%             mintheta = calgradtheta;
%             iterations = iterlist(j);
%             alpha = alphalist(i);
%         end
    end
end

end