function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C_range = [0.01 0.03 0.1 0.3 1 3 10 30];
sigma_range = C_range;
num_combos = length(C_range);
error = Inf(num_combos);

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

% Train model for each C and sigma combination
for i = 1:num_combos
    for j = 1:num_combos
        model = svmTrain(X, y, C_range(i), @(x1, x2) gaussianKernel(x1, x2, sigma_range(j)));
        
        % Calculate cross-validation error for the specific C and sigma
        % combo
        predictions = svmPredict(model, Xval);
        error(i,j) = mean(double(predictions ~= yval));
        
    end
end

% Find minimum error and its corresponding indices
min_error = min(error(:));
[C_idx,sigma_idx] = find(error==min_error);

% Return ideal C and sigma
C = C_range(C_idx);
sigma = sigma_range(sigma_idx);



% =========================================================================

end
