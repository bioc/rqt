% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rqt-methods.R
\name{rqt}
\alias{rqt}
\title{The rqt class constructor}
\usage{
rqt(phenotype = NULL, genotype = NULL, covariates = NULL, results = NULL)
}
\arguments{
\item{phenotype}{Phenotype (a vector of length 
\code{N}, where \code{N} - number of individuals).}

\item{genotype}{Genotype - an object of class 
\code{SummarizedExperiment}. Should contain one assay 
(matrix, \code{N} 
by \code{M} where \code{N} - number of individuals, \code{M}
 - number of genetic variants).}

\item{covariates}{Covariates, a data frame \code{N} 
by \code{K} where \code{N} - number of individuals, \code{K}
 - number of covariates}

\item{results}{A list of two: test statistics: 
(\code{Q1}, \code{Q2}, \code{Q3}), 
p-values: (\code{p1.Q1}, \code{p2.Q2}, \code{p3.Q3})}
}
\value{
Object of class \code{rqt}
}
\description{
This function generates rqt class objects
}
\examples{
data <- data.matrix(read.table(system.file("extdata/test.bin1.dat",
package="rqt"), header=TRUE))
pheno <- data[,1]
geno <- data[, 2:dim(data)[2]]
colnames(geno) <- paste(seq(1, dim(geno)[2]))
geno.obj <- SummarizedExperiment(geno)
obj <- rqt(phenotype=pheno, genotype=geno.obj)
print(obj)
}
