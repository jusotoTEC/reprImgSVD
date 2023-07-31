# MATLAB Code from Numerical Experiments in Paper *"A method for selecting a representative image of a dataset based on the singular value decomposition"*

## Author

Pablo Soto-Quiros (https://www.tec.ac.cr/juan-pablo-soto-quiros) - Email: jusoto@tec.ac.cr

Pablo Soto-Quiros is an Associate Professor from the *Instituto Tecnológico de Costa Rica* (https://www.tec.ac.cr/) in Cartago, Costa Rica


## Description

* This repository contains the MATLAB code for numerical experiments presented in the paper "*A method for selecting a representative image of a dataset based on the singular value decomposition*". 
* A draft of this paper have been submitted or presentation at the **5th IEEE International Conference on BioInspired Processing, BIP 2023**. 
* In this paper, we present a novel approach for obtaining a representative image from a dataset  $\mathcal{M}$ based on the singular value decomposition (SVD). The proposed method consists of two phases: The first phase involves calculating a theoretical representative image $I_T$, which is obtained using some measure of central tendency. This image $I_T$ may not necessarily represent an image from the dataset $\mathcal{M}$. Therefore, in the second phase, we calculate the practical representative image $I_P\in\mathcal{M}$ by utilizing $I_T$ and the image subspace generated by $\mathcal{M}$ through a orthogonal basis, which spans the entire subspace $\mathcal{M}$. This basis is obtained using the SVD of the matrix formed by vectorizing the images in $\mathcal{M}$. Finally, we conduct simulations of the proposed method and compare it with existing methods in the literature.  The advantages of our approach are analyzed and demonstrated through numerical illustrations.

<p align="center"><img width="600" src="https://github.com/jusotoTEC/tensor_least_square/blob/main/img/image_1.png"></p>
  
<p align="center"><img width="600" src="https://github.com/jusotoTEC/tensor_least_square/blob/main/img/image_22.png"></p>


