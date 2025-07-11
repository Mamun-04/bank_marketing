Customer Subscription Prediction

This project predicts whether a customer will subscribe to a term deposit based on demographic and campaign-related features. 
It involves data preprocessing, feature engineering, model training using a Voting Classifier ensemble, SMOTE to handle class imbalance, and threshold optimization for evaluation.

It also uses SQL files to first clean the data in one file and then run some queries and select target variables
that allow us to examine the dataset (from bank_queries.sql). From the queries we found that:

Marital Status vs. Average Balance and Count:

Married clients tend to have the highest average balance (€1420) and make up the largest group.
Divorced clients have the lowest average balance (€1170) and are the smallest group. 
This might suggest that marital status correlates with financial stability, which could impact their likelihood of saying yes.

Job Title vs. Conversion Rate:

Students (28.7%) and retired people (22.8%) have the highest conversion rates, which may reflect more available time or different priorities.
Blue-collar and entrepreneur roles have the lowest conversion, which may be due to financial constraints or lower trust in bank services.

People who said yes had a much higher average account balance (€1804) than those who said no (€1303).
This strongly suggests that clients with more savings are more likely to accept the offer (e.g., invest in a term deposit).

Also, we saw that the dataset is imbalanced: 
only about 11.7% said yes, which reinforces the need for techniques like SMOTE or threshold tuning to improve model performance on the minority class.
This was carried out in the jupyter notebook.

The model made use of:
Preprocessing with Pipelines (scikit-learn), SMOTE Oversampling for class imbalance, 
VotingClassifier combining:. Logistic Regression, Random Forest, XGBoost, LightGBM
It also involved a threshold optimization using F1 Score and a AUC-PR Curve Evaluation
PostgreSQL integration was used  with credentials managed securely using a .env file

The model had a final f1-score of 0.62 which made it effective given how imbalanced the dataset was, the model may be improved by using hyperparameter tuning using 
GridSearchCV


