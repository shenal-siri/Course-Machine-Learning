Assignment 1 - Linear Regression
------

Assignment 1 focuses on implementing Linear Regression using one variable (i.e, population to predict business revenue) and multiple variables (i.e, real estate information to predict property valuation). `ex1.pdf` contains a full description of the scope and methodology of this assignment.

The files which have been edited / completed by me are summarized below:


#### 1. Linear Regression with One Variable

| Filename            | Description                                                         |
| ------------------- | ------------------------------------------------------------------- |
| `ex1.m` | Main exercise script - sequentially runs through the assignment | 
| `warmUpExercise.m` | Basic Identity function in MATLAB |
| `plotData.m` | Function to generate scatter plot |
| `computeCost.m` | Calculates cost function for current parameters |
| `gradientDescent.m` | Implements gradient descent - updating parameters until convergence |

#### 2. Linear Regression with Multiple Variables

| Filename            | Description                                                         |
| ------------------- | --------------------------------------------------------------------|
| `ex1_multi.m` | Optional exercise script  - sequentially runs through the assignment |
| `featureNormalize.m` | Performs feature scaling and normalization on the dataset to speed up gradient descent |
| `computeCostMulti.m` | Calculates cost function for current paramaters (vectorized) |
| `gradientDescentMulti.m` | Implements gradient descent (vectorized) - updating parameters until convergence |
| `normalEqn.m` | Calculates parameters using closed-form solution for linear regression |
