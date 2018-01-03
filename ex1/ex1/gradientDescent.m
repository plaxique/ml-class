function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

num_theta = size(X,2);
gradient_step = zeros(num_theta, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    % compute gradient step for every theta 
    for theta_id = 1:num_theta

        hypothesis = theta' * X';
        h_minus_y = (hypothesis' - y);
        
        gradient_step(theta_id) = alpha * 1/m * sum(h_minus_y .* X(:, theta_id));
        
    end

%    fprintf('iteration %d\n', iter);

    % update thetas
    for theta_id = 1:num_theta

%        old_cost = computeCost(X,y,theta);
        theta(theta_id) = theta(theta_id) - gradient_step(theta_id);
%        fprintf('\tupdated theta %d, J(theta) : %0.6f -> %0.6f\n', theta_id, old_cost, computeCost(X,y,theta));

    end 


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
