Assignment 6 - Support Vector Machines
------

Assignment 6 focuses on the functionality and implementation of Support Vector Machines. Part 1 explores using SVMs on linearly separable data (using a linear kernel), non-linear SVMs (using a Gaussian kernel), and tuning regularization and Gaussian bandwidth parameters via grid search. Part 2 focuses on a practical application of SVMs in spam email classification. This includes preprocessing and cleaning the email data, feature extraction and classification using a SVM.

 `ex6.pdf` contains a full description of the scope and methodology of this assignment.

The files I have edited / completed are summarized below:

#### 1. Support Vector Machines

| Filename | Description |
| -------- | ----------- |
| `ex6.m` | Main exercise script - runs through the assignment step-by-step |
| `gaussianKernel.m` | Calculates Gaussian similarity metric between two data points |
| `dataset3Params.m` | Executes grid search to find best-performing regularization and bandwidth parameters |


#### 2. Spam Email Classification

| Filename | Description |
| -------- | ----------- |
| `ex6_spam.m` | Main exercise script - runs through the assignment step-by-step |
| `processEmail.m` | Preprocesses and tokenizes an input email into a vector of word indices |
| `emailFeatures.m` | Converts an input vector of word indices into a feature vector (which can be fed to the SVM)  |
