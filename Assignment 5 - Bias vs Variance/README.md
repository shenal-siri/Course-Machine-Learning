Assignment 5 - Bias vs Variance
------

Assignment 5 explores the concept of bias-variance tradeoffs in model development. Linear and polynomial regression models are trained on a simple dataset (predicting water flow from a reservoir based on change in water level). The data is split into train, cross-validation and test sets, with learning curves used to compare the trained models in terms of bias-variance tradeoff. Selection of the regularization parameter is also explored. 

 `ex5.pdf` contains a full description of the scope and methodology of this assignment.

The files I have edited / completed are summarized below:


#### 1. Bias-Variance Tradeoff

| Filename | Description |
| -------- | ----------- |
| `ex5.m` | Main exercise script - runs through the assignment step-by-step |
| `linearRegCostFunction.m` | Calculates linear regression cost and gradient, for current parameters, with regularization |
| `learningCurve.m` | Computes training set and cross-validation set errors  |
| `polyFeatures.m` | Maps original 1-Dimensional feature vector into p-Dimensional polynomial feature matrix (where p = polynomial degree) |
| `validationCurve.m` | Computes training set and cross-validation set errors for a range of regularization values |
