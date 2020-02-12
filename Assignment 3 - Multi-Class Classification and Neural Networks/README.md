Assignment 3 - Multi-Class Classification and Neural Networks
------

Assignment 3 tackles the classic problem of classifying hand-written digits through two different approaches. Part 1 extends the logistic regression implemented in Assignment 2 to handle one-vs-all / multi-class classification. Part 2 implements and trains a Neural Network to perform digit classification, improving accuracy by leveraging non-linear hypotheses.

 `ex3.pdf` contains a full description of the scope and methodology of this assignment.

The files I have edited / completed are summarized below:


#### 1. Multi-Class Logistic Classification

| Filename | Description |
| -------- | ----------- |
| `ex3.m` | Main exercise script - runs through the assignment step-by-step |
| `lrCostFunction.m` | Calculates logistic regression cost and gradient, for current parameters, with regularization (fully vectorized implementation) |
| `oneVsAll.m` | Trains parameters for each logistic classifier |
| `predictOneVsAll.m` | Predicts / classifies data based on learned parameters (multiple classes i.e, digits from 0 to 9) |


#### 2. Neural Network Classifier

| Filename | Description |
| -------- | ----------- |
| `ex3_nn.m` | Main exercise script - runs through the assignment step-by-step |
| `predict.m` | Implements feedforward propagation (using provided neural network parameters) and predicts / classifies data  |
