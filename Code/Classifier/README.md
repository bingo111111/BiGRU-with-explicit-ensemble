# LightGBM for binary prediction of protein interactions (H. pylori dataset as an example)

## Overview
This project uses LightGBM, a powerful gradient boosting framework, to classify protein sequences from H. pylori. The features for training the LGBM classifier are derived from the output of BiGRUs. The code performs 5-fold Stratified K-Fold cross-validation to evaluate LightGBM performance across several metrics, including accuracy, precision, NPV, sensitivity, specificity, MCC, F1 score, and ROC AUC. The results are saved in CSV files for further analysis.

## Datasets
The data has been pre-processed  from the output of BiGRUs and additional datasets:
- rnn_output.csv: Output from the BiGRU.
- H_index.csv: Contains indices for reordering the dataset to match the BiGRU output.
- T_H_PseAAC_8.mat: A MATLAB file containing protein sequence features represented using PseAAC. This is used to generate the target labels for classification.

## Dependencies
To run this code, you need the following Python libraries:
- numpy 1.19.2 
- pandas 1.1.3 
- scipy 1.5.2
- scikit-learn 0.23.2
- lightgbm 4.3.0

## Steps

### 1. Directory Setup
Set the working directory to the folder containing the data files:
```python
os.chdir('C:\\Users\\Personal\\Desktop\\daima\\Results_files\\H.pylori')
```

### 2. Data Loading
- Load the H_index.csv for indexing and shuffling.
- Load the T_H_PseAAC_8.mat data (protein sequence features) using `scipy.io.loadmat`.
- Shuffle and reorder the data using the index.

### 3. Data Preprocessing
The target variable `y` is extracted from the first column of the H_PseAAC dataset. The feature matrix `X` is obtained from the rnn_output.csv file, which contains the BiGRUs' output.

### 4. LightGBM Training
The LightGBM classifier is trained using 5-fold Stratified K-Fold cross-validation:
- The `LGBMClassifier` is initialized and trained on each fold using the training data (`X_train`).
- The LightGBM's predictions are obtained using `predict_proba` for probability scores.

### 5. Performance Evaluation
The following performance metrics are calculated for each fold:
- Accuracy
- Precision
- NPV (Negative Predictive Value)
- Sensitivity
- Specificity
- MCC (Matthews Correlation Coefficient)
- F1 Score
- ROC AUC

These metrics are computed using the `calculate_performance` function and stored in a list for each fold.

### 6. Results Output
- The final metrics for all folds are averaged and printed.
- The results (including performance metrics and ROC AUC scores) are saved to a CSV file `LGBM.csv`.
- The predicted probabilities (`yscore`) and true labels (`ytest`) for each fold are saved in `yscore_LGBM.csv` and `ytest_LGBM.csv`, respectively.

### 7. Training Duration
The total training time is printed at the end.

## Metrics Description
- Accuracy: Proportion of correct predictions (both true positives and true negatives).
- Precision: Proportion of true positive predictions out of all positive predictions.
- NPV: Proportion of true negatives out of all negative predictions.
- Sensitivity (Recall): Proportion of true positive predictions out of all actual positive cases.
- Specificity: Proportion of true negative predictions out of all actual negative cases.
- MCC (Matthews Correlation Coefficient): A balanced measure of binary classification performance.
- F1 Score: Harmonic mean of precision and sensitivity, used for imbalanced datasets.
- ROC AUC: Area under the Receiver Operating Characteristic curve, used to evaluate the tradeoff between true positive rate and false positive rate.

## How to Use
1. Update the Working Directory Path: Ensure that the path in the script is updated to where your dataset files are stored:
    ```python
    os.chdir('path_to_your_data_folder')
    ```
2. Run the Script: The script will:
   - Preprocess the data
   - Train and evaluate the LightGBM using 5-fold cross-validation
   - Save performance metrics and predictions to CSV files.
   
3. View Results: After running the script, the following CSV files will be generated:
   - `LGBM.csv`: Contains performance metrics for each fold and their averages.
   - `yscore_LGBM.csv`: Predicted probabilities for each fold.
   - `ytest_LGBM.csv`: True labels for each fold.

## Example Output
After running the script, you will see the average performance metrics printed in the console, such as:
```
LGBM: acc=0.90, precision=0.91, npv=0.88, sensitivity=0.93, specificity=0.87, mcc=0.80, f1=0.91, roc_auc=0.92
...
acc=90.02% (+/- 1.12%)
precision=91.23% (+/- 1.09%)
npv=88.45% (+/- 2.01%)
sensitivity=93.21% (+/- 1.07%)
specificity=87.92% (+/- 2.45%)
mcc=80.23% (+/- 2.56%)
f1=91.12% (+/- 1.14%)
roc_auc=92.43% (+/- 1.45%)
```
