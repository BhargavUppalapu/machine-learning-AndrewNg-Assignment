function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
n=size(X(1,:));
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

%htheta = sigmoid(X*theta);
%regularization = zeros(size(theta));
%regularization(2:size(regularization))  =  ((lambda/(2*m)) * sum(theta(2:size(lambda)).*theta(2:size(lambda))));
%J = ( (1/m)  *  sum(((y.*-1) .* log(htheta)) - ((1.-y) .* log(1.-htheta))) ) + regularization;
%error = htheta - y;
%grad = ((1/m)) * ((X' * error));
%regularization = zeros(size(theta));
%regularization(2:size(regularization))  = ((lambda/m) .* theta(2:size(theta)));
%grad = grad + regularization;


htheta = sigmoid(X*theta);
error = htheta - y;
grad = ((1/m)) * ((X' * error));

regularization = zeros(size(theta));
regularization(2:size(regularization))  =  ((lambda/(2*m)) * sum(theta(2:size(theta)).^2));
%J = (1/m)  *  sum(((y.*-1) .* log(htheta)) - ((1.-y) .* log(1.-htheta)));
J = ( (1/m)  *  sum(((y.*-1) .* log(htheta)) - ((1.-y) .* log(1.-htheta))) ) + regularization;
regularization = zeros(size(theta));
regularization(2:size(regularization))  = ((lambda/m) .* theta(2:size(theta)));
grad = grad + regularization;



% =============================================================

end
