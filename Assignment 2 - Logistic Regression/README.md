Assignment 2 - Logistic Regression
------

Assignment 2 implements Logistic Regression in MATLAB. Part 1 involves creating a logistic regression model to predict a university applicant's chances of admission based on 2 test exam scores. Part 2 introduces regularization and feature mapping in order to tackle a more complicated dataset (predicting microchip pass/fail rates).

 `ex2.pdf` contains a full description of the scope and methodology of this assignment.

The files which have been edited / completed by me are summarized below:


#### 1. Logistic Regression

| Filename | Description |
| -------- | ----------- |
| `ex2.m` | Main exercise script - runs through the assignment step-by-step | 
| `plotData.m` | Function to generate scatter plot for intial data visualization |
| `sigmoid.m` | Applies Sigmoid function to all elements in an input matrix |
| `costFunction.m` | Calculates logistic regression cost and gradient, for current parameters |
| `predict.m` | Predicts / classifies data based on learned parameters |

#### 2. Regularized Logistic Regression

| Filename | Description |
| -------- | ----------- |
| `ex2_reg.m` | Main exercise script - runs through the assignment step-by-step |
| `costFunctionReg.m` | Calculates logistic regression cost and gradient, for current parameters - with regularization |