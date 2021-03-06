# ckme136-capstone
# Capstone Project for Certificate in Data Analytics, Big Data and Predictive Analytics
# Predicting Hospital Overall Rating

## Project Abstract

### Overview

These are the files for my capstone project for Certificate in Data Analytics, Big Data and Predictive Analytics.

The project attempts to evalute the hospital quality to identify patterns that may have an impact on other outcomes of a health care system. In addition, the findings of these comparative analyses can recommend policies that are aimed at system-level improvements. Classification methods will be used to predict the overall hospital rating and identify the characteristics of hospitals. For predictive modelling, three classification algorithms will be explored: (1) decision tree, (2) Naïve Bayes, and (3) logistic regression.

### Documentation

Documents submitted as part of the evaluation process are located in the
[Submissions](/submit/) folder of this repo.

- [Abstract](/submit/abstract.pdf) - Initial Abstract
- [Literature Review and Methodology](/submit/lit_review.pdf) -
Initial review of related literature and details of project methodology
- [PowerPoint Presentation](/submit/CKME136.pdf) - Presentation slides

## Repository organization

- [Submissions](/submit/) - Documents submitted for evaluation
- [R_code](/code/) - Any code used in the project
- [Dataset](/dataset/) - Any dataset used in the project

### TO DO
1. Update this page with summaries of each section
2. Update other literature that validate the analysis
   - [Spertus J et al. Assessing Hospital Performance After Percutaneous Coronary Intervention Using Big Data. Circulation: Cardiovascular Quality and Outcomes 2016; 9(6): 659-669, PMID: 28263941, DOI: 10.1161/CIRCOUTCOMES.116.002826](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5341139/)

### Methodology

1. Decision Tree
   - Should attributes be converted using dummy variables? (e.g., For J48 classifier, should *h_imaging* be numericized?)

The first classification algorithm applied to the dataset was the decision tree model. With the prepared dataset, initial assessment of the model displayed high accuracy rate [Figure 1.0](/submit/fig1.png). However, the primary metric of success of recall were significantly lower compared to the overall accuracy rate. Since 85.5% of the class attribute were FALSE, the model was biased toward the FALSE instances and resulted in high overall accuracy at the cost of low recall on TRUE instances.

Figure 1.0: Summary of key metrics, default dataset (*nomRating.csv*)

| Size of Tree | Recall (T) | Accuracy |
| ------------ | ---------- | -------- |
|      29      |    68.8%   |   84.7%  |
|      37      |    67.8%   |   84.7%  |
|     117      |    72.2%   |   86.4%  |

Note: minNumObj = 50, 20, 2, respectively.

We explored two approaches to resolve the imbalance issue. The first approach was to over-sample TRUE instances, and the second approach was to down-sample FALSE instances. We discarded the over-sampling option because we had large enough dataset to down-sample and over-sampling makes overfitting more likely. Proceeding with the down-sampling approach, 964 random samples were drawn from the FALSE instances to down-sample the dataset to have 1:1 True-False ratio.

With the downsized dataset, J48 Classifier from Weka was used to construct decision tree model. Within different parameters present in Weka, minNumObj parameter was used to obtain models with different tree sizes. Summary of key metrics on [Figure 1.1 and Figure 1.2] shows that down-sampling significantly enhanced recall of the model.

Next step: choose the model with smallest tree size among six mode with various tree sizes, because lowest model will display highest recall, while maintaining acceptable rate of accuracy; therefore, most comprehensible.

2. Naïve Bayes

3. Logistic Regression

### Contact Information

Please direct any questions or comments to franco9505@gmail.com
