# MultiEns
Protein-protein interaction prediction using bidirectional GRUs with explicit ensemble

## Environments

- matlab 2019b
- python 3.8
- keras 2.6.0  
- numpy 1.19.2 
- pandas 1.1.3 
- tensorflow 2.6.0
- scipy 1.5.2
- scikit-learn 0.23.2
- lightgbm 4.3.0

## Folders
- ./Code contains scripts for both feature extraction and classification tasks.
- ./Dataset contains all dataset files and has converted the data into a format that can be directly read by the MATLAB code.
- ./Results_files contains the initial set of feature vectors that have been transformed using feature coding techniques for protein pairs from the H. pylori and S. cerevisiae datasets.

## Datasets
1. The H. pylori dataset for binary PPI prediction provided in [Martin et al. 2005](https://pubmed.ncbi.nlm.nih.gov/15319262/).
2. The S. cerevisiae dataset for binary PPI prediction provided in [Guo et al. 2008](https://academic.oup.com/nar/article/36/9/3025/1104168).
3. Independent_test (the C. elegans dataset, the E. coli dataset, the H. sapiens dataset, the M. musculus dataset) for binary PPI prediction provided in [Zhou et al. 2011](https://link.springer.com/chapter/10.1007/978-3-642-22456-0_37).
4. PPIs_network(The Disease-specific dataset for binary PPI prediction provided in [Amar et al. 2015](https://academic.oup.com/nar/article/43/16/7779/1077876); The One-core network dataset for binary PPI prediction provided in [Yang et al. 2006](https://www.sciencedirect.com/science/article/pii/S0021925819466337); The Wnt-related pathway dataset for binary PPI prediction provided in [Stelzl et al. 2005](https://www.sciencedirect.com/science/article/pii/S0092867405008664)).


## Steps

### 1. Feature Coding
The code for generating feature vectors is stored in the Feature_extraction folder within the Code directory. The subdirectories PseAAC, AD, AC, CT, LD, and MMI contain the necessary code to generate feature vectors corresponding to the six feature coding techniques: PseAAC, AD, AC, CT, LD, and MMI, respectively. The execution codes for different datasets are distinguished by their file suffixes. For example, the file PseAAC_H.m corresponds to the H. pylori dataset, PseAAC_S.m corresponds to the S. cerevisiae dataset, PseAAC_Ce.m corresponds to the C. elegans dataset, PseAAC_Ec.m corresponds to the E. coli dataset, PseAAC_Hs.m corresponds to the H. sapiens dataset, PseAAC_Mm.m corresponds to the M. musculus dataset, PseAAC_Dis.m corresponds to the Disease-specific dataset, PseAAC_One.m corresponds to the One-core network dataset, and PseAAC_Wnt.m corresponds to the Wnt-related pathway dataset. Execute the code to produce the corresponding result files, which are complete and ready for use. 

### 2. Data Dimensionality Reduction and Feature Transformation
The Bidirectional Gated Recurrent Unit (BiGRU) model is employed for data dimensionality reduction and feature transformation. This implementation utilizes the TensorFlow library, which is installed in Python. The model inputs the feature vector obtained from the initial feature coding step. Alternatively, you can directly use the result files saved in the Results_files folder. The result files for the H. pylori dataset are located in the H. pylori subdirectory, while those for the S. cerevisiae dataset can be found in the S. cerevisiae subdirectory. The model outputs the hidden state encoded by the BiGRU layer. Finally, the resulting subset of optimal features for the six categories is simply concatenated and saved. The relevant code is available in the BiGRU.py file, located in the Feature_extraction folder within the Code directory. The code is fully functional and can be executed directly after adjusting the current working directory path.

### 3. Model Prediction
LightGBM has been chosen as the classifier for predicting protein-protein interactions. This implementation utilizes the lightgbm library, which is installed in Python. Five-fold cross-validation is performed using the StratifiedKFold function from the scikit-learn library. The model's input the optimal features obtained from the BiGRU.py file. The output includes the values of the predictive effectiveness evaluation metrics calculated by a custom function. The relevant code is available in the LightGBM.py file, located in the Classifier folder within the Code directory. The code is fully functional and can be executed directly after adjusting the current working directory path.

## Note
MATLAB is used to generate the feature vectors, except for the protein feature vectors associated with the CT feature coding technique, which are produced using Python. Python is primarily employed for data downscaling and predicting protein-protein interactions.

