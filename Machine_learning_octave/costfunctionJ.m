function J = costfunctionJ(x,y,theta)

% x is the 'design matrix', with our training examples
% y is the class labels (output we are fitting to)

m = size(x,1);		% number of training examples
predictions = x*theta	% predictions of hypothesis on all m examples
sqrErrors = (predictions - y).^2;

J = 1/(2*m) * sum(sqrErrors);
