In this project, i have tried to classify malignant and benign cancer cell using two supervised
machine learning algorithms(1. Random Forest, 2. SVM).

DATASET Link: http://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Wisconsin+(Diagnostic)

Attribute Information:
1) ID number
2) Diagnosis (M = malignant, B = benign)
3-32)

Ten real-valued features are computed for each cell nucleus:

a) radius (mean of distances from center to points on the perimeter)
b) texture (standard deviation of gray-scale values)
c) perimeter
d) area
e) smoothness (local variation in radius lengths)
f) compactness (perimeter^2 / area - 1.0)
g) concavity (severity of concave portions of the contour)
h) concave points (number of concave portions of the contour)
i) symmetry
j) fractal dimension ("coastline approximation" - 1)

Result:
Random Forest: 0.9766082
		   B   M
	       B 106   3
	       M   1  61


SVM: 0.9590643
		   B   M
	       B 105   5
	       M   2  59