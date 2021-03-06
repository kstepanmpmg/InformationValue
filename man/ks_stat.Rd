% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Main.R
\name{ks_stat}
\alias{ks_stat}
\title{ks_stat}
\usage{
ks_stat(actuals, predictedScores, returnKSTable = FALSE)
}
\arguments{
\item{actuals}{The actual binary flags for the response variable. It can take a numeric vector containing values of either 1 or 0, where 1 represents the 'Good' or 'Events' while 0 represents 'Bad' or 'Non-Events'.}

\item{predictedScores}{The prediction probability scores for each observation. If your classification model gives the 1/0 predcitions, convert it to a numeric vector of 1's and 0's.}

\item{returnKSTable}{If set to TRUE, returns the KS table used to calculate the KS statistic instead. Defaults to FALSE.}
}
\value{
The KS statistic for a given actual values of a binary response variable and the respective prediction probability scores.
}
\description{
Compute the Kolmogorov-Smirnov statistic
}
\details{
Compute the KS statistic for a given actuals and predicted scores for a binary response variable. KS statistic is calculated as the maximum difference between the cumulative true positive and cumulative false positive rate. 
Set returnKSTable to TRUE to see the calculations from ks_table.
}
\examples{
data('ActualsAndScores')
ks_stat(actuals=ActualsAndScores$Actuals, predictedScores=ActualsAndScores$PredictedScores)
}
\author{
Selva Prabhakaran \email{selva86@gmail.com}
}

