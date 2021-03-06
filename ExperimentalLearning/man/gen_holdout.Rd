% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gen_holdout.R
\name{gen_holdout}
\alias{gen_holdout}
\title{*Generate a cluster-level holdout set.}
\usage{
gen_holdout(df, cluster_var = ExpLearning.Default$cluster_var,
  holdout_prop = ExpLearning.Default$holdout_prop,
  weight_var = ExpLearning.Default$weight_var,
  fold_method = ExpLearning.Default$fold_method, stratify_var = NULL,
  stratify_cut = ExpLearning.Default$stratify_cut,
  holdout_var = ExpLearning.Default$holdout_var,
  return_index = ExpLearning.Default$return_index,
  quiet = ExpLearning.Default$quiet)
}
\arguments{
\item{df}{*Datatable containing the data [data.table].}

\item{cluster_var}{*Name of variable containing observation level cluster identifiers (integer) [character].}

\item{fold_method}{*Method used to generate CV folds (and the train-holdout split) [cluster_count (target cluster count), obs_count (target observation count), stratification (target stratification)].}

\item{stratify_var}{*Name of variable on which to stratify (when generating CV folds, test vs. holdout splits)  [character].}

\item{stratify_cut}{*Number of intervals into which the stratification variable is split (if fold_method==stratification) [integer] .}

\item{return_index}{*Whether to return a modified data.table with an appended holdout, fold column [FALSE] or a vector of holdout, fold ids [logical - TRUE, FALSE].}

\item{quiet}{*Verbosity settings [0 (verbose), 1 (print only key stats and progress updates), 2 (silent) - 0.5 (test and development mode)].}

\item{holdout}{*Whether or not to construct and use a holdout set [logical - TRUE, FALSE].}

\item{holdout}{*Whether or not to construct and use a holdout set [logical - TRUE, FALSE].}
}
\value{
*Modified data.table containing a holdout set identifier (TRUE, FALSE)  for each observation.
}
\description{
*Holdout set construction optionally targeting (i) the cluster count (ii) the sample size or (iii) stratification.
}
\examples{
gen_holdout(test_df, holdout_prop=0.2, cluster_var="cluster", fold_method="cluster_count", 
 stratify_var="treatment", stratify_cut=20) 
gen_holdout(test_df, holdout_prop=0.2, cluster_var="cluster", fold_method="obs_count", 
 stratify_var="treatment", stratify_cut=20) 
gen_holdout(test_df, holdout_prop=0.2, cluster_var="cluster", fold_method="stratification", 
 stratify_var="treatment", stratify_cut=20) 
}

