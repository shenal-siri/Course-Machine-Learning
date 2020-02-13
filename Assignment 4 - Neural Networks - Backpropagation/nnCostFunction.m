function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);

% You need to return the following variables correctly 
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m
%
% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a 
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the 
%               first time.
%
% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%

%% Implementation

% m = number of samples (5000)
% n = number of features (400) x_1 ... x_n
% k = number of outputs / classes / labels (10)
% d = number of nodes in hidden layer (25)

% X      = (m x n+1) (NOTE: n+1 since we include x_0 = 1 bias term)
% y      = (m x 1)
% Theta1 = (d x n+1) (NOTE: n+1 since we include x_0 = 1 bias term)
% Theta2 = (k x d+1) (NOTE: d+1 since we include d_0 = 1 bias term)
% nn_params = (n+1*d*d+1*k x 1) (Theta 'rolled' in vector form)


%% Part 1

% Recode y to ground truth matrix Y
Y = zeros(m, num_labels);
for i = 1:m
    output_ind = y(i);
    Y(i, output_ind) = 1;
end

% Execute Forward Propagation(layer-by-layer)to get hypothesis matrix
a_1 = X;
a_1 = [ones(m,1) a_1];

z_2 = a_1 * Theta1';
a_2 = sigmoid(z_2);
a_2 = [ones(m,1) a_2];

z_3 = a_2 * Theta2';
h = sigmoid(z_3);


% Calculate unregularized cost
J_unreg = 0;
for k = 1:num_labels
    J_unreg = J_unreg +( -Y(:,k)' * log(h(:,k)) - (1-Y(:,k)') * log(1-h(:,k)) );
end

% Calculate regularization term and regularized cost
J_reg = sum(sum(Theta1(:,2:end).^2)) + sum(sum(Theta2(:,2:end).^2));

J = (1/m)*J_unreg + (lambda / (2*m))*J_reg;


%% Part 2

% Initialize 'accumulators'
Del_1 = zeros(size(Theta1));
Del_2 = zeros(size(Theta2));

% Execute Back Propagation for all training examples (vectorized)
% NOTE: this leverages / used the forward prop already executed in Part 1
a_3 = h;
delta_3 = a_3 - Y;

delta_2 = delta_3*Theta2(:,2:end) .* sigmoidGradient(z_2);

Del_2 = delta_3'*a_2;
Del_1 = delta_2'*a_1;
    
% Obtain unregularized gradient from accumulators
Theta1_grad = (1/m).* Del_1;
Theta2_grad = (1/m).* Del_2;


%% Part 3

% Initialize regularization term and set first (bias) column to 0
Theta1_reg = (lambda/m) .* Theta1;
Theta1_reg(:,1) = 0;
Theta2_reg = (lambda/m) .* Theta2;
Theta2_reg(:,1) = 0;

% Add regularization terms to gradients
Theta1_grad = Theta1_grad + Theta1_reg;
Theta2_grad = Theta2_grad + Theta2_reg;


% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
