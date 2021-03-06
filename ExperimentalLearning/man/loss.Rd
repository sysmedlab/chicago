% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/loss.R
\name{loss}
\alias{loss}
\title{*Calculate specified regression, classification loss (or gain) given a vector of predictions and a vector of labels.}
\usage{
loss(prediction, outcome, weight = ExpLearning.Default$weight,
  task = ExpLearning.Default$task, losstype = ExpLearning.Default$losstype,
  class_cutoff = ExpLearning.Default$class_cutoff,
  round_digit = ExpLearning.Default$round_digit,
  loss_validity_check = ExpLearning.Default$loss_validity_check)
}
\arguments{
\item{prediction}{*Vector of predictions [numeric].}

\item{outcome}{*Vector of outcomes [integer or numeric].}

\item{weight}{*Vector of observation weights [integer or numeric].}

\item{task}{*The nature of the prediction task  [regression (regression), classification (classification)].}

\item{losstype}{*Loss function used to tune the individiual learners and the ensemble neg_mse_brier, loglik, auc, accuracy, balanced_accuracy, r2].}

\item{class_cutoff}{*Probability cutoff used to convert predicted probabilities into predicted classes in order to calcuate the accuracy of the predictions (if losstype==accuracy or balanced_accuracy) [numeric - 0 to 1].}

\item{round_digit}{*Number of digits to which results are rounded [integer].}
}
\value{
*Loss.
}
\description{
*.
}
\examples{
prediction <- test_df$prediction
outcome    <- test_df$treatment
weight     <- test_df$weight
loss(prediction, outcome, weight, task="classification", loss="neg_mse_brier")
loss(prediction, outcome, weight, task="classification", loss="loglik")
loss(prediction, outcome, weight, task="classification", loss="auc")
loss(prediction, outcome, weight, task="classification", loss="accuracy")
loss(prediction, outcome, weight, task="classification", loss="balanced_accuracy")
loss(prediction, outcome, weight, task="regression", loss="r2")
}

