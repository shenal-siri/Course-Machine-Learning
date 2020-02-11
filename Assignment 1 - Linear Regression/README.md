Assignment 1 - Linear Regression
------

`ex1.pdf` contains a full description of the scope and methodology of this assignment. A summary of the key files are provided below:

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
| `gradientDescentMulti.m` | Implements gradient descent (vectorized) - updating theta until convergence |
| `normalEqn.m` | Calculates parameters using closed-form solution of linear regression |
