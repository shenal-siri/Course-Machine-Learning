Assignment 4 - Neural Networks - Backpropagation
------

Assignment 4 takes a deeper dive into the single-hidden layer neural network used to classify hand-written digits in Assignment 3. Methods are implemented to execute forward propagation, calculate cost, and use backpropagation to update the neural network parameters. Regularization, random initialization and gradient checking are also leveraged in the neural network's implementation.

 `ex4.pdf` contains a full description of the scope and methodology of this assignment.

The files I have edited / completed are summarized below:


#### 1. Backpropagation

| Filename | Description |
| -------- | ----------- |
| `ex4.m` | Main exercise script - runs through the assignment step-by-step |
| `nnCostFunction.m` | Returns cost and gradient by executing forward propagation and backpropagation respectively. Also implements regularization |
| `sigmoidGradient.m` | Calculates gradient of the Sigmoid activation function (used in backpropagation) |
| `randInitializeWeights.m` | Randomly initializes weights for a neural network layer (i.e, symmetry breaking) |
