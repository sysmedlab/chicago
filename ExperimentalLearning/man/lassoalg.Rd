% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lassoalg.R
\name{lassoalg}
\alias{lassoalg}
\title{.}
\usage{
lassoalg(df, LHS, RHS, from, to, weight_var = ExpLearning.Default$weight_var,
  task = ExpLearning.Default$task,
  alg_param = ExpLearning.MLParameter[["lasso_param"]][[1]],
  quiet = ExpLearning.Default$quiet, ...)
}
\arguments{
\item{df}{*Datatable containing the data [data.table].}

\item{LHS}{*Name of the independent variable [character].}

\item{RHS}{*Names of all dependent variables (may incl. group_var, control_var and id_var) [character].}

\item{from}{*Observations on which to train an algorithm [integer].}

\item{to}{*Observations on which to predict [integer].}

\item{task}{*The nature of the prediction task  [regression (regression), classification (classification)].}

\item{alg_param}{*Tuning parameters [list - misc].}

\item{quiet}{*Verbosity settings [0 (verbose), 1 (print only key stats and progress updates), 2 (silent) - 0.5 (test and development mode)].}

\item{weight}{*Vector of observation weights [integer or numeric].}
}
\value{
*Vector of predictions (predicted value of Y OR predicted probability of Y==1) [pred pred_is] and the fitted learner [learner].
}
\description{
.
}

