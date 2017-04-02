This code relies on:
- SIFT features for local features
- k-means for generation of the words via clustering
- SVM as classifier using the LIBSVM library

Following steps are to be followed:
1. Open terminal. 
1. Type chmod +x install_necessities to install the necessary libraries. 
2. Write ./install_necessities.
3. After this type chmod +x script.
4. And finally ./script.

The output will be available in the Used_dataset/test.
The dataset should have following structure, where all the images belonging to one class are in the same folder:

    .
    |-- path_to_folders_with_images
    |    |-- class1
    |    |-- class2
    |    |-- class3
    ...
    |    └-- classN

The folder can have any name.






### References:

#### Libsvm:

Chih-Chung Chang and Chih-Jen Lin, LIBSVM : a library for support vector machines. ACM Transactions on Intelligent Systems and Technology, 2:27:1--27:27, 2011. Software available at http://www.csie.ntu.edu.tw/~cjlin/libsvm

#### SIFT:
David G. Lowe, "Distinctive image features from scale-invariant keypoints," International Journal of Computer Vision, 60, 2 (2004), pp. 91-110.

#### sift.py:
Taken from http://www.janeriksolem.net/2009/02/sift-python-implementation.html

#### libsvm.py:
Addapted from easy.py contained in the LIBSVM packet by Chih-Chung Chang and Chih-Jen Lin.

[1]: https://en.wikipedia.org/wiki/Bag-of-words_model_in_computer_vision
[2]: http://www.vision.caltech.edu/Image_Datasets/Caltech101/
[3]: https://github.com/shackenberg/Minimal-Bag-of-Visual-Words-Image-Classifier/blob/master/learn.py
[4]: https://github.com/shackenberg/Minimal-Bag-of-Visual-Words-Image-Classifier/blob/master/classify.py
