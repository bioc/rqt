% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rqt-classes.R
\docType{class}
\name{rqt-class}
\alias{rqt-class}
\title{The rqt class}
\value{
None
}
\description{
This class stores parameters and results of the rtq algorithms
}
\section{Slots}{

   \describe{
   \item{\code{phenotype}:}{Phenotype (a vector of length 
       \code{N}, where \code{N} - number of individuals).}
     \item{\code{genotype}:}{Genotype - an object of class 
     \code{SummarizedExperiment}. Should contain one assay 
     (matrix, \code{N} 
     by \code{M} where \code{N} - number of individuals, \code{M}
      - number of genetic variants).}
     \item{\code{covariates}:}{data frame \code{N} 
     by \code{K} where \code{N} - number of individuals, \code{K}
      - number of covariates)}
     \item{\code{results}:}{A list of two: 
     test statistics (\code{Q1}, \code{Q2}, \code{Q3}), 
     p-values (\code{p1.Q1}, \code{p2.Q2}, \code{p3.Q3})}
}
}

