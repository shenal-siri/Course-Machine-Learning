Assignment 8 - Anomaly Detection and Recommender Systems
------

Assignment 8 introduces machine learning systems to tackle anomaly detection and making recommendations. In Part 1, a Gaussian anomaly detection algorithm is implemented to detect failing servers on a network - based on a dataset of performance characteristics. This is implemented on an easily-visualizable 2D dataset, as well as a more complicated higher-dimensional dataset. In Part 2, a collaborative filtering model is trained on a dataset of movie ratings and used to recommend movies to watch based on the user's past movie ratings.

 `ex8.pdf` contains a full description of the scope and methodology of this assignment.

The files I have edited / completed are summarized below:

#### 1. Anomaly Detection

| Filename | Description |
| -------- | ----------- |
| `ex8.m` | Main exercise script - runs through the assignment step-by-step |
| `estimateGaussian.m` | Calculates the Maximum Likelihood Estimate (MLE) of the Gaussian parameters (mean and standard deviation) for the training dataset |
| `selectThreshold.m` | Iterates through threshold values and selects the best threshold for anomaly detection (in terms of F1 score) using the cross-validation dataset.  |

#### 2. Recommender Systems

| Filename | Description |
| -------- | ----------- |
| `ex7_cofi.m` | Main exercise script - runs through the assignment step-by-step |
| `cofiCostFunc.m` | Calculates the collaborative filtering cost and gradient (for both parameters and features), with regularization terms added in as the exercise is completed. This implementation is vectorized |

