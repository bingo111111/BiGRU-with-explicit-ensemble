# BiGRU model for data dimensionality reduction and feature transformation (H. pylori dataset as an example)

## Overview
This repository contains code for training and testing multiple Bidirectional Gated Recurrent Unit (BiGRU) models using feature datasets derived from the H. pylori dataset. The models are constructed using the Keras library with a TensorFlow backend. The code includes various models that process different datasets and save the output to a CSV file for further analysis.

## Datasets
The following datasets are used for training the models:

1. H_PseAAC (T_H_PseAAC_8.mat): Protein sequences represented using Pseudo Amino Acid Composition (PseAAC).
2. H_AD (T_H_AD_7.mat): Protein sequences represented using  Autocorrelation Descriptor (AD).
3. H_AC (T_H_AC_9.mat): Protein sequences represented using Autocovariance (AC).
4. H_CT (T_H_CT.mat): Protein sequences represented using Conjoint Triad (CT).
5. H_LD (T_H_LD.mat): Protein sequences represented using Local Descriptor (LD).
6. H_MMI (T_H_MMI.mat): Protein sequences represented using Multivariate Mutual Information (MMI).

The datasets are loaded from `.mat` files, which are MATLAB data files.

## Dependencies
To run this code, you need the following Python libraries:
- keras 2.6.0  
- numpy 1.19.2 
- pandas 1.1.3 
- tensorflow 2.6.0
- scipy 1.5.2

## Steps

### 1. Directory Setup
Change the working directory to the folder where the data files are located:
```python
os.chdir('C:\\Users\\Personal\\Desktop\\daima\\Results_files\\H.pylori')  # Update path to your working directory
```

### 2. Indexing and Data Preprocessing
- The data is first shuffled randomly, and an index is created.
- The index is saved to a CSV file and later used to shuffle and process the datasets consistently.

### 3. Model Definitions
There are six different BiGRU models defined in the code. Each model has a different input shape depending on the dataset it processes. The models are defined as follows:

#### Model 1: PseAAC Dataset
- Input Shape: (56, 1)
- Bidirectional GRU with 4 units
- Binary Cross-Entropy loss
- Trains for 5 epochs with a batch size of 16

#### Model 2: AD Dataset
- Input Shape: (546, 1)
- Bidirectional GRU with 64 units
- Binary Cross-Entropy loss
- Trains for 5 epochs with a batch size of 16

#### Model 3: AC Dataset
- Input Shape: (234, 1)
- Bidirectional GRU with 16 units
- Binary Cross-Entropy loss
- Trains for 5 epochs with a batch size of 16

#### Model 4: CT Dataset
- Input Shape: (686, 1)
- Bidirectional GRU with 64 units
- Binary Cross-Entropy loss
- Trains for 5 epochs with a batch size of 16

#### Model 5: LD Dataset
- Input Shape: (1260, 1)
- Bidirectional GRU with 128 units
- Binary Cross-Entropy loss
- Trains for 5 epochs with a batch size of 16

#### Model 6: MMI Dataset
- Input Shape: (238, 1)
- Bidirectional GRU with 16 units
- Binary Cross-Entropy loss
- Trains for 5 epochs with a batch size of 16

### 4. Training the Models
Each of the six models is trained on its corresponding dataset using the specified configurations. The model is compiled with the Adam optimizer and trained for 5 epochs with a batch size of 16.

### 5. Concatenating the Output
The output of each model is predicted and concatenated into a single result array:
```python
rnn_output = np.concatenate((output1, output2, output3, output4, output5, output6), axis=1)
```

### 6. Saving the Output
The concatenated output is saved into a CSV file named `rnn_output.csv` for further analysis.

## How to Use
1. Update the working directory path in the script to point to your dataset location.
2. Run the script. It will preprocess the data, train six different BiGRU models on each dataset, and save the predictions in `rnn_output.csv`.
