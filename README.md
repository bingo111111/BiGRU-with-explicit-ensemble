# MultiEns

# MATLAB 2019b

# Python 3.8

# Code: "Feature_extraction" is used for feature extraction and "Classifier" is used for LightGBM model construction.

# Dataset: training sets:H.pylori and S.cerevisiae; test sets: Independent_test(C. elegans, E. coli, H. sapiens, M. musculus), PPIs_network(Disease-specific, One-core network, Wnt-related pathway).

# Firstly, it is important to note that MATLAB is used to generate the feature vectors, with the exception of the protein feature vectors associated with the CT feature encoding technique, which are produced using Python. Python is primarily utilized for data downscaling and predicting protein-protein interactions.

# 1.	Feature Coding: The code for generating feature vectors is stored in the Feature_extraction folder within the Code directory. The subdirectories PseAAC, AD, AC, CT, LD, and MMI contain the necessary code to generate feature vectors corresponding to the six feature coding techniques: PseAAC, AD, AC, CT, LD, and MMI, respectively. You can execute the code to produce the corresponding result files, which are complete and ready for use. Alternatively, you may directly utilize the result files saved in the Results_files folder. The result files for the H. pylori dataset are located in the H. pylori subdirectory, while the result files for the S. cerevisiae dataset can be found in the S. cerevisiae subdirectory.

# 2.	Data Dimensionality Reduction. As outlined in the manuscript, the Bidirectional Gated Recurrent Unit (BiGRU) model is employed for data dimensionality reduction. The relevant code is available in the BiGRU.py file, located in the Feature_extraction folder within the Code directory. The code is fully functional and can be executed directly after adjusting the current working directory path.

# 3.	Model Prediction. In this paper, LightGBM has been selected as the classifier for predicting protein-protein interactions after evaluating the performance of various classifiers during the optimization process. The relevant code is available in the LightGBM.py file, located in the Classifier folder within the Code directory. The code is fully functional and can be executed directly after adjusting the current working directory path.
