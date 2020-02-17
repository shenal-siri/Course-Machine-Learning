Assignment 7 - K-Means Clustering and Principal Component Analysis
------

Assignment 7 explores the unsupervised learning technique of K-Means Clustering and the dimensionality reduction technique of Principal Component Analysis (PCA). In Part 1, K-Means clustering is used to compress a 24-bit colour image by learning the 'best' 16 colours which can be used to represent the image. In Part 2, PCA is used to reduce a large dataset of human facial images (1024 features) by evaluating the principal 100 features. PCA is also implemented as a tool to aid in the visualization of a higher-dimensional dataset.

 `ex7.pdf` contains a full description of the scope and methodology of this assignment.

The files I have edited / completed are summarized below:

#### 1. K-Means Clustering

| Filename | Description |
| -------- | ----------- |
| `ex7.m` | Main exercise script - runs through the assignment step-by-step |
| `findClosestCentroids.m` | For K-Means, finds the closest centroid for each example in the input dataset |
| `computeCentroids.m` | For K-Means, calculates new centroids based on mean of the examples allocated |
| `kMeansInitCentroids.m` | For K-Means, randomly initializes the first centroids (without duplication) |

#### 2. Principal Component Analysis

| Filename | Description |
| -------- | ----------- |
| `ex7_pca.m` | Main exercise script - runs through the assignment step-by-step |
| `pca.m` | Computes the covariance matrix for the dataset and runs MATLAB's Singular Value Decomposition (SVD) to compute its eigenvectors and eigenvalues |
| `projectData.m` | Uses the result of SVD to project the data into a lower-dimensional space |
| `recoverData.m` | Projects lower-dimensional data back into the higher-dimensional space |
